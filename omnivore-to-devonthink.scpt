FasdUAS 1.101.10   ��   ��    k             x     �� ����    4    �� 
�� 
frmk  m     	 	 � 
 
  F o u n d a t i o n��        x    �� ����    2   ��
�� 
osax��        l     ��������  ��  ��        l     ��  ��    ( " Helper function to read JSON file     �   D   H e l p e r   f u n c t i o n   t o   r e a d   J S O N   f i l e      i        I      �� ���� 0 readjson readJSON   ��  o      ���� 0 filepath filePath��  ��    k     P       r         l      ����   n     ! " ! I    �� #���� T0 (stringwithcontentsoffile_encoding_error_ (stringWithContentsOfFile_encoding_error_ #  $ % $ o    ���� 0 filepath filePath %  & ' & l    (���� ( n    ) * ) o    ���� ,0 nsutf8stringencoding NSUTF8StringEncoding * m    ��
�� misccura��  ��   '  +�� + l    ,���� , m    ��
�� 
msng��  ��  ��  ��   " n     - . - o    ���� 0 nsstring NSString . m     ��
�� misccura��  ��    o      ���� 0 thefile theFile   / 0 / Z    1 2���� 1 =    3 4 3 o    ���� 0 thefile theFile 4 m    ��
�� 
msng 2 L     5 5 m    ��
�� 
msng��  ��   0  6 7 6 l   ��������  ��  ��   7  8 9 8 r    & : ; : l   $ <���� < n   $ = > = I    $�� ?���� (0 datausingencoding_ dataUsingEncoding_ ?  @�� @ l     A���� A n     B C B o     ���� ,0 nsutf8stringencoding NSUTF8StringEncoding C m    ��
�� misccura��  ��  ��  ��   > o    ���� 0 thefile theFile��  ��   ; o      ���� 0 jsondata jsonData 9  D E D r   ' @ F G F l  ' 1 H���� H n  ' 1 I J I I   * 1�� K���� F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_ K  L M L o   * +���� 0 jsondata jsonData M  N O N m   + ,����   O  P�� P l  , - Q���� Q m   , -��
�� 
obj ��  ��  ��  ��   J n  ' * R S R o   ( *���� *0 nsjsonserialization NSJSONSerialization S m   ' (��
�� misccura��  ��   G J       T T  U V U o      ���� 0 
jsonobject 
jsonObject V  W�� W o      ���� 0 
parseerror 
parseError��   E  X Y X l  A A��������  ��  ��   Y  Z [ Z Z  A M \ ]���� \ >  A D ^ _ ^ o   A B���� 0 
parseerror 
parseError _ m   B C��
�� 
msng ] L   G I ` ` m   G H��
�� 
msng��  ��   [  a�� a L   N P b b o   N O���� 0 
jsonobject 
jsonObject��     c d c l     ��������  ��  ��   d  e f e l     �� g h��   g < 6 Helper function to safely get value from NSDictionary    h � i i l   H e l p e r   f u n c t i o n   t o   s a f e l y   g e t   v a l u e   f r o m   N S D i c t i o n a r y f  j k j i     l m l I      �� n���� $0 getvaluefromdict getValueFromDict n  o p o o      ���� 0 dict   p  q�� q 1      ��
�� 
kMsg��  ��   m k     & r r  s t s Q     # u v�� u k     w w  x y x r     z { z n   	 | } | I    	�� ~���� 0 objectforkey_ objectForKey_ ~  ��  1    ��
�� 
kMsg��  ��   } o    ���� 0 dict   { o      ���� 0 val   y  ��� � Z     � ����� � >    � � � o    ���� 0 val   � m    ��
�� 
msng � L     � � c     � � � o    ���� 0 val   � m    ��
�� 
ctxt��  ��  ��   v R      ������
�� .ascrerr ****      � ****��  ��  ��   t  ��� � L   $ & � � m   $ %��
�� 
msng��   k  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � E ? Helper function to convert ISO 8601 date string to date object    � � � � ~   H e l p e r   f u n c t i o n   t o   c o n v e r t   I S O   8 6 0 1   d a t e   s t r i n g   t o   d a t e   o b j e c t �  � � � i    " � � � I      �� ����� 0 	parsedate 	parseDate �  ��� � o      ���� 0 datestr dateStr��  ��   � k    " � �  � � � Z     � ����� � =     � � � o     ���� 0 datestr dateStr � m    ��
�� 
msng � L     � � m    ��
�� 
msng��  ��   �  � � � l   ��������  ��  ��   �  � � � Q    � � � � k    � �  � � � l   �� � ���   �   Extract date components    � � � � 0   E x t r a c t   d a t e   c o m p o n e n t s �  � � � l   �� � ���   � ' ! Format: 2024-10-03T07:00:00.000Z    � � � � B   F o r m a t :   2 0 2 4 - 1 0 - 0 3 T 0 7 : 0 0 : 0 0 . 0 0 0 Z �  � � � r     � � � n     � � � 7   �� � �
�� 
ctxt � m    ����  � m    ����  � o    ���� 0 datestr dateStr � o      ���� 0 yearstr yearStr �  � � � r    + � � � n    ) � � � 7   )�� � �
�� 
ctxt � m   # %����  � m   & (��  � o    �~�~ 0 datestr dateStr � o      �}�} 0 monthstr monthStr �  � � � r   , 9 � � � n   , 7 � � � 7  - 7�| � �
�| 
ctxt � m   1 3�{�{ 	 � m   4 6�z�z 
 � o   , -�y�y 0 datestr dateStr � o      �x�x 0 daystr dayStr �  � � � r   : G � � � n   : E � � � 7  ; E�w � �
�w 
ctxt � m   ? A�v�v  � m   B D�u�u  � o   : ;�t�t 0 datestr dateStr � o      �s�s 0 hourstr hourStr �  � � � r   H U � � � n   H S � � � 7  I S�r � �
�r 
ctxt � m   M O�q�q  � m   P R�p�p  � o   H I�o�o 0 datestr dateStr � o      �n�n 0 	minutestr 	minuteStr �  � � � r   V c � � � n   V a � � � 7  W a�m � �
�m 
ctxt � m   [ ]�l�l  � m   ^ `�k�k  � o   V W�j�j 0 datestr dateStr � o      �i�i 0 	secondstr 	secondStr �  � � � l  d d�h�g�f�h  �g  �f   �  � � � l  d d�e � ��e   � !  Convert strings to numbers    � � � � 6   C o n v e r t   s t r i n g s   t o   n u m b e r s �  � � � r   d i � � � c   d g � � � o   d e�d�d 0 yearstr yearStr � m   e f�c
�c 
nmbr � o      �b�b 0 yearnum yearNum �  � � � r   j o � � � c   j m � � � o   j k�a�a 0 monthstr monthStr � m   k l�`
�` 
nmbr � o      �_�_ 0 monthnum monthNum �  � � � r   p u � � � c   p s � � � o   p q�^�^ 0 daystr dayStr � m   q r�]
�] 
nmbr � o      �\�\ 0 daynum dayNum �  � � � r   v { � � � c   v y � � � o   v w�[�[ 0 hourstr hourStr � m   w x�Z
�Z 
nmbr � o      �Y�Y 0 hournum hourNum �    r   | � c   |  o   | }�X�X 0 	minutestr 	minuteStr m   } ~�W
�W 
nmbr o      �V�V 0 	minutenum 	minuteNum  r   � �	 c   � �

 o   � ��U�U 0 	secondstr 	secondStr m   � ��T
�T 
nmbr	 o      �S�S 0 	secondnum 	secondNum  l  � ��R�Q�P�R  �Q  �P    l  � ��O�O     Create date object    � &   C r e a t e   d a t e   o b j e c t  r   � � I  � ��N�M�L
�N .misccurdldt    ��� null�M  �L   o      �K�K 0 dateobj dateObj  l  � ��J�I�H�J  �I  �H    l  � ��G�G     Set components    �    S e t   c o m p o n e n t s  r   � � !  o   � ��F�F 0 yearnum yearNum! n      "#" 1   � ��E
�E 
year# o   � ��D�D 0 dateobj dateObj $%$ r   � �&'& o   � ��C�C 0 monthnum monthNum' n      ()( m   � ��B
�B 
mnth) o   � ��A�A 0 dateobj dateObj% *+* r   � �,-, o   � ��@�@ 0 daynum dayNum- n      ./. 1   � ��?
�? 
day / o   � ��>�> 0 dateobj dateObj+ 010 r   � �232 o   � ��=�= 0 hournum hourNum3 n      454 1   � ��<
�< 
hour5 o   � ��;�; 0 dateobj dateObj1 676 r   � �898 o   � ��:�: 0 	minutenum 	minuteNum9 n      :;: 1   � ��9
�9 
min ; o   � ��8�8 0 dateobj dateObj7 <=< r   � �>?> o   � ��7�7 0 	secondnum 	secondNum? n      @A@ m   � ��6
�6 
scndA o   � ��5�5 0 dateobj dateObj= BCB l  � ��4�3�2�4  �3  �2  C DED l  � ��1FG�1  F   Log for verification   G �HH *   L o g   f o r   v e r i f i c a t i o nE IJI I  � ��0K�/
�0 .ascrcmnt****      � ****K m   � �LL �MM < C r e a t i n g   d a t e   f r o m   c o m p o n e n t s :�/  J NON I  � ��.P�-
�. .ascrcmnt****      � ****P b   � �QRQ m   � �SS �TT  Y e a r :  R o   � ��,�, 0 yearnum yearNum�-  O UVU I  � ��+W�*
�+ .ascrcmnt****      � ****W b   � �XYX m   � �ZZ �[[  M o n t h :  Y o   � ��)�) 0 monthnum monthNum�*  V \]\ I  � ��(^�'
�( .ascrcmnt****      � ****^ b   � �_`_ m   � �aa �bb 
 D a y :  ` o   � ��&�& 0 daynum dayNum�'  ] cdc I  � ��%e�$
�% .ascrcmnt****      � ****e b   � �fgf m   � �hh �ii  H o u r :  g o   � ��#�# 0 hournum hourNum�$  d jkj I  � ��"l�!
�" .ascrcmnt****      � ****l b   � �mnm m   � �oo �pp  M i n u t e :  n o   � �� �  0 	minutenum 	minuteNum�!  k qrq I  ��s�
� .ascrcmnt****      � ****s b   � �tut m   � �vv �ww  S e c o n d :  u o   � ��� 0 	secondnum 	secondNum�  r xyx I �z�
� .ascrcmnt****      � ****z b  {|{ m  }} �~~   R e s u l t i n g   d a t e :  | o  �� 0 dateobj dateObj�  y � l ����  �  �  � ��� L  �� o  �� 0 dateobj dateObj�   � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg�   � I ���
� .ascrcmnt****      � ****� b  ��� m  �� ��� ( D a t e   p a r s i n g   e r r o r :  � o  �� 0 errmsg errMsg�   � ��� L   "�� m   !�
� 
msng�   � ��� l     ���
�  �  �
  � ��� l     �	���	  � < 6 Helper function to get array values from NSDictionary   � ��� l   H e l p e r   f u n c t i o n   t o   g e t   a r r a y   v a l u e s   f r o m   N S D i c t i o n a r y� ��� i   # &��� I      ���� $0 getarrayfromdict getArrayFromDict� ��� o      �� 0 dict  � ��� 1      �
� 
kMsg�  �  � k     Q�� ��� Q     M���� k    D�� ��� r    ��� n   	��� I    	���� 0 objectforkey_ objectForKey_� �� � 1    ��
�� 
kMsg�   �  � o    ���� 0 dict  � o      ���� 0 arrayval arrayVal� ���� Z    D������� >   ��� o    ���� 0 arrayval arrayVal� m    ��
�� 
msng� k    @�� ��� r    ��� J    ����  � o      ���� 0 
resultlist 
resultList� ��� r     ��� c    ��� n   ��� I    �������� 	0 count  ��  ��  � o    ���� 0 arrayval arrayVal� m    ��
�� 
long� o      ���� 0 
arraycount 
arrayCount� ��� Y   ! =�������� s   - 8��� l  - 5������ c   - 5��� l  - 3������ n  - 3��� I   . 3�������  0 objectatindex_ objectAtIndex_� ���� o   . /���� 0 i  ��  ��  � o   - .���� 0 arrayval arrayVal��  ��  � m   3 4��
�� 
ctxt��  ��  � n      ���  ;   6 7� o   5 6���� 0 
resultlist 
resultList�� 0 i  � m   $ %����  � l  % (������ \   % (��� o   % &���� 0 
arraycount 
arrayCount� m   & '���� ��  ��  ��  � ���� L   > @�� o   > ?���� 0 
resultlist 
resultList��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ���� L   N Q�� J   N P����  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � &   Helper function to split string   � ��� @   H e l p e r   f u n c t i o n   t o   s p l i t   s t r i n g� ��� i   ' *��� I      ������� 0 splitstring splitString� ��� o      ���� 0 	thestring 	theString� ���� o      ���� 0 thedelimiter theDelimiter��  ��  � k     �� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� ��� r    ��� o    ���� 0 thedelimiter theDelimiter� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 2    ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ���� 0 thearray theArray� ��� r    ��� o    ���� 0 olddelimiters oldDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 thearray theArray��  � ��� l     ��������  ��  ��  � ��� l     �� ��    E ? Helper function to list metadata files from the root directory    � ~   H e l p e r   f u n c t i o n   t o   l i s t   m e t a d a t a   f i l e s   f r o m   t h e   r o o t   d i r e c t o r y�  i   + . I      ������ &0 listmetadatafiles listMetadataFiles �� o      ���� 0 
rootfolder 
rootFolder��  ��   k     G		 

 r      J     ����   o      ���� 0 filelist fileList  O    D k   	 C  r   	  6  	  n   	  2   ��
�� 
file l  	 ���� c   	  o   	 
���� 0 
rootfolder 
rootFolder m   
 ��
�� 
alis��  ��   =    1    ��
�� 
extn m       �!!  j s o n o      ���� 0 allfiles allFiles "��" X    C#��$# Z   * >%&����% C   * /'(' n   * -)*) 1   + -��
�� 
pnam* o   * +���� 0 afile aFile( m   - .++ �,,  m e t a d a t a _& r   2 :-.- n   2 7/0/ 1   5 7��
�� 
posx0 l  2 51����1 c   2 5232 o   2 3���� 0 afile aFile3 m   3 4��
�� 
alis��  ��  . n      454  ;   8 95 o   7 8���� 0 filelist fileList��  ��  �� 0 afile aFile$ o    ���� 0 allfiles allFiles��   m    66�                                                                                  sevs  alis    \  Macintosh HD               �J��BD ����System Events.app                                              �����J��        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   7��7 L   E G88 o   E F���� 0 filelist fileList��   9:9 l     ��������  ��  ��  : ;<; l     ��=>��  = + % Helper function to read file content   > �?? J   H e l p e r   f u n c t i o n   t o   r e a d   f i l e   c o n t e n t< @A@ i   / 2BCB I      ��D���� 0 readfile readFileD E��E o      ���� 0 filepath filePath��  ��  C k      FF GHG r     IJI l    K����K n    LML I    ��N���� T0 (stringwithcontentsoffile_encoding_error_ (stringWithContentsOfFile_encoding_error_N OPO o    ���� 0 filepath filePathP QRQ l   S����S n   TUT o    ���� ,0 nsutf8stringencoding NSUTF8StringEncodingU m    ��
�� misccura��  ��  R V��V l   W����W m    ��
�� 
msng��  ��  ��  ��  M n    XYX o    ���� 0 nsstring NSStringY m     ��
�� misccura��  ��  J o      ���� 0 thefile theFileH Z[Z Z   \]����\ =   ^_^ o    ���� 0 thefile theFile_ m    ��
�� 
msng] L    `` m    aa �bb  ��  ��  [ c��c L     dd c    efe o    ���� 0 thefile theFilef m    ��
�� 
ctxt��  A ghg l     ����~��  �  �~  h iji l     �}kl�}  k ? 9 Helper function to combine labels with additional labels   l �mm r   H e l p e r   f u n c t i o n   t o   c o m b i n e   l a b e l s   w i t h   a d d i t i o n a l   l a b e l sj non i   3 6pqp I      �|r�{�| 0 combinelabels combineLabelsr sts o      �z�z  0 originallabels originalLabelst u�yu o      �x�x $0 additionallabels additionalLabels�y  �{  q k     Jvv wxw Z     yz�w�vy =    {|{ o     �u�u  0 originallabels originalLabels| m    �t
�t 
msngz r    
}~} J    �s�s  ~ o      �r�r  0 originallabels originalLabels�w  �v  x � l   �q�p�o�q  �p  �o  � ��� l   �n���n  � 8 2 Create a new list to avoid modifying the original   � ��� d   C r e a t e   a   n e w   l i s t   t o   a v o i d   m o d i f y i n g   t h e   o r i g i n a l� ��� r    ��� J    �m�m  � o      �l�l 0 	newlabels 	newLabels� ��� X    -��k�� s   $ (��� o   $ %�j�j 	0 label  � n      ���  ;   & '� o   % &�i�i 0 	newlabels 	newLabels�k 	0 label  � o    �h�h  0 originallabels originalLabels� ��� l  . .�g�f�e�g  �f  �e  � ��� l  . .�d���d  �   Add additional labels   � ��� ,   A d d   a d d i t i o n a l   l a b e l s� ��� X   . G��c�� s   > B��� o   > ?�b�b 0 newlabel newLabel� n      ���  ;   @ A� o   ? @�a�a 0 	newlabels 	newLabels�c 0 newlabel newLabel� o   1 2�`�` $0 additionallabels additionalLabels� ��� l  H H�_�^�]�_  �^  �]  � ��\� L   H J�� o   H I�[�[ 0 	newlabels 	newLabels�\  o ��� l     �Z�Y�X�Z  �Y  �X  � ��� l     �W���W  �   Main script   � ���    M a i n   s c r i p t� ��V� i   7 :��� I     �U�T�S
�U .aevtoappnull  �   � ****�T  �S  � k    ��� ��� l     �R���R  � . ( Ask for the Omnivore export root folder   � ��� P   A s k   f o r   t h e   O m n i v o r e   e x p o r t   r o o t   f o l d e r� ��� r     	��� I    �Q�P�
�Q .sysostflalis    ��� null�P  � �O��N
�O 
prmp� m    �� ��� B S e l e c t   t h e   O m n i v o r e   e x p o r t   f o l d e r�N  � o      �M�M 0 exportfolder exportFolder� ��� r   
 ��� n   
 ��� 1    �L
�L 
psxp� o   
 �K�K 0 exportfolder exportFolder� o      �J�J 0 
exportpath 
exportPath� ��� l   �I�H�G�I  �H  �G  � ��� l   �F���F  �   Define paths   � ���    D e f i n e   p a t h s� ��� r    ��� b    ��� o    �E�E 0 
exportpath 
exportPath� m    �� ���  c o n t e n t /� o      �D�D 0 
htmlfolder 
htmlFolder� ��� r    ��� b    ��� o    �C�C 0 
exportpath 
exportPath� m    �� ���  h i g h l i g h t s /� o      �B�B $0 highlightsfolder highlightsFolder� ��� l   �A�@�?�A  �@  �?  � ��� l   �>���>  �   Verify folders exist   � ��� *   V e r i f y   f o l d e r s   e x i s t� ��� O    Z��� k     Y�� ��� Z     :���=�<� H     )�� l    (��;�:� I    (�9��8
�9 .coredoexnull���     ****� 4     $�7�
�7 
cfol� o   " #�6�6 0 
htmlfolder 
htmlFolder�8  �;  �:  � k   , 6�� ��� I  , 3�5��
�5 .sysodisAaleR        TEXT� m   , -�� ��� 
 E r r o r� �4��3
�4 
mesS� m   . /�� ��� p C o u l d   n o t   f i n d   ' c o n t e n t '   f o l d e r   i n   t h e   e x p o r t   d i r e c t o r y .�3  � ��2� L   4 6�1�1  �2  �=  �<  � ��0� Z   ; Y���/�.� H   ; D�� l  ; C��-�,� I  ; C�+��*
�+ .coredoexnull���     ****� 4   ; ?�)�
�) 
cfol� o   = >�(�( $0 highlightsfolder highlightsFolder�*  �-  �,  � k   G U    I  G R�'
�' .sysodisAaleR        TEXT m   G J � 
 E r r o r �&�%
�& 
mesS m   K N �		 v C o u l d   n o t   f i n d   ' h i g h l i g h t s '   f o l d e r   i n   t h e   e x p o r t   d i r e c t o r y .�%   
�$
 L   S U�#�#  �$  �/  �.  �0  � m    �                                                                                  sevs  alis    \  Macintosh HD               �J��BD ����System Events.app                                              �����J��        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l  [ [�"�!� �"  �!  �    � O   [� Q   a� k   d�  l  d d��     Use Inbox database    � &   U s e   I n b o x   d a t a b a s e  r   d q e   d m 4   d m�
� 
DTkb m   h k   �!! 
 I n b o x o      ��  0 targetdatabase targetDatabase "#" l  r r����  �  �  # $%$ l  r r�&'�  &   Initialize counters   ' �(( (   I n i t i a l i z e   c o u n t e r s% )*) r   r w+,+ m   r s��  , o      �� &0 totalsuccesscount totalSuccessCount* -.- r   x }/0/ m   x y��  0 o      �� ,0 totalhighlightscount totalHighlightsCount. 121 r   ~ �343 m   ~ ��  4 o      �� "0 totalerrorcount totalErrorCount2 565 r   � �787 J   � ���  8 o      �� 0 errorlog errorLog6 9:9 l  � �����  �  �  : ;<; l  � ��=>�  =   Get all metadata files   > �?? .   G e t   a l l   m e t a d a t a   f i l e s< @A@ r   � �BCB n  � �DED I   � ��F�
� &0 listmetadatafiles listMetadataFilesF G�	G o   � ��� 0 exportfolder exportFolder�	  �
  E  f   � �C o      �� 0 metadatafiles metadataFilesA HIH l  � �����  �  �  I JKJ l  � ��LM�  L   Show initial progress   M �NN ,   S h o w   i n i t i a l   p r o g r e s sK OPO I  � ��Q�
� .ascrcmnt****      � ****Q b   � �RSR b   � �TUT m   � �VV �WW  F o u n d  U l  � �X� ��X n   � �YZY 1   � ���
�� 
lengZ o   � ����� 0 metadatafiles metadataFiles�   ��  S m   � �[[ �\\ 4   m e t a d a t a   f i l e s   t o   p r o c e s s�  P ]^] l  � ���������  ��  ��  ^ _`_ l  � ���ab��  a !  Process each metadata file   b �cc 6   P r o c e s s   e a c h   m e t a d a t a   f i l e` ded X   �f��gf k   �hh iji r   � �klk n   � �mnm 4  � ���o
�� 
cobjo m   � �������n l  � �p����p n  � �qrq I   � ���s���� 0 splitstring splitStrings tut o   � ����� 0 metadatapath metadataPathu v��v m   � �ww �xx  /��  ��  r  f   � ���  ��  l o      ���� $0 metadatafilename metadataFileNamej yzy I  � ���{��
�� .ascrcmnt****      � ****{ b   � �|}| m   � �~~ � " P r o c e s s i n g   f i l e :  } o   � ����� $0 metadatafilename metadataFileName��  z ��� l  � ���������  ��  ��  � ��� l  � �������  � !  Read current metadata file   � ��� 6   R e a d   c u r r e n t   m e t a d a t a   f i l e� ��� r   � ���� n  � ���� I   � �������� 0 readjson readJSON� ���� o   � ����� 0 metadatapath metadataPath��  ��  �  f   � �� o      ���� 0 jsondata jsonData� ��� r   � ���� c   � ���� l  � ������� n  � ���� I   � ��������� 	0 count  ��  ��  � o   � ����� 0 jsondata jsonData��  ��  � m   � ���
�� 
long� o      ���� 0 arraylength arrayLength� ��� l  � ���������  ��  ��  � ��� l  � �������  � "  Process each metadata entry   � ��� 8   P r o c e s s   e a c h   m e t a d a t a   e n t r y� ��� Y   ���������� k  ��� ��� r  ��� l ������ n ��� I  �������  0 objectatindex_ objectAtIndex_� ���� o  ���� 0 i  ��  ��  � o  ���� 0 jsondata jsonData��  ��  � o      ���� "0 currentmetadata currentMetadata� ��� r  $��� n  ��� I   ������� $0 getvaluefromdict getValueFromDict� ��� o  ���� "0 currentmetadata currentMetadata� ���� m  �� ���  s l u g��  ��  �  f  � o      ���� 0 currentslug currentSlug� ��� l %%��������  ��  ��  � ���� Q  %����� k  (��� ��� l ((������  �   Process article   � ���     P r o c e s s   a r t i c l e� ��� r  (5��� b  (1��� b  (-��� o  ()���� 0 
htmlfolder 
htmlFolder� o  ),���� 0 currentslug currentSlug� m  -0�� ��� 
 . h t m l� o      ���� 0 htmlpath htmlPath� ��� r  6B��� n 6>��� I  7>������� 0 readfile readFile� ���� o  7:���� 0 htmlpath htmlPath��  ��  �  f  67� o      ���� 0 htmlfile htmlFile� ��� l CC��������  ��  ��  � ��� Z  C�������� > CJ��� o  CF���� 0 htmlfile htmlFile� m  FI�� ���  � k  M��� ��� l MM������  �   Get basic metadata   � ��� &   G e t   b a s i c   m e t a d a t a� ��� r  M\��� n MX��� I  NX������� $0 getvaluefromdict getValueFromDict� ��� o  NQ���� "0 currentmetadata currentMetadata� ���� m  QT�� ��� 
 t i t l e��  ��  �  f  MN� o      ���� 0 recordtitle recordTitle� ��� Z ]r������� = ]d��� o  ]`���� 0 recordtitle recordTitle� m  `c��
�� 
msng� r  gn��� m  gj�� ���  U n t i t l e d� o      ���� 0 recordtitle recordTitle��  ��  � ��� l ss��������  ��  ��  �    I s~����
�� .ascrcmnt****      � **** b  sz m  sv � ( P r o c e s s i n g   a r t i c l e :   o  vy���� 0 recordtitle recordTitle��    l ��������  ��  ��   	
	 l ����   + % Create HTML record first (temporary)    � J   C r e a t e   H T M L   r e c o r d   f i r s t   ( t e m p o r a r y )
  r  � I ���
�� .DTpacd08DTrc       reco K  � ��
�� 
pnam o  ������ 0 recordtitle recordTitle ��
�� 
DTty m  ����
�� Ctyphtml ����
�� 
conT o  ������ 0 htmlfile htmlFile��   ����
�� 
DTin o  ������  0 targetdatabase targetDatabase��   o      ���� 0 
temprecord 
tempRecord  l ����������  ��  ��    l ���� ��   B < Set URL before conversion to ensure proper resource loading     �!! x   S e t   U R L   b e f o r e   c o n v e r s i o n   t o   e n s u r e   p r o p e r   r e s o u r c e   l o a d i n g "#" O  ��$%$ k  ��&& '(' r  ��)*) n ��+,+ I  ����-���� $0 getvaluefromdict getValueFromDict- ./. o  ������ "0 currentmetadata currentMetadata/ 0��0 m  ��11 �22  u r l��  ��  ,  f  ��* o      ���� 0 urlvalue urlValue( 3��3 Z  ��45����4 > ��676 o  ������ 0 urlvalue urlValue7 m  ����
�� 
msng5 r  ��898 o  ������ 0 urlvalue urlValue9 1  ����
�� 
pURL��  ��  ��  % o  ������ 0 
temprecord 
tempRecord# :;: l ����������  ��  ��  ; <=< l ���>?�  > 6 0 Convert to web archive to capture all resources   ? �@@ `   C o n v e r t   t o   w e b   a r c h i v e   t o   c a p t u r e   a l l   r e s o u r c e s= ABA r  ��CDC I ���~�}E
�~ .DTpacd16DTrc    ��� null�}  E �|FG
�| 
DTrcF o  ���{�{ 0 
temprecord 
tempRecordG �zH�y
�z 
DTtoH m  ���x
�x Ctypwbar�y  D o      �w�w $0 webarchiverecord webArchiveRecordB IJI l ���v�u�t�v  �u  �t  J KLK l ���sMN�s  M ' ! Set metadata for the web archive   N �OO B   S e t   m e t a d a t a   f o r   t h e   w e b   a r c h i v eL PQP O  ��RSR k  ��TT UVU l ���rWX�r  W 6 0 Set name (in case it changed during conversion)   X �YY `   S e t   n a m e   ( i n   c a s e   i t   c h a n g e d   d u r i n g   c o n v e r s i o n )V Z[Z r  ��\]\ o  ���q�q 0 recordtitle recordTitle] 1  ���p
�p 
pnam[ ^_^ l ���o�n�m�o  �n  �m  _ `a` l ���lbc�l  b ( " Set URL again for the web archive   c �dd D   S e t   U R L   a g a i n   f o r   t h e   w e b   a r c h i v ea efe Z  �gh�k�jg > �iji o  ���i�i 0 urlvalue urlValuej m  ��h
�h 
msngh r  klk o  �g�g 0 urlvalue urlValuel 1  �f
�f 
pURL�k  �j  f mnm l �e�d�c�e  �d  �c  n opo l �bqr�b  q !  Set description as comment   r �ss 6   S e t   d e s c r i p t i o n   a s   c o m m e n tp tut r  "vwv n xyx I  �az�`�a $0 getvaluefromdict getValueFromDictz {|{ o  �_�_ "0 currentmetadata currentMetadata| }�^} m  ~~ �  d e s c r i p t i o n�^  �`  y  f  w o      �]�] 0 	descvalue 	descValueu ��� Z  #:���\�[� > #*��� o  #&�Z�Z 0 	descvalue 	descValue� m  &)�Y
�Y 
msng� r  -6��� o  -0�X�X 0 	descvalue 	descValue� 1  05�W
�W 
DTco�\  �[  � ��� l ;;�V�U�T�V  �U  �T  � ��� l ;;�S���S  �   Set author   � ���    S e t   a u t h o r� ��� r  ;J��� n ;F��� I  <F�R��Q�R $0 getvaluefromdict getValueFromDict� ��� o  <?�P�P "0 currentmetadata currentMetadata� ��O� m  ?B�� ���  a u t h o r�O  �Q  �  f  ;<� o      �N�N 0 authorvalue authorValue� ��� Z  K`���M�L� > KR��� o  KN�K�K 0 authorvalue authorValue� m  NQ�J
�J 
msng� r  U\��� o  UX�I�I 0 authorvalue authorValue� o      �H�H 0 creator  �M  �L  � ��� l aa�G�F�E�G  �F  �E  � ��� l aa�D���D  � $  Set tags (including Omnivore)   � ��� <   S e t   t a g s   ( i n c l u d i n g   O m n i v o r e )� ��� r  ap��� n al��� I  bl�C��B�C $0 getarrayfromdict getArrayFromDict� ��� o  be�A�A "0 currentmetadata currentMetadata� ��@� m  eh�� ���  l a b e l s�@  �B  �  f  ab� o      �?�? 0 taglist tagList� ��� r  q���� n q~��� I  r~�>��=�> 0 combinelabels combineLabels� ��� o  ru�<�< 0 taglist tagList� ��;� J  uz�� ��:� m  ux�� ���  O m n i v o r e�:  �;  �=  �  f  qr� o      �9�9 0 taglist tagList� ��� Z  �����8�7� ?  ����� n  ����� 1  ���6
�6 
leng� o  ���5�5 0 taglist tagList� m  ���4�4  � r  ����� o  ���3�3 0 taglist tagList� 1  ���2
�2 
tags�8  �7  � ��� l ���1�0�/�1  �0  �/  � ��� l ���.���.  �   Set creation date   � ��� $   S e t   c r e a t i o n   d a t e� ��� r  ����� n ����� I  ���-��,�- $0 getvaluefromdict getValueFromDict� ��� o  ���+�+ "0 currentmetadata currentMetadata� ��*� m  ���� ���  p u b l i s h e d A t�*  �,  �  f  ��� o      �)�) 0 pubdate pubDate� ��(� Z  �����'�&� > ����� o  ���%�% 0 pubdate pubDate� m  ���$
�$ 
msng� k  ���� ��� r  ����� n ����� I  ���#��"�# 0 	parsedate 	parseDate� ��!� o  ��� �  0 pubdate pubDate�!  �"  �  f  ��� o      �� 0 dateobj dateObj� ��� Z  ������� > ����� o  ���� 0 dateobj dateObj� m  ���
� 
msng� r  ����� o  ���� 0 dateobj dateObj� 1  ���
� 
DTcr�  �  �  �'  �&  �(  S o  ���� $0 webarchiverecord webArchiveRecordQ ��� l ������  �  �  � ��� l ������  � ' ! Delete the temporary HTML record   � ��� B   D e l e t e   t h e   t e m p o r a r y   H T M L   r e c o r d� ��� I �����
� .coredelobool       null�  � � �
� 
DTrc  o  ���� 0 
temprecord 
tempRecord�  �  l ������  �  �    r  �� [  �� o  ���
�
 &0 totalsuccesscount totalSuccessCount m  ���	�	  o      �� &0 totalsuccesscount totalSuccessCount 	
	 l ������  �  �  
  l ����   ' ! Process highlights if they exist    � B   P r o c e s s   h i g h l i g h t s   i f   t h e y   e x i s t  r  � b  �  b  �� o  ���� $0 highlightsfolder highlightsFolder o  ���� 0 currentslug currentSlug m  �� �  . m d o      ��  0 highlightspath highlightsPath �  Q  � k  �   r  !"! n #$# I  	��%���� 0 readfile readFile% &��& o  	����  0 highlightspath highlightsPath��  ��  $  f  	" o      ����  0 highlightsfile highlightsFile  '��' Z  �()����( > *+* o  ����  0 highlightsfile highlightsFile+ m  ,, �--  ) k  �.. /0/ l ��12��  1 #  Create record for highlights   2 �33 :   C r e a t e   r e c o r d   f o r   h i g h l i g h t s0 454 r  *676 b  &898 m  ":: �;;  H i g h l i g h t s   o f  9 o  "%���� 0 recordtitle recordTitle7 o      ����  0 highlighttitle highlightTitle5 <=< r  +O>?> I +K��@A
�� .DTpacd08DTrc       reco@ K  +ABB ��CD
�� 
pnamC o  .1����  0 highlighttitle highlightTitleD ��EF
�� 
DTtyE m  47��
�� CtypmkdnF ��G��
�� 
conTG o  :=����  0 highlightsfile highlightsFile��  A ��H��
�� 
DTinH o  DG����  0 targetdatabase targetDatabase��  ? o      ���� "0 highlightrecord highlightRecord= IJI l PP��������  ��  ��  J KLK l PP��MN��  M * $ Set properties for highlight record   N �OO H   S e t   p r o p e r t i e s   f o r   h i g h l i g h t   r e c o r dL PQP O  P�RSR k  V�TT UVU l VV��WX��  W    Set URL (same as article)   X �YY 4   S e t   U R L   ( s a m e   a s   a r t i c l e )V Z[Z Z  Vm\]����\ > V]^_^ o  VY���� 0 urlvalue urlValue_ m  Y\��
�� 
msng] r  `i`a` o  `c���� 0 urlvalue urlValuea 1  ch��
�� 
pURL��  ��  [ bcb l nn��������  ��  ��  c ded l nn��fg��  f ' ! Set specific tags for highlights   g �hh B   S e t   s p e c i f i c   t a g s   f o r   h i g h l i g h t se iji r  n|klk J  nvmm non m  nqpp �qq  O m n i v o r eo r��r m  qtss �tt  H i g h l i g h t��  l 1  v{��
�� 
tagsj uvu l }}��������  ��  ��  v wxw l }}��yz��  y ( " Set same creation date as article   z �{{ D   S e t   s a m e   c r e a t i o n   d a t e   a s   a r t i c l ex |��| Z  }�}~����} > }�� o  }����� 0 dateobj dateObj� m  ����
�� 
msng~ r  ����� o  ������ 0 dateobj dateObj� 1  ����
�� 
DTcr��  ��  ��  S o  PS���� "0 highlightrecord highlightRecordQ ��� l ����������  ��  ��  � ���� r  ����� [  ����� o  ������ ,0 totalhighlightscount totalHighlightsCount� m  ������ � o      ���� ,0 totalhighlightscount totalHighlightsCount��  ��  ��  ��   R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��   I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� 2 N o   h i g h l i g h t s   f o u n d   f o r :  � o  ������ 0 recordtitle recordTitle��  �   ��  ��  � ���� l ����������  ��  ��  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  � k  ���� ��� r  ����� [  ����� o  ������ "0 totalerrorcount totalErrorCount� m  ������ � o      ���� "0 totalerrorcount totalErrorCount� ��� r  ����� b  ����� b  ����� o  ������ 0 recordtitle recordTitle� m  ���� ���  :  � o  ������ 0 errmsg errMsg� n      ���  ;  ��� o  ������ 0 errorlog errorLog� ���� I �������
�� .ascrcmnt****      � ****� b  ����� b  ����� b  ����� m  ���� ��� " E r r o r   p r o c e s s i n g  � o  ������ 0 recordtitle recordTitle� m  ���� ���  :  � o  ������ 0 errmsg errMsg��  ��  ��  �� 0 i  � m   � �����  � l  ������� \   ���� o   ����� 0 arraylength arrayLength� m  ���� ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � - ' Show progress after each metadata file   � ��� N   S h o w   p r o g r e s s   a f t e r   e a c h   m e t a d a t a   f i l e� ��� I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� * C o m p l e t e d   p r o c e s s i n g  � o  ������ $0 metadatafilename metadataFileName��  � ���� I  �����
�� .ascrcmnt****      � ****� b   ��� b   ��� b   ��� b   ��� m   �� ���  C u r r e n t   t o t a l :  � o  ���� &0 totalsuccesscount totalSuccessCount� m  
�� ���    a r t i c l e s ,  � o  ���� ,0 totalhighlightscount totalHighlightsCount� m  �� ���    h i g h l i g h t s��  ��  �� 0 metadatapath metadataPathg o   � ����� 0 metadatafiles metadataFilese ��� l ��������  ��  ��  � ��� l ������  �   Prepare result message   � ��� .   P r e p a r e   r e s u l t   m e s s a g e� ��� r  L��� b  H��� b  D��� b  @��� b  <��� b  8��� b  4��� b  0��� b  ,��� b  (��� b  $��� m   �� ���   I m p o r t   c o m p l e t e !� o   #��
�� 
ret � o  $'��
�� 
ret � l 	(+������ m  (+�� ��� F A r t i c l e s   i m p o r t e d   a s   W e b   A r c h i v e s :  ��  ��  � o  ,/���� &0 totalsuccesscount totalSuccessCount� o  03��
�� 
ret � l 	47������ m  47�� ��� * H i g h l i g h t s   i m p o r t e d :  ��  ��  � o  8;���� ,0 totalhighlightscount totalHighlightsCount� o  <?��
�� 
ret � l 	@C������ m  @C�� ���  F a i l e d :  ��  ��  � o  DG���� "0 totalerrorcount totalErrorCount� o      ���� 0 
resulttext 
resultText� ��� l MM��������  ��  ��  � ��� l MM�� ��      Add error details if any    � 2   A d d   e r r o r   d e t a i l s   i f   a n y�  Z  M����� ?  MR o  MP���� "0 totalerrorcount totalErrorCount m  PQ����   k  U�		 

 r  Ul b  Uh b  Ud b  U` b  U\ o  UX�� 0 
resulttext 
resultText o  X[�~
�~ 
ret  o  \_�}
�} 
ret  m  `c �  E r r o r s : o  dg�|
�| 
ret  o      �{�{ 0 
resulttext 
resultText �z X  m��y r  �� b  �� b  ��  b  ��!"! o  ���x�x 0 
resulttext 
resultText" m  ��## �$$  -    o  ���w�w 0 errormsg errorMsg o  ���v
�v 
ret  o      �u�u 0 
resulttext 
resultText�y 0 errormsg errorMsg o  ps�t�t 0 errorlog errorLog�z  ��  ��   %&% l ���s�r�q�s  �r  �q  & '(' l ���p)*�p  )   Show results   * �++    S h o w   r e s u l t s( ,-, I ���o./
�o .sysodlogaskr        TEXT. o  ���n�n 0 
resulttext 
resultText/ �m01
�m 
btns0 J  ��22 3�l3 m  ��44 �55  O K�l  1 �k6�j
�k 
dflt6 m  ��77 �88  O K�j  - 9�i9 l ���h�g�f�h  �g  �f  �i   R      �e:�d
�e .ascrerr ****      � ****: o      �c�c 0 errmsg errMsg�d   I ���b;<
�b .sysodisAaleR        TEXT; m  ��== �>> 
 E r r o r< �a?�`
�a 
mesS? o  ���_�_ 0 errmsg errMsg�`   m   [ ^@@�                                                                                  DNtp  alis    :  Macintosh HD               �J��BD ����DEVONthink 3.app                                               �����=u�        ����  
 cu             Applications   /:Applications:DEVONthink 3.app/  "  D E V O N t h i n k   3 . a p p    M a c i n t o s h   H D  Applications/DEVONthink 3.app   / ��  �  �V       �^ABCDEFGHIJK�^  A 
�]�\�[�Z�Y�X�W�V�U�T
�] 
pimr�\ 0 readjson readJSON�[ $0 getvaluefromdict getValueFromDict�Z 0 	parsedate 	parseDate�Y $0 getarrayfromdict getArrayFromDict�X 0 splitstring splitString�W &0 listmetadatafiles listMetadataFiles�V 0 readfile readFile�U 0 combinelabels combineLabels
�T .aevtoappnull  �   � ****B �SL�S L  MNM �RO�Q
�R 
cobjO PP   �P 	
�P 
frmk�Q  N �OQ�N
�O 
cobjQ RR   �M
�M 
osax�N  C �L �K�JST�I�L 0 readjson readJSON�K �HU�H U  �G�G 0 filepath filePath�J  S �F�E�D�C�B�F 0 filepath filePath�E 0 thefile theFile�D 0 jsondata jsonData�C 0 
jsonobject 
jsonObject�B 0 
parseerror 
parseErrorT 
�A�@�?�>�=�<�;�:�9�8
�A misccura�@ 0 nsstring NSString�? ,0 nsutf8stringencoding NSUTF8StringEncoding
�> 
msng�= T0 (stringwithcontentsoffile_encoding_error_ (stringWithContentsOfFile_encoding_error_�< (0 datausingencoding_ dataUsingEncoding_�; *0 nsjsonserialization NSJSONSerialization
�: 
obj �9 F0 !jsonobjectwithdata_options_error_ !JSONObjectWithData_options_error_
�8 
cobj�I Q��,���,�m+ E�O��  �Y hO���,k+ E�O��,�j�m+ E[�k/E�Z[�l/E�ZO�� �Y hO�D �7 m�6�5VW�4�7 $0 getvaluefromdict getValueFromDict�6 �3X�3 X  �2�1�2 0 dict  
�1 
kMsg�5  V �0�/�.�0 0 dict  
�/ 
kMsg�. 0 val  W �-�,�+�*�)�- 0 objectforkey_ objectForKey_
�, 
msng
�+ 
ctxt�*  �)  �4 ' ��k+  E�O�� 	��&Y hW X  hO�E �( ��'�&YZ�%�( 0 	parsedate 	parseDate�' �$[�$ [  �#�# 0 datestr dateStr�&  Y �"�!� �������������" 0 datestr dateStr�! 0 yearstr yearStr�  0 monthstr monthStr� 0 daystr dayStr� 0 hourstr hourStr� 0 	minutestr 	minuteStr� 0 	secondstr 	secondStr� 0 yearnum yearNum� 0 monthnum monthNum� 0 daynum dayNum� 0 hournum hourNum� 0 	minutenum 	minuteNum� 0 	secondnum 	secondNum� 0 dateobj dateObj� 0 errmsg errMsgZ !����������
�	��������� ��L��SZahov}�����
� 
msng
� 
ctxt� � � � 	� 
� � �
 �	 � � 
� 
nmbr
� .misccurdldt    ��� null
� 
year
� 
mnth
� 
day 
� 
hour
�  
min 
�� 
scnd
�� .ascrcmnt****      � ****�� 0 errmsg errMsg��  �%#��  �Y hO�[�\[Zk\Z�2E�O�[�\[Z�\Z�2E�O�[�\[Z�\Z�2E�O�[�\[Z�\Z�2E�O�[�\[Z�\Z�2E�O�[�\[Z�\Z�2E�O��&E�O��&E�O��&E�O��&E�O��&E�O��&E�O*j E�O���,FO��a ,FO��a ,FO��a ,FO��a ,FO��a ,FOa j Oa �%j Oa �%j Oa �%j Oa �%j Oa �%j Oa �%j Oa �%j O�W X  a  �%j O�F �������\]���� $0 getarrayfromdict getArrayFromDict�� ��^�� ^  ������ 0 dict  
�� 
kMsg��  \ �������������� 0 dict  
�� 
kMsg�� 0 arrayval arrayVal�� 0 
resultlist 
resultList�� 0 
arraycount 
arrayCount�� 0 i  ] ������������������ 0 objectforkey_ objectForKey_
�� 
msng�� 	0 count  
�� 
long��  0 objectatindex_ objectAtIndex_
�� 
ctxt��  ��  �� R F��k+  E�O�� 3jvE�O�j+ �&E�O j�kkh ��k+ �&�6G[OY��O�Y hW X  hOjvG �������_`���� 0 splitstring splitString�� ��a�� a  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  _ ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray` ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�H ������bc���� &0 listmetadatafiles listMetadataFiles�� ��d�� d  ���� 0 
rootfolder 
rootFolder��  b ���������� 0 
rootfolder 
rootFolder�� 0 filelist fileList�� 0 allfiles allFiles�� 0 afile aFilec 6����e�� ��������+��
�� 
alis
�� 
filee  
�� 
extn
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
posx�� HjvE�O� <��&�-�[�,\Z�81E�O (�[��l kh ��,� ��&�,�6FY h[OY��UO�I ��C����fg���� 0 readfile readFile�� ��h�� h  ���� 0 filepath filePath��  f ������ 0 filepath filePath�� 0 thefile theFileg ����������a��
�� misccura�� 0 nsstring NSString�� ,0 nsutf8stringencoding NSUTF8StringEncoding
�� 
msng�� T0 (stringwithcontentsoffile_encoding_error_ (stringWithContentsOfFile_encoding_error_
�� 
ctxt�� !��,���,�m+ E�O��  �Y hO��&J ��q����ij���� 0 combinelabels combineLabels�� ��k�� k  ������  0 originallabels originalLabels�� $0 additionallabels additionalLabels��  i ������������  0 originallabels originalLabels�� $0 additionallabels additionalLabels�� 0 	newlabels 	newLabels�� 	0 label  �� 0 newlabel newLabelj ��������
�� 
msng
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� K��  	jvE�Y hOjvE�O �[��l kh ��6G[OY��O �[��l kh ��6G[OY��O�K �������lm��
�� .aevtoappnull  �   � ****��  ��  l ���������� 0 metadatapath metadataPath�� 0 i  �� 0 errmsg errMsg�� 0 errormsg errorMsgm ����������������������������@�� ��������������V��[��������w����~�����������������~��}�|�{���z�y��x�w�v�u�t�s�r�q1�p�o�n�m�l�k�j�i~�h�g��f�e��d�c��b�a��`�_�^�]�\�[�Z,:�Y�X�Wps�V�U����������T����S#�R4�Q7�P=
�� 
prmp
�� .sysostflalis    ��� null�� 0 exportfolder exportFolder
�� 
psxp�� 0 
exportpath 
exportPath�� 0 
htmlfolder 
htmlFolder�� $0 highlightsfolder highlightsFolder
�� 
cfol
�� .coredoexnull���     ****
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
DTkb��  0 targetdatabase targetDatabase�� &0 totalsuccesscount totalSuccessCount�� ,0 totalhighlightscount totalHighlightsCount�� "0 totalerrorcount totalErrorCount�� 0 errorlog errorLog�� &0 listmetadatafiles listMetadataFiles�� 0 metadatafiles metadataFiles
�� 
leng
�� .ascrcmnt****      � ****
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 splitstring splitString�� $0 metadatafilename metadataFileName�� 0 readjson readJSON�� 0 jsondata jsonData�� 	0 count  
�� 
long�� 0 arraylength arrayLength��  0 objectatindex_ objectAtIndex_�� "0 currentmetadata currentMetadata� $0 getvaluefromdict getValueFromDict�~ 0 currentslug currentSlug�} 0 htmlpath htmlPath�| 0 readfile readFile�{ 0 htmlfile htmlFile�z 0 recordtitle recordTitle
�y 
msng
�x 
pnam
�w 
DTty
�v Ctyphtml
�u 
conT�t 
�s 
DTin
�r .DTpacd08DTrc       reco�q 0 
temprecord 
tempRecord�p 0 urlvalue urlValue
�o 
pURL
�n 
DTrc
�m 
DTto
�l Ctypwbar�k 
�j .DTpacd16DTrc    ��� null�i $0 webarchiverecord webArchiveRecord�h 0 	descvalue 	descValue
�g 
DTco�f 0 authorvalue authorValue�e 0 creator  �d $0 getarrayfromdict getArrayFromDict�c 0 taglist tagList�b 0 combinelabels combineLabels
�a 
tags�` 0 pubdate pubDate�_ 0 	parsedate 	parseDate�^ 0 dateobj dateObj
�] 
DTcr
�\ .coredelobool       null�[  0 highlightspath highlightsPath�Z  0 highlightsfile highlightsFile�Y  0 highlighttitle highlightTitle
�X Ctypmkdn�W "0 highlightrecord highlightRecord�V 0 errmsg errMsg�U  
�T 
ret �S 0 
resulttext 
resultText
�R 
btns
�Q 
dflt
�P .sysodlogaskr        TEXT���*��l E�O��,E�O��%E�O��%E�O� ;*��/j  ���l OhY hO*��/j  a �a l OhY hUOa iX*a a /EE` OjE` OjE` OjE` OjvE` O)�k+ E` Oa _ a ,%a %j  Oq_ [a !a "l #kh  )�a $l+ %a "i/E` &Oa '_ &%j  O)�k+ (E` )O_ )j+ *a +&E` ,O�j_ ,kkh _ )�k+ -E` .O)_ .a /l+ 0E` 1O��_ 1%a 2%E` 3O)_ 3k+ 4E` 5O_ 5a 6n)_ .a 7l+ 0E` 8O_ 8a 9  a :E` 8Y hOa ;_ 8%j  Oa <_ 8a =a >a ?_ 5a @a A_ l BE` CO_ C ))_ .a Dl+ 0E` EO_ Ea 9 _ E*a F,FY hUO*a G_ Ca Ha Ia J KE` LO_ L �_ 8*a <,FO_ Ea 9 _ E*a F,FY hO)_ .a Ml+ 0E` NO_ Na 9 _ N*a O,FY hO)_ .a Pl+ 0E` QO_ Qa 9 _ QE` RY hO)_ .a Sl+ TE` UO)_ Ua Vkvl+ WE` UO_ Ua ,j _ U*a X,FY hO)_ .a Yl+ 0E` ZO_ Za 9 ))_ Zk+ [E` \O_ \a 9 _ \*a ],FY hY hUO*a G_ Cl ^O_ kE` O�_ 1%a _%E` `O �)_ `k+ 4E` aO_ aa b �a c_ 8%E` dOa <_ da =a ea ?_ aa @a A_ l BE` fO_ f @_ Ea 9 _ E*a F,FY hOa ga hlv*a X,FO_ \a 9 _ \*a ],FY hUO_ kE` Y hW X i ja k_ 8%j  Y hOPW 1X i j_ kE` O_ 8a l%�%_ 6FOa m_ 8%a n%�%j  [OY�Oa o_ &%j  Oa p_ %a q%_ %a r%j  [OY��Oa s_ t%_ t%a u%_ %_ t%a v%_ %_ t%a w%_ %E` xO_ j I_ x_ t%_ t%a y%_ t%E` xO +_ [a !a "l #kh _ xa z%�%_ t%E` x[OY��Y hO_ xa {a |kva }a ~a J OPW X i ja ��l Uascr  ��ޭ