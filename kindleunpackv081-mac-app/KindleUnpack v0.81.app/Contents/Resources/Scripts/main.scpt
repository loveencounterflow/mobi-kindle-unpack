FasdUAS 1.101.10   ��   ��    k             l      ��  ��   zt
# Written in 2010 to 2015 by Paul Durrant
# Released with unlicense. See http://unlicense.org/
#
#############################################################################
#
# This is free and unencumbered software released into the public domain.
# 
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
# 
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
#############################################################################
#
# It's still polite to give attribution if you do reuse this code.
#
# NB The enclosed python scripts are not released under unlicense, but under their own GPL3 licence as noted in the main script.
#
     � 	 	� 
 #   W r i t t e n   i n   2 0 1 0   t o   2 0 1 5   b y   P a u l   D u r r a n t 
 #   R e l e a s e d   w i t h   u n l i c e n s e .   S e e   h t t p : / / u n l i c e n s e . o r g / 
 # 
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 # 
 #   T h i s   i s   f r e e   a n d   u n e n c u m b e r e d   s o f t w a r e   r e l e a s e d   i n t o   t h e   p u b l i c   d o m a i n . 
 #   
 #   A n y o n e   i s   f r e e   t o   c o p y ,   m o d i f y ,   p u b l i s h ,   u s e ,   c o m p i l e ,   s e l l ,   o r 
 #   d i s t r i b u t e   t h i s   s o f t w a r e ,   e i t h e r   i n   s o u r c e   c o d e   f o r m   o r   a s   a   c o m p i l e d 
 #   b i n a r y ,   f o r   a n y   p u r p o s e ,   c o m m e r c i a l   o r   n o n - c o m m e r c i a l ,   a n d   b y   a n y 
 #   m e a n s . 
 #   
 #   I n   j u r i s d i c t i o n s   t h a t   r e c o g n i z e   c o p y r i g h t   l a w s ,   t h e   a u t h o r   o r   a u t h o r s 
 #   o f   t h i s   s o f t w a r e   d e d i c a t e   a n y   a n d   a l l   c o p y r i g h t   i n t e r e s t   i n   t h e 
 #   s o f t w a r e   t o   t h e   p u b l i c   d o m a i n .   W e   m a k e   t h i s   d e d i c a t i o n   f o r   t h e   b e n e f i t 
 #   o f   t h e   p u b l i c   a t   l a r g e   a n d   t o   t h e   d e t r i m e n t   o f   o u r   h e i r s   a n d 
 #   s u c c e s s o r s .   W e   i n t e n d   t h i s   d e d i c a t i o n   t o   b e   a n   o v e r t   a c t   o f 
 #   r e l i n q u i s h m e n t   i n   p e r p e t u i t y   o f   a l l   p r e s e n t   a n d   f u t u r e   r i g h t s   t o   t h i s 
 #   s o f t w a r e   u n d e r   c o p y r i g h t   l a w . 
 #   
 #   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D , 
 #   E X P R E S S   O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F 
 #   M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T . 
 #   I N   N O   E V E N T   S H A L L   T H E   A U T H O R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R 
 #   O T H E R   L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E , 
 #   A R I S I N G   F R O M ,   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R 
 #   O T H E R   D E A L I N G S   I N   T H E   S O F T W A R E . 
 # 
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 # 
 #   I t ' s   s t i l l   p o l i t e   t o   g i v e   a t t r i b u t i o n   i f   y o u   d o   r e u s e   t h i s   c o d e . 
 # 
 #   N B   T h e   e n c l o s e d   p y t h o n   s c r i p t s   a r e   n o t   r e l e a s e d   u n d e r   u n l i c e n s e ,   b u t   u n d e r   t h e i r   o w n   G P L 3   l i c e n c e   a s   n o t e d   i n   t h e   m a i n   s c r i p t . 
 # 
   
  
 l     ��������  ��  ��        p         ������ $0 kindleunpackname KindleUnpackName��        p         ������ $0 kindleunpackpath KindleUnpackPath��        p         ������ 00 kindleunpackparentpath KindleUnpackParentPath��        p         ������ 0 dumpall DumpAll��        l     ��������  ��  ��        i         I      �������� 0 
optiondown 
optionDown��  ��    k             r     	 ! " ! n      # $ # 1    ��
�� 
psxp $ l     %���� % I    �� &��
�� .sysorpthalis        TEXT & m      ' ' � ( (  O p t i o n D o w n��  ��  ��   " o      ����  0 optiondownpath OptionDownPath    )�� ) L   
  * * =   
  + , + l  
  -���� - I  
 �� .��
�� .sysoexecTEXT���     TEXT . l  
  /���� / n   
  0 1 0 1    ��
�� 
strq 1 o   
 ����  0 optiondownpath OptionDownPath��  ��  ��  ��  ��   , m     2 2 � 3 3  1��     4 5 4 l     ��������  ��  ��   5  6 7 6 i     8 9 8 I      �������� *0 getkindleunpackpath GetKindleUnpackPath��  ��   9 k     d : :  ; < ; r      = > = m      ? ? � @ @  k i n d l e u n p a c k . p y > o      ���� $0 kindleunpackname KindleUnpackName <  A B A r     C D C n     E F E 1    ��
�� 
psxp F 4    �� G
�� 
file G l    H���� H b     I J I l    K���� K I   �� L M
�� .earsffdralis        afdr L  f     M �� N��
�� 
rtyp N m    	��
�� 
ctxt��  ��  ��   J m     O O � P P $ C o n t e n t s : R e s o u r c e s��  ��   D o      ���� 00 kindleunpackparentpath KindleUnpackParentPath B  Q R Q r    % S T S n    # U V U 1   ! #��
�� 
psxp V 4    !�� W
�� 
file W l     X���� X b      Y Z Y l    [���� [ I   �� \ ]
�� .earsffdralis        afdr \  f     ] �� ^��
�� 
rtyp ^ m    ��
�� 
ctxt��  ��  ��   Z m     _ _ � ` ` D C o n t e n t s : R e s o u r c e s : k i n d l e u n p a c k . p y��  ��   T o      ���� $0 kindleunpackpath KindleUnpackPath R  a b a r   & ) c d c m   & '��
�� boovfals d o      ���� 0 
fileexists   b  e f e O  * @ g h g Z  . ? i j���� i I  . 5�� k��
�� .coredoexbool        obj  k c   . 1 l m l o   . /���� $0 kindleunpackpath KindleUnpackPath m m   / 0��
�� 
psxf��   j r   8 ; n o n m   8 9��
�� boovtrue o o      ���� 0 
fileexists  ��  ��   h m   * + p p�                                                                                  MACS  alis    t  Macintosh HD               ����H+   ɤ
Finder.app                                                      hc�B�        ����  	                CoreServices    ����      �B�     ɤ ɕ   y  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   f  q r q Z   A a s t���� s l  A C u���� u H   A C v v o   A B���� 0 
fileexists  ��  ��   t I  F ]�� w x
�� .sysodlogaskr        TEXT w m   F G y y � z z � T h e   m o b i _ u n p a c k . p y   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e .   P l e a s e   g e t   a   f r e s h   c o p y . x �� { |
�� 
appr { m   H K } } � ~ ~ ( K i n d l e U n p a c k   W r a p p e r | ��  �
�� 
btns  J   N S � �  ��� � m   N Q � � � � �  B o t h e r��   � �� ���
�� 
dflt � m   V W���� ��  ��  ��   r  ��� � L   b d � � o   b c���� 0 
fileexists  ��   7  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 
unpackfile 
UnpackFile �  ��� � o      ���� 0 origfile origFile��  ��   � k    b � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � 4     �� �
�� 
file � o    ���� 0 origfile origFile � o      ���� 0 origfilepath origFilePath �  � � � O   	 # � � � k    " � �  � � � r     � � � c     � � � l    ����� � n     � � � m    ��
�� 
ctnr � 4    �� �
�� 
file � o    ���� 0 origfile origFile��  ��   � m    ��
�� 
ctxt � o      ���� 0 parent_folder   �  ��� � r    " � � � c      � � � l    ����� � n     � � � 1    ��
�� 
pnam � 4    �� �
�� 
file � o    ���� 0 origfile origFile��  ��   � m    ��
�� 
ctxt � o      ���� 0 filename fileName��   � m   	 
 � ��                                                                                  MACS  alis    t  Macintosh HD               ����H+   ɤ
Finder.app                                                      hc�B�        ����  	                CoreServices    ����      �B�     ɤ ɕ   y  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � r   $ + � � � b   $ ) � � � b   $ ' � � � o   $ %���� 0 parent_folder   � o   % &���� 0 filename fileName � m   ' ( � � � � �  . t x t � o      ���� 0 resultsfile resultsFile �  � � � l  , ,�� � ���   �  check it's a mobi file.    � � � � . c h e c k   i t ' s   a   m o b i   f i l e . �  � � � r   , / � � � m   , - � � � � �  N O T A M O B I � o      ���� 0 bookmobi BOOKMOBI �  � � � Q   0 J � ��� � r   3 A � � � I  3 ?�� � �
�� .rdwrread****        **** � 4   3 7�� �
�� 
file � o   5 6���� 0 origfile origFile � �� � �
�� 
rdfm � m   8 9���� = � �� ���
�� 
rdfr � m   : ;���� ��   � o      ���� 0 bookmobi BOOKMOBI � R      ��~�}
� .ascrerr ****      � ****�~  �}  ��   �  � � � Z   K6 � ��| � � F   K \ � � � >  K P � � � o   K L�{�{ 0 bookmobi BOOKMOBI � m   L O � � � � �  B O O K M O B I � >  S X � � � o   S T�z�z 0 bookmobi BOOKMOBI � m   T W � � � � �  T E X t R E A d � k   _ � � �  � � � r   _ d � � � m   _ b � � � � �  N O T � o      �y�y 0 topaz TOPAZ �  � � � Q   e  � ��x � r   h v � � � I  h t�w � �
�w .rdwrread****        **** � 4   h l�v �
�v 
file � o   j k�u�u 0 origfile origFile � �t � �
�t 
rdfm � m   m n�s�s  � �r ��q
�r 
rdfr � m   o p�p�p �q   � o      �o�o 0 topaz TOPAZ � R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �x   �  ��k � Z   � � � ��j � � >  � � � � � o   � ��i�i 0 topaz TOPAZ � m   � � � � � � �  T P Z 0 � r   � � � � � b   � � � � � o   � ��h�h 0 filename fileName � m   � �   � D   i s   n o t   a   M o b i p o c k e t   f o r m a t   f i l e .  � o      �g�g 0 shellresult  �j   � r   � � b   � � o   � ��f�f 0 filename fileName m   � � � `   i s   a   T o p a z   f i l e ,   n o t   a   M o b i p o c k e t   f o r m a t   f i l e .  o      �e�e 0 shellresult  �k  �|   � k   �6 	
	 r   � � m   � � �   o      �d�d 0 fileextension fileExtension
  Z   � ��c�b E   � � o   � ��a�a 0 filename fileName m   � � �  . k   � �  r   � � m   � � �  . n      1   � ��`
�` 
txdl 1   � ��_
�_ 
ascr  !  r   � �"#" b   � �$%$ m   � �&& �''  .% l  � �(�^�]( n   � �)*) 4  � ��\+
�\ 
citm+ m   � ��[�[��* o   � ��Z�Z 0 filename fileName�^  �]  # o      �Y�Y 0 fileextension fileExtension! ,�X, r   � �-.- c   � �/0/ l  � �1�W�V1 n   � �232 7 � ��U45
�U 
citm4 m   � ��T�T 5 m   � ��S�S��3 o   � ��R�R 0 filename fileName�W  �V  0 m   � ��Q
�Q 
TEXT. o      �P�P 0 filename fileName�X  �c  �b   676 r   � �898 b   � �:;: b   � �<=< b   � �>?> m   � �@@ �AA  c d  ? n   � �BCB 1   � ��O
�O 
strqC l  � �D�N�MD o   � ��L�L 00 kindleunpackparentpath KindleUnpackParentPath�N  �M  = m   � �EE �FF  ;   p y t h o n  ; l  � �G�K�JG n   � �HIH 1   � ��I
�I 
strqI o   � ��H�H $0 kindleunpackname KindleUnpackName�K  �J  9 o      �G�G 0 shellcommand  7 JKJ Z   �LM�FNL o   � ��E�E 0 dumpall DumpAllM r   �OPO b   �QRQ o   � ��D�D 0 shellcommand  R m   �SS �TT    - d r s i  P o      �C�C 0 shellcommand  �F  N r  UVU b  WXW o  �B�B 0 shellcommand  X m  YY �ZZ 
   - s i  V o      �A�A 0 shellcommand  K [\[ r  ]^] b  _`_ o  �@�@ 0 shellcommand  ` l a�?�>a n  bcb 1  �=
�= 
strqc o  �<�< 0 origfilepath origFilePath�?  �>  ^ o      �;�; 0 shellcommand  \ ded r  fgf m  hh �ii  g o      �:�: 0 shellresult  e j�9j Q  6klmk r  ")non I "'�8p�7
�8 .sysoexecTEXT���     TEXTp o  "#�6�6 0 shellcommand  �7  o o      �5�5 0 shellresult  l R      �4qr
�4 .ascrerr ****      � ****q l     s�3�2s o      �1�1 0 error_message  �3  �2  r �0t�/
�0 
errnt l     u�.�-u o      �,�, 0 error_number  �.  �-  �/  m r  16vwv b  14xyx o  12�+�+ 0 shellresult  y o  23�*�* 0 error_message  w o      �)�) 0 shellresult  �9   � z{z r  7E|}| I 7C�(~
�( .rdwropenshor       file~ 4  7;�'�
�' 
file� o  9:�&�& 0 resultsfile resultsFile �%��$
�% 
perm� m  >?�#
�# boovtrue�$  } o      �"�" 0 fileref fileRef{ ��� I FO�!��
�! .rdwrseofnull���     ****� o  FG� �  0 fileref fileRef� ���
� 
set2� m  JK��  �  � ��� I PY���
� .rdwrwritnull���     ****� o  PQ�� 0 shellresult  � ���
� 
refn� o  TU�� 0 fileref fileRef�  � ��� I Z_���
� .rdwrclosnull���     ****� o  Z[�� 0 fileref fileRef�  � ��� L  `b��  �   � ��� l     ����  �  �  � ��� i    ��� I     ���
� .aevtoappnull  �   � ****�  �  � Z     ����� l    ��
�	� I     ���� *0 getkindleunpackpath GetKindleUnpackPath�  �  �
  �	  � k    �� ��� r    ��� m    	�� ���, D r a g   &   D r o p   K i n d l e   ( o r   M o b i p o c k e t )   e b o o k s   o n t o   t h i s   A p p l e s c r i p t   a p p l i c a t i o n   t o   u n p a c k   t o   s o u r c e   f i l e s   ( i n c l u d i n g   e x t r a c t i n g   a   P D F   f r o m   . a z w 4   f i l e s ) ,   a n d   t o   s p l i t   c o m b i n e d   f i l e s   i n t o   M o b i p o c k e t   a n d   K F 8   f i l e s . 
 	 	 
 H o l d   d o w n   t h e   o p t i o n   k e y   t o   d u m p   a l l   s e c t i o n s   a n d   r a w   i n f o   a s   w e l l .� o      �� 0 
dialogtext 
dialogText� ��� I   ���
� .sysodlogaskr        TEXT� o    �� 0 
dialogtext 
dialogText� ���
� 
appr� m    �� ��� ( K i n d l e U n p a c k   W r a p p e r� � ��
�  
btns� J    �� ���� m    �� ���  O K��  � �����
�� 
dflt� m    ���� ��  �  �  �  � ��� l     ��������  ��  ��  � ��� i    ��� I     �����
�� .aevtodocnull  �    alis� o      ���� 0 
some_items  ��  � k     }�� ��� r     ��� I     �������� 0 
optiondown 
optionDown��  ��  � o      ���� 0 dumpall DumpAll� ���� Z    }������� l   ������ I    �������� *0 getkindleunpackpath GetKindleUnpackPath��  ��  ��  ��  � X    y����� Z     t������� l    )������ =    )��� n     '��� 1   % '��
�� 
asdr� l    %������ I    %�����
�� .sysonfo4asfe        file� o     !���� 0 	this_item  ��  ��  ��  � m   ' (��
�� boovfals��  ��  � k   , p�� ��� O  , 9��� r   0 8��� n   0 6��� 1   4 6��
�� 
nmxt� 4   0 4���
�� 
file� o   2 3���� 0 	this_item  � o      ���� 0 item_extension  � m   , -���                                                                                  MACS  alis    t  Macintosh HD               ����H+   ɤ
Finder.app                                                      hc�B�        ����  	                CoreServices    ����      �B�     ɤ ɕ   y  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� Z   : p������� G   : _��� G   : U��� G   : M��� G   : E��� =  : =��� o   : ;���� 0 item_extension  � m   ; <�� ���  p r c� =  @ C��� o   @ A���� 0 item_extension  � m   A B�� ���  m o b i� =  H K��� o   H I���� 0 item_extension  � m   I J�� ���  a z w� =  P S��� o   P Q���� 0 item_extension  � m   Q R�� ���  a z w 3� =  X ]��� o   X Y���� 0 item_extension  � m   Y \�� ���  a z w 4� I   b l������� 0 
unpackfile 
UnpackFile� ���� c   c h��� o   c d���� 0 	this_item  � m   d g��
�� 
ctxt��  ��  ��  ��  ��  ��  ��  �� 0 	this_item  � o    ���� 0 
some_items  ��  ��  ��  � ���� l     ��������  ��  ��  ��       ���������� ?������  � 
���������������������� 0 
optiondown 
optionDown�� *0 getkindleunpackpath GetKindleUnpackPath�� 0 
unpackfile 
UnpackFile
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� 0 dumpall DumpAll�� $0 kindleunpackname KindleUnpackName�� 00 kindleunpackparentpath KindleUnpackParentPath�� $0 kindleunpackpath KindleUnpackPath��  � �� ���� ���� 0 
optiondown 
optionDown��  ��    ����  0 optiondownpath OptionDownPath  '�������� 2
�� .sysorpthalis        TEXT
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� �j �,E�O��,j � � �� 9�������� *0 getkindleunpackpath GetKindleUnpackPath��  ��   ���� 0 
fileexists    ?���������� O���� _�� p���� y�� }�� ��������� $0 kindleunpackname KindleUnpackName
�� 
file
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� 00 kindleunpackparentpath KindleUnpackParentPath�� $0 kindleunpackpath KindleUnpackPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� e�E�O*�)��l �%/�,E�O*�)��l �%/�,E�OfE�O� ��&j  eE�Y hUO� ��a a a kva ka  Y hO�� �� ��������� 0 
unpackfile 
UnpackFile�� ����   ���� 0 origfile origFile��   ���������������������������� 0 origfile origFile�� 0 origfilepath origFilePath�� 0 parent_folder  �� 0 filename fileName�� 0 resultsfile resultsFile�� 0 bookmobi BOOKMOBI�� 0 topaz TOPAZ�� 0 shellresult  �� 0 fileextension fileExtension�� 0 shellcommand  �� 0 error_message  �� 0 error_number  �� 0 fileref fileRef 3���� ������� � ���������������~ � ��} � � �|�{&�z�y�x@�w�vE�u�tSYh�s�r�q�p�o�n�m�l�k
�� 
file
�� 
psxp
�� 
ctnr
�� 
ctxt
�� 
pnam
�� 
rdfm�� =
�� 
rdfr�� �� 
�� .rdwrread****        ****�  �~  
�} 
bool
�| 
ascr
�{ 
txdl
�z 
citm�y��
�x 
TEXT�w 00 kindleunpackparentpath KindleUnpackParentPath
�v 
strq�u $0 kindleunpackname KindleUnpackName�t 0 dumpall DumpAll
�s .sysoexecTEXT���     TEXT�r 0 error_message   �j�i�h
�j 
errn�i 0 error_number  �h  
�q 
perm
�p .rdwropenshor       file
�o 
set2
�n .rdwrseofnull���     ****
�m 
refn
�l .rdwrwritnull���     ****
�k .rdwrclosnull���     ****��c*�/�,E�O� *�/�,�&E�O*�/�,�&E�UO��%�%E�O�E�O *�/����� E�W X  hO�a 	 �a a & ?a E�O *�/�k��� E�W X  hO�a  �a %E�Y 	�a %E�Y �a E�O�a  3a _ a ,FOa �a i/%E�O�[a \[Zk\Za 2a &E�Y hOa  _ !a ",%a #%_ $a ",%E�O_ % �a &%E�Y 	�a '%E�O��a ",%E�Oa (E�O �j )E�W X * +��%E�O*�/a ,el -E�O�a .jl /O�a 0�l 1O�j 2Oh� �g��f�e	�d
�g .aevtoappnull  �   � ****�f  �e    	 
�c��b�a��`��_�^�]�c *0 getkindleunpackpath GetKindleUnpackPath�b 0 
dialogtext 
dialogText
�a 
appr
�` 
btns
�_ 
dflt�^ 
�] .sysodlogaskr        TEXT�d *j+   �E�O�����kv�k� 	Y h� �\��[�Z
�Y
�\ .aevtodocnull  �    alis�[ 0 
some_items  �Z  
 �X�W�V�X 0 
some_items  �W 0 	this_item  �V 0 item_extension   �U�T�S�R�Q�P�O�N��M�L���K����J�I�U 0 
optiondown 
optionDown�T 0 dumpall DumpAll�S *0 getkindleunpackpath GetKindleUnpackPath
�R 
kocl
�Q 
cobj
�P .corecnte****       ****
�O .sysonfo4asfe        file
�N 
asdr
�M 
file
�L 
nmxt
�K 
bool
�J 
ctxt�I 0 
unpackfile 
UnpackFile�Y ~*j+  E�O*j+  n h�[��l kh �j �,f  I� 
*�/�,E�UO�� 
 �� �&
 �� �&
 �� �&
 	�a  �& *�a &k+ Y hY h[OY��Y h
�� boovfals� � � / U s e r s / p d u r r a n t / A p p l i c a t i o n s / K i n d l e U n p a c k   v 0 . 8 0 . a p p / C o n t e n t s / R e s o u r c e s� � � / U s e r s / p d u r r a n t / A p p l i c a t i o n s / K i n d l e U n p a c k   v 0 . 8 0 . a p p / C o n t e n t s / R e s o u r c e s / k i n d l e u n p a c k . p y��   ascr  ��ޭ