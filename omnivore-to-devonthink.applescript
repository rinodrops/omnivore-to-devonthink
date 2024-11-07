use framework "Foundation"
use scripting additions

-- Helper function to read JSON file
on readJSON(filePath)
	set theFile to (current application's NSString's stringWithContentsOfFile:filePath encoding:(current application's NSUTF8StringEncoding) |error|:(missing value))
	if theFile is missing value then return missing value
	
	set jsonData to (theFile's dataUsingEncoding:(current application's NSUTF8StringEncoding))
	set {jsonObject, parseError} to (current application's NSJSONSerialization's JSONObjectWithData:jsonData options:0 |error|:(reference))
	
	if parseError is not missing value then return missing value
	return jsonObject
end readJSON

-- Helper function to safely get value from NSDictionary
on getValueFromDict(dict, key)
	try
		set val to dict's objectForKey:key
		if val is not missing value then
			return val as text
		end if
	end try
	return missing value
end getValueFromDict

-- Helper function to convert ISO 8601 date string to date object
on parseDate(dateStr)
	if dateStr is missing value then return missing value
	
	try
		-- Extract date components
		-- Format: 2024-10-03T07:00:00.000Z
		set yearStr to text 1 thru 4 of dateStr
		set monthStr to text 6 thru 7 of dateStr
		set dayStr to text 9 thru 10 of dateStr
		set hourStr to text 12 thru 13 of dateStr
		set minuteStr to text 15 thru 16 of dateStr
		set secondStr to text 18 thru 19 of dateStr
		
		-- Convert strings to numbers
		set yearNum to yearStr as number
		set monthNum to monthStr as number
		set dayNum to dayStr as number
		set hourNum to hourStr as number
		set minuteNum to minuteStr as number
		set secondNum to secondStr as number
		
		-- Create date object
		set dateObj to current date
		
		-- Set components
		set year of dateObj to yearNum
		set month of dateObj to monthNum
		set day of dateObj to dayNum
		set hours of dateObj to hourNum
		set minutes of dateObj to minuteNum
		set seconds of dateObj to secondNum
		
		-- Log for verification
		log "Creating date from components:"
		log "Year: " & yearNum
		log "Month: " & monthNum
		log "Day: " & dayNum
		log "Hour: " & hourNum
		log "Minute: " & minuteNum
		log "Second: " & secondNum
		log "Resulting date: " & dateObj
		
		return dateObj
	on error errMsg
		log "Date parsing error: " & errMsg
	end try
	return missing value
end parseDate

-- Helper function to get array values from NSDictionary
on getArrayFromDict(dict, key)
	try
		set arrayVal to dict's objectForKey:key
		if arrayVal is not missing value then
			set resultList to {}
			set arrayCount to arrayVal's |count|() as integer
			repeat with i from 0 to (arrayCount - 1)
				copy ((arrayVal's objectAtIndex:i) as text) to end of resultList
			end repeat
			return resultList
		end if
	end try
	return {}
end getArrayFromDict

-- Helper function to split string
on splitString(theString, theDelimiter)
	set oldDelimiters to AppleScript's text item delimiters
	set AppleScript's text item delimiters to theDelimiter
	set theArray to every text item of theString
	set AppleScript's text item delimiters to oldDelimiters
	return theArray
end splitString

-- Helper function to list metadata files from the root directory
on listMetadataFiles(rootFolder)
	set fileList to {}
	tell application "System Events"
		set allFiles to files of (rootFolder as alias) whose name extension is "json"
		repeat with aFile in allFiles
			if name of aFile starts with "metadata_" then
				set end of fileList to POSIX path of (aFile as alias)
			end if
		end repeat
	end tell
	return fileList
end listMetadataFiles

-- Helper function to read file content
on readFile(filePath)
	set theFile to (current application's NSString's stringWithContentsOfFile:filePath encoding:(current application's NSUTF8StringEncoding) |error|:(missing value))
	if theFile is missing value then return ""
	return theFile as text
end readFile

-- Helper function to combine labels with additional labels
on combineLabels(originalLabels, additionalLabels)
	if originalLabels is missing value then
		set originalLabels to {}
	end if
	
	-- Create a new list to avoid modifying the original
	set newLabels to {}
	repeat with label in originalLabels
		copy label to end of newLabels
	end repeat
	
	-- Add additional labels
	repeat with newLabel in additionalLabels
		copy newLabel to end of newLabels
	end repeat
	
	return newLabels
end combineLabels

-- Main script
on run
	-- Ask for the Omnivore export root folder
	set exportFolder to choose folder with prompt "Select the Omnivore export folder"
	set exportPath to POSIX path of exportFolder
	
	-- Define paths
	set htmlFolder to exportPath & "content/"
	set highlightsFolder to exportPath & "highlights/"
	
	-- Verify folders exist
	tell application "System Events"
		if not (exists folder htmlFolder) then
			display alert "Error" message "Could not find 'content' folder in the export directory."
			return
		end if
		if not (exists folder highlightsFolder) then
			display alert "Error" message "Could not find 'highlights' folder in the export directory."
			return
		end if
	end tell
	
	tell application "DEVONthink 3"
		try
			-- Use Inbox database
			set targetDatabase to get database "Inbox"
			
			-- Initialize counters
			set totalSuccessCount to 0
			set totalHighlightsCount to 0
			set totalErrorCount to 0
			set errorLog to {}
			
			-- Get all metadata files
			set metadataFiles to my listMetadataFiles(exportFolder)
			
			-- Show initial progress
			log "Found " & (length of metadataFiles) & " metadata files to process"
			
			-- Process each metadata file
			repeat with metadataPath in metadataFiles
				set metadataFileName to last item of (my splitString(metadataPath, "/"))
				log "Processing file: " & metadataFileName
				
				-- Read current metadata file
				set jsonData to my readJSON(metadataPath)
				set arrayLength to (jsonData's |count|()) as integer
				
				-- Process each metadata entry
				repeat with i from 0 to (arrayLength - 1)
					set currentMetadata to (jsonData's objectAtIndex:i)
					set currentSlug to my getValueFromDict(currentMetadata, "slug")
					
					try
						-- Process article
						set htmlPath to htmlFolder & currentSlug & ".html"
						set htmlFile to my readFile(htmlPath)
						
						if htmlFile is not "" then
							-- Get basic metadata
							set recordTitle to my getValueFromDict(currentMetadata, "title")
							if recordTitle is missing value then set recordTitle to "Untitled"
							
							log "Processing article: " & recordTitle
							
							-- Create HTML record first (temporary)
							set tempRecord to create record with {name:recordTitle, type:html, source:htmlFile} in targetDatabase
							
							-- Set URL before conversion to ensure proper resource loading
							tell tempRecord
								set urlValue to my getValueFromDict(currentMetadata, "url")
								if urlValue is not missing value then
									set URL to urlValue
								end if
							end tell
							
							-- Convert to web archive to capture all resources
							set webArchiveRecord to convert record tempRecord to webarchive
							
							-- Set metadata for the web archive
							tell webArchiveRecord
								-- Set name (in case it changed during conversion)
								set name to recordTitle
								
								-- Set URL again for the web archive
								if urlValue is not missing value then
									set URL to urlValue
								end if
								
								-- Set description as comment
								set descValue to my getValueFromDict(currentMetadata, "description")
								if descValue is not missing value then
									set comment to descValue
								end if
								
								-- Set author
								set authorValue to my getValueFromDict(currentMetadata, "author")
								if authorValue is not missing value then
									set creator to authorValue
								end if
								
								-- Set tags (including Omnivore)
								set tagList to my getArrayFromDict(currentMetadata, "labels")
								set tagList to my combineLabels(tagList, {"Omnivore"})
								if length of tagList > 0 then
									set tags to tagList
								end if
								
								-- Set creation date
								set pubDate to my getValueFromDict(currentMetadata, "publishedAt")
								if pubDate is not missing value then
									set dateObj to my parseDate(pubDate)
									if dateObj is not missing value then
										set creation date to dateObj
									end if
								end if
							end tell
							
							-- Delete the temporary HTML record
							delete record tempRecord
							
							set totalSuccessCount to totalSuccessCount + 1
							
							-- Process highlights if they exist
							set highlightsPath to highlightsFolder & currentSlug & ".md"
							try
								set highlightsFile to my readFile(highlightsPath)
								if highlightsFile is not "" then
									-- Create record for highlights
									set highlightTitle to "Highlights of " & recordTitle
									set highlightRecord to create record with {name:highlightTitle, type:markdown, source:highlightsFile} in targetDatabase
									
									-- Set properties for highlight record
									tell highlightRecord
										-- Set URL (same as article)
										if urlValue is not missing value then
											set URL to urlValue
										end if
										
										-- Set specific tags for highlights
										set tags to {"Omnivore", "Highlight"}
										
										-- Set same creation date as article
										if dateObj is not missing value then
											set creation date to dateObj
										end if
									end tell
									
									set totalHighlightsCount to totalHighlightsCount + 1
								end if
							on error errMsg
								log "No highlights found for: " & recordTitle
							end try
						end if
						
					on error errMsg
						set totalErrorCount to totalErrorCount + 1
						set end of errorLog to recordTitle & ": " & errMsg
						log "Error processing " & recordTitle & ": " & errMsg
					end try
				end repeat
				
				-- Show progress after each metadata file
				log "Completed processing " & metadataFileName
				log "Current total: " & totalSuccessCount & " articles, " & totalHighlightsCount & " highlights"
			end repeat
			
			-- Prepare result message
			set resultText to "Import complete!" & return & return & Â
				"Articles imported as Web Archives: " & totalSuccessCount & return & Â
				"Highlights imported: " & totalHighlightsCount & return & Â
				"Failed: " & totalErrorCount
			
			-- Add error details if any
			if totalErrorCount > 0 then
				set resultText to resultText & return & return & "Errors:" & return
				repeat with errorMsg in errorLog
					set resultText to resultText & "- " & errorMsg & return
				end repeat
			end if
			
			-- Show results
			display dialog resultText buttons {"OK"} default button "OK"
			
		on error errMsg
			display alert "Error" message errMsg
		end try
	end tell
end run