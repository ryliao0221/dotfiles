FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	-'
? Veritrope.com
Save Safari Tabs to Reminders
VERSION 1.0
June 15, 2014

// UPDATE NOTICES
	** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
	If this AppleScript was useful to you, please take a second to show your love here: 
	http://veritrope.com/support
	
// SCRIPT INFORMATION AND UPDATE PAGE:
http://veritrope.com/code/export-all-safari-tabs-to-reminders

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// CHANGELOG:
1.00    INITIAL RELEASE

    
 �  N  
%�   V e r i t r o p e . c o m  
 S a v e   S a f a r i   T a b s   t o   R e m i n d e r s  
 V E R S I O N   1 . 0  
 J u n e   1 5 ,   2 0 1 4  
  
 / /   U P D A T E   N O T I C E S  
 	 * *   F o l l o w   @ V e r i t r o p e   o n   T w i t t e r ,   F a c e b o o k ,   G o o g l e   P l u s ,   a n d   A D N   f o r   U p d a t e   N o t i c e s !   * *  
  
 / /   S U P P O R T   V E R I T R O P E !  
 	 I f   t h i s   A p p l e S c r i p t   w a s   u s e f u l   t o   y o u ,   p l e a s e   t a k e   a   s e c o n d   t o   s h o w   y o u r   l o v e   h e r e :    
 	 h t t p : / / v e r i t r o p e . c o m / s u p p o r t  
 	  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E :  
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - s a f a r i - t a b s - t o - r e m i n d e r s  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   C H A N G E L O G :  
 1 . 0 0         I N I T I A L   R E L E A S E  
  
      l     ��������  ��  ��        l     ��  ��     RESET VALUES     �    R E S E T   V A L U E S      l     ����  r         m     ����    o      ���� 0 
currenttab 
currentTab��  ��        l     ��������  ��  ��        l     ��  ��     SET DATE STAMP     �    S E T   D A T E   S T A M P       l    !���� ! r     " # " l    $���� $ c     % & % l   	 '���� ' l   	 (���� ( I   	������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   & m   	 
��
�� 
TEXT��  ��   # l      )���� ) o      ���� 0 	datestamp 	dateStamp��  ��  ��  ��      * + * l    ,���� , r     - . - b     / 0 / m     1 1 � 2 2  S a f a r i   T a b s   o n   0 l    3���� 3 o    ���� 0 	datestamp 	dateStamp��  ��   . o      ���� 0 listname listName��  ��   +  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 % PROCESS FRONTMOST SAFARI WINDOW    9 � : : > P R O C E S S   F R O N T M O S T   S A F A R I   W I N D O W 7  ; < ; l   � =���� = O    � > ? > k    � @ @  A B A I   ������
�� .miscactvnull��� ��� null��  ��   B  C D C r    $ E F E l   " G���� G 4   "�� H
�� 
cwin H m     !���� ��  ��   F o      ���� 0 safariwindow safariWindow D  I J I r   % ( K L K m   % &����   L o      ���� 0 successcount successCount J  M N M r   ) 2 O P O l  ) 0 Q���� Q I  ) 0�� R��
�� .corecnte****       **** R l  ) , S���� S n   ) , T U T 2  * ,��
�� 
bTab U o   ) *���� 0 safariwindow safariWindow��  ��  ��  ��  ��   P o      ���� 0 tabcount tabCount N  V W V l  3 3��������  ��  ��   W  X Y X l  3 3�� Z [��   Z  MAKE LIST WITH TIMESTAMP    [ � \ \ 0 M A K E   L I S T   W I T H   T I M E S T A M P Y  ] ^ ] O  3 P _ ` _ r   7 O a b a l  7 K c���� c I  7 K���� d
�� .corecrel****      � null��   d �� e f
�� 
kocl e m   9 <��
�� 
list f �� g��
�� 
prdt g K   ? E h h �� i��
�� 
pnam i o   B C���� 0 listname listName��  ��  ��  ��   b o      ���� 0 thelist theList ` m   3 4 j j�                                                                                  rmnd  alis    X  Macintosh HD               Ӈ��H+   ��Reminders.app                                                   Q��r��        ����  	                Applications    Ӈ�2      �r�     ��  (Macintosh HD:Applications: Reminders.app    R e m i n d e r s . a p p    M a c i n t o s h   H D  Applications/Reminders.app  / ��   ^  k l k l  Q Q��������  ��  ��   l  m n m l  Q Q�� o p��   o  PROCESS TABS	    p � q q  P R O C E S S   T A B S 	 n  r�� r X   Q � s�� t s Q   c � u v�� u k   f � w w  x y x l  f f�� z {��   z  GET TAB INFORMATION	    { � | | ( G E T   T A B   I N F O R M A T I O N 	 y  }�� } X   f � ~��  ~ k   z � � �  � � � r   z � � � � l  z  ����� � n   z  � � � 1   { ��
�� 
pnam � o   z {���� 0 t  ��  ��   � o      ���� 0 tabtitle TabTitle �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pURL � o   � ����� 0 t  ��  ��   � o      ���� 0 taburl TabURL �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  MAKE REMINDER	    � � � �  M A K E   R E M I N D E R 	 �  � � � O   � � � � � O   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
remi � �� ���
�� 
prdt � K   � � � � �� � �
�� 
pnam � o   � ����� 0 tabtitle TabTitle � �� ���
�� 
body � o   � ����� 0 taburl TabURL��  ��   � o   � ����� 0 thelist theList � m   � � � ��                                                                                  rmnd  alis    X  Macintosh HD               Ӈ��H+   ��Reminders.app                                                   Q��r��        ����  	                Applications    Ӈ�2      �r�     ��  (Macintosh HD:Applications: Reminders.app    R e m i n d e r s . a p p    M a c i n t o s h   H D  Applications/Reminders.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  INCREMENT SUCCESS COUNT    � � � � . I N C R E M E N T   S U C C E S S   C O U N T �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� 0 successcount successCount � m   � ����� ��  ��   � o      ���� 0 successcount successCount �  ��� � l  � ���������  ��  ��  ��  �� 0 t    l  i l ���~ � n   i l � � � 2  j l�}
�} 
bTab � o   i j�|�| 0 w  �  �~  ��   v R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  ��  �� 0 w   t o   T U�x�x 0 safariwindow safariWindow��   ? m     � ��                                                                                  sfri  alis    N  Macintosh HD               Ӈ��H+   ��
Safari.app                                                      T�ѭ�E        ����  	                Applications    Ӈ�2      Ѯ�     ��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��   <  � � � l     �w�v�u�w  �v  �u   �  � � � l     �t � ��t   �  NOTIFY RESULTS    � � � �  N O T I F Y   R E S U L T S �  � � � l  � � ��s�r � n  � � � � � I   � ��q ��p�q *0 notification_center notification_Center �  � � � o   � ��o�o 0 successcount successCount �  ��n � o   � ��m�m 0 tabcount tabCount�n  �p   �  f   � ��s  �r   �  � � � l     �l�k�j�l  �k  �j   �  � � � l      �i � ��i   � u o 
======================================
// NOTIFICATION SUBROUTINE
======================================
    � � � � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   N O T I F I C A T I O N   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 �  � � � l     �h�g�f�h  �g  �f   �  � � � l     �e � ��e   �  NOTIFICATION CENTER    � � � � & N O T I F I C A T I O N   C E N T E R �  � � � i      � � � I      �d ��c�d *0 notification_center notification_Center �  � � � o      �b�b 0 successcount successCount �  ��a � o      �`�` 0 itemnum itemNum�a  �c   � k     o � �  � � � r      � � � c      � � � l     ��_�^ � o     �]�] 0 successcount successCount�_  �^   � m    �\
�\ 
nmbr � o      �[�[ 0 plural_test Plural_Test �  � � � l   �Z�Y�X�Z  �Y  �X   �  � � � Z    c � � ��W � =   	 � � � o    �V�V 0 plural_test Plural_Test � m    �U�U�� � k     � �  � � � I   �T � �
�T .sysonotfnull��� ��� TEXT � m     � � � � � " N o   T a b s   E x p o r t e d ! � �S � �
�S 
appr � m     � � � � � : S e n d   S a f a r i   T a b s   t o   R e m i n d e r s � �R ��Q
�R 
subt � m     � � � � � %�   V e r i t r o p e . c o m�Q   �  ��P � l   �O�N�M�O  �N  �M  �P   �  � � � =      o    �L�L 0 plural_test Plural_Test m    �K�K   �  k     +  I    )�J
�J .sysonotfnull��� ��� TEXT m     !		 �

 " N o   T a b s   E x p o r t e d ! �I
�I 
appr m   " # � : S e n d   S a f a r i   T a b s   t o   R e m i n d e r s �H�G
�H 
subt m   $ % � %�   V e r i t r o p e . c o m�G   �F l  * *�E�D�C�E  �D  �C  �F    =  . 1 o   . /�B�B 0 plural_test Plural_Test m   / 0�A�A   k   4 C  I  4 A�@
�@ .sysonotfnull��� ��� TEXT b   4 9 b   4 7 !  m   4 5"" �## , S u c c e s s f u l l y   E x p o r t e d  ! o   5 6�?�? 0 itemnum itemNum l 	 7 8$�>�=$ m   7 8%% �&& "   T a b   t o   R e m i n d e r s�>  �=   �<'(
�< 
appr' m   : ;)) �** : S e n d   S a f a r i   T a b s   t o   R e m i n d e r s( �;+�:
�; 
subt+ m   < =,, �-- %�   V e r i t r o p e . c o m�:   .�9. l  B B�8�7�6�8  �7  �6  �9   /0/ ?  F I121 o   F G�5�5 0 plural_test Plural_Test2 m   G H�4�4 0 3�33 I  L _�245
�2 .sysonotfnull��� ��� TEXT4 b   L S676 b   L O898 m   L M:: �;; , S u c c e s s f u l l y   E x p o r t e d  9 o   M N�1�1 0 itemnum itemNum7 l 	 O R<�0�/< m   O R== �>> $   T a b s   t o   R e m i n d e r s�0  �/  5 �.?@
�. 
appr? m   T WAA �BB : S e n d   S a f a r i   T a b s   t o   R e m i n d e r s@ �-C�,
�- 
subtC m   X [DD �EE %�   V e r i t r o p e . c o m�,  �3  �W   � FGF l  d d�+�*�)�+  �*  �)  G HIH r   d iJKJ m   d gLL �MM  0K o      �(�( 0 itemnum itemNumI N�'N I  j o�&O�%
�& .sysodelanull��� ��� nmbrO m   j k�$�$ �%  �'   � P�#P l     �"�!� �"  �!  �   �#       �QRS�  Q ��� *0 notification_center notification_Center
� .aevtoappnull  �   � ****R � ���TU�� *0 notification_center notification_Center� �V� V  ��� 0 successcount successCount� 0 itemnum itemNum�  T ���� 0 successcount successCount� 0 itemnum itemNum� 0 plural_test Plural_TestU � �� �� ���	"%),:=ADL�
� 
nmbr
� 
appr
� 
subt� 
� .sysonotfnull��� ��� TEXT
� .sysodelanull��� ��� nmbr� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj S �W��
XY�	
� .aevtoappnull  �   � ****W k     �ZZ  [[  \\  *]]  ;^^  ���  �  �
  X ��� 0 w  � 0 t  Y ���� 1� �� ������������ j��������������������������������� 0 
currenttab 
currentTab
� .misccurdldt    ��� null
� 
TEXT� 0 	datestamp 	dateStamp� 0 listname listName
�  .miscactvnull��� ��� null
�� 
cwin�� 0 safariwindow safariWindow�� 0 successcount successCount
�� 
bTab
�� .corecnte****       ****�� 0 tabcount tabCount
�� 
kocl
�� 
list
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� 0 thelist theList
�� 
cobj�� 0 tabtitle TabTitle
�� 
pURL�� 0 taburl TabURL
�� 
remi
�� 
body��  ��  �� *0 notification_center notification_Center�	 �jE�O*j �&E�O��%E�O� �*j O*�k/E�OjE�O��-j E�O� *�a a a �la  E` UO ��[�a l kh   d ^��-[�a l kh �a ,E` O�a ,E` O� '_   *�a a a _ a _ a a  UUO�kE�OP[OY��W X  h[OY��UO)��l+  ascr  ��ޭ