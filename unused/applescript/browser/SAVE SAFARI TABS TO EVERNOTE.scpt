FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	f`
? Veritrope.com
Safari Tab List to Evernote Exporter
Version 1.1
June 15, 2014

// UPDATE NOTICES
	** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
	If this AppleScript was useful to you, please take a second to show your love here: 
	http://veritrope.com/support
	
// SCRIPT INFORMATION AND UPDATE PAGE:
	http://veritrope.com/code/export-all-safari-tabs-to-evernote

// TERMS OF USE:
	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// CHANGELOG:
	1.10    NOTIFICATION CENTER, BETTER COMMENTS
	1.00    INITIAL RELEASE

    
 �  �  
%�   V e r i t r o p e . c o m  
 S a f a r i   T a b   L i s t   t o   E v e r n o t e   E x p o r t e r  
 V e r s i o n   1 . 1  
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
 	 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - s a f a r i - t a b s - t o - e v e r n o t e  
  
 / /   T E R M S   O F   U S E :  
 	 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 	 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   C H A N G E L O G :  
 	 1 . 1 0         N O T I F I C A T I O N   C E N T E R ,   B E T T E R   C O M M E N T S  
 	 1 . 0 0         I N I T I A L   R E L E A S E  
  
      l     ��������  ��  ��        l     ��  ��     RESET VALUES     �    R E S E T   V A L U E S      l     ����  r         J     ����    o      ���� 0 urllist urlList��  ��        l    ����  r        m    ����    o      ���� 0 
currenttab 
currentTab��  ��        l     ��������  ��  ��         l     �� ! "��   !  SET DATE STAMP    " � # #  S E T   D A T E   S T A M P    $ % $ l  	  &���� & r   	  ' ( ' l  	  )���� ) c   	  * + * l  	  ,���� , l  	  -���� - I  	 ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   + m    ��
�� 
TEXT��  ��   ( l      .���� . o      ���� 0 	datestamp 	dateStamp��  ��  ��  ��   %  / 0 / l    1���� 1 r     2 3 2 b     4 5 4 m     6 6 � 7 7 : U R L   L i s t   f r o m   S a f a r i   T a b s   o n   5 l    8���� 8 o    ���� 0 	datestamp 	dateStamp��  ��   3 o      ���� 0 	notetitle 	NoteTitle��  ��   0  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = - 'PROCESS TABS OF FRONTMOST SAFARI WINDOW    > � ? ? N P R O C E S S   T A B S   O F   F R O N T M O S T   S A F A R I   W I N D O W <  @ A @ l   � B���� B O    � C D C k    � E E  F G F I   "������
�� .miscactvnull��� ��� null��  ��   G  H I H r   # ) J K J l  # ' L���� L 4  # '�� M
�� 
cwin M m   % &���� ��  ��   K o      ���� 0 safariwindow safariWindow I  N O N r   * - P Q P m   * +����   Q o      ���� 0 successcount successCount O  R S R r   . 7 T U T l  . 5 V���� V I  . 5�� W��
�� .corecnte****       **** W l  . 1 X���� X n   . 1 Y Z Y 2  / 1��
�� 
bTab Z o   . /���� 0 safariwindow safariWindow��  ��  ��  ��  ��   U o      ���� 0 tabcount tabCount S  [ \ [ l  8 8��������  ��  ��   \  ]�� ] X   8 � ^�� _ ^ k   J � ` `  a b a l  J J�� c d��   c  GET TAB INFORMATION	    d � e e ( G E T   T A B   I N F O R M A T I O N 	 b  f�� f Q   J � g h�� g X   M � i�� j i k   a � k k  l m l r   a j n o n l  a f p���� p n   a f q r q 1   b f��
�� 
pnam r o   a b���� 0 t  ��  ��   o o      ���� 0 tabtitle TabTitle m  s t s r   k t u v u l  k p w���� w n   k p x y x 1   l p��
�� 
pURL y o   k l���� 0 t  ��  ��   v o      ���� 0 taburl TabURL t  z { z r   u � | } | l  u � ~���� ~ b   u �  �  b   u � � � � b   u � � � � b   u � � � � b   u | � � � m   u x � � � � �   � o   x {���� 0 tabtitle TabTitle � o   | ��
�� 
ret  � o   � ����� 0 taburl TabURL � o   � ���
�� 
ret  � o   � ���
�� 
ret ��  ��   } o      ���� 0 tabinfo TabInfo {  � � � l  � ��� � ���   � # COPY TAB INFO TO END OF LIST	    � � � � : C O P Y   T A B   I N F O   T O   E N D   O F   L I S T 	 �  � � � s   � � � � � o   � ����� 0 tabinfo TabInfo � l      ����� � n       � � �  ;   � � � o   � ����� 0 urllist urlList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  INCREMENT SUCCESS COUNT    � � � � . I N C R E M E N T   S U C C E S S   C O U N T �  � � � r   � � � � � l  � � ����� � [   � � � � � o   � ����� 0 successcount successCount � m   � ����� ��  ��   � o      ���� 0 successcount successCount �  ��� � l  � ���������  ��  ��  ��  �� 0 t   j l  P S ����� � n   P S � � � 2  Q S��
�� 
bTab � o   P Q���� 0 w  ��  ��   h R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 w   _ o   ; <���� 0 safariwindow safariWindow��   D m     � ��                                                                                  sfri  alis    N  Macintosh HD               Ӈ��H+   ��
Safari.app                                                      T�ѭ�E        ����  	                Applications    Ӈ�2      Ѯ�     ��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��   A  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  CONVERT LIST TO TEXT    � � � � ( C O N V E R T   L I S T   T O   T E X T �  � � � l  � � ����� � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      �� 0 	old_delim  ��  ��   �  � � � l  � � ��~�} � r   � � � � � o   � ��|
�| 
ret  � n      � � � 1   � ��{
�{ 
txdl � 1   � ��z
�z 
ascr�~  �}   �  � � � l  � � ��y�x � r   � � � � � c   � � � � � o   � ��w�w 0 urllist urlList � m   � ��v
�v 
ctxt � o      �u�u 0 url_list  �y  �x   �  � � � l  � � ��t�s � r   � � � � � o   � ��r�r 0 	old_delim   � n      � � � 1   � ��q
�q 
txdl � 1   � ��p
�p 
ascr�t  �s   �  � � � l     �o�n�m�o  �n  �m   �  � � � l     �l � ��l   �  MAKE ITEM IN EVERNOTE    � � � � * M A K E   I T E M   I N   E V E R N O T E �  � � � l  � � ��k�j � O   � � � � � r   � � � � � l  � � ��i�h � I  � ��g�f �
�g .EVRNcrntnull��� ��� null�f   � �e � �
�e 
Enxt � o   � ��d�d 0 url_list   � �c ��b
�c 
Entt � o   � ��a�a 0 	notetitle 	NoteTitle�b  �i  �h   � o      �`�` 0 evnote EVNote � m   � � � ��                                                                                  EVRN  alis    V  Macintosh HD               Ӈ��H+   ��Evernote.app                                                    -ɳ�wr�        ����  	                Applications    Ӈ�2      �w�)     ��  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �k  �j   �  � � � l     �_�^�]�_  �^  �]   �  � � � l     �\ � ��\   �  NOTIFY RESULTS    � � � �  N O T I F Y   R E S U L T S �  � � � l  � ��[�Z � n  � � � � I   �Y ��X�Y *0 notification_center notification_Center �  � � � o   �W�W 0 successcount successCount �  ��V � o  �U�U 0 tabcount tabCount�V  �X   �  f   � �[  �Z   �  � � � l     �T�S�R�T  �S  �R   �  � � � l      �Q � ��Q   � u o 
======================================
// NOTIFICATION SUBROUTINE
======================================
    � � � � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   N O T I F I C A T I O N   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 �  � � � l     �P�O�N�P  �O  �N   �  � � � l     �M � ��M   �  NOTIFICATION CENTER    � � � � & N O T I F I C A T I O N   C E N T E R �  �  � i      I      �L�K�L *0 notification_center notification_Center  o      �J�J 0 successcount successCount �I o      �H�H 0 itemnum itemNum�I  �K   k     o 	 r     

 c      l    �G�F o     �E�E 0 successcount successCount�G  �F   m    �D
�D 
nmbr o      �C�C 0 plural_test Plural_Test	  l   �B�A�@�B  �A  �@    Z    c�? =   	 o    �>�> 0 plural_test Plural_Test m    �=�=�� k      I   �<
�< .sysonotfnull��� ��� TEXT m     � " N o   T a b s   E x p o r t e d ! �; 
�; 
appr m    !! �"" 8 S e n d   S a f a r i   T a b s   t o   E v e r n o t e  �:#�9
�: 
subt# m    $$ �%% %�   V e r i t r o p e . c o m�9   &�8& l   �7�6�5�7  �6  �5  �8   '(' =   )*) o    �4�4 0 plural_test Plural_Test* m    �3�3  ( +,+ k     +-- ./. I    )�201
�2 .sysonotfnull��� ��� TEXT0 m     !22 �33 " N o   T a b s   E x p o r t e d !1 �145
�1 
appr4 m   " #66 �77 8 S e n d   S a f a r i   T a b s   t o   E v e r n o t e5 �08�/
�0 
subt8 m   $ %99 �:: %�   V e r i t r o p e . c o m�/  / ;�.; l  * *�-�,�+�-  �,  �+  �.  , <=< =  . 1>?> o   . /�*�* 0 plural_test Plural_Test? m   / 0�)�) = @A@ k   4 CBB CDC I  4 A�(EF
�( .sysonotfnull��� ��� TEXTE b   4 9GHG b   4 7IJI m   4 5KK �LL , S u c c e s s f u l l y   E x p o r t e d  J o   5 6�'�' 0 itemnum itemNumH l 	 7 8M�&�%M m   7 8NN �OO     T a b   t o   E v e r n o t e�&  �%  F �$PQ
�$ 
apprP m   : ;RR �SS 8 S e n d   S a f a r i   T a b s   t o   E v e r n o t eQ �#T�"
�# 
subtT m   < =UU �VV %�   V e r i t r o p e . c o m�"  D W�!W l  B B� ���   �  �  �!  A XYX ?  F IZ[Z o   F G�� 0 plural_test Plural_Test[ m   G H�� Y \�\ I  L _�]^
� .sysonotfnull��� ��� TEXT] b   L S_`_ b   L Oaba m   L Mcc �dd , S u c c e s s f u l l y   E x p o r t e d  b o   M N�� 0 itemnum itemNum` l 	 O Re��e m   O Rff �gg "   T a b s   t o   E v e r n o t e�  �  ^ �hi
� 
apprh m   T Wjj �kk 8 S e n d   S a f a r i   T a b s   t o   E v e r n o t ei �l�
� 
subtl m   X [mm �nn %�   V e r i t r o p e . c o m�  �  �?   opo l  d d����  �  �  p qrq r   d ists m   d guu �vv  0t o      �� 0 itemnum itemNumr w�w I  j o�x�
� .sysodelanull��� ��� nmbrx m   j k�� �  �    yzy l     ��
�	�  �
  �	  z {�{ l     ����  �  �  �       �|}~�  | ��� *0 notification_center notification_Center
� .aevtoappnull  �   � ****} �� ������ *0 notification_center notification_Center�  ����� �  ������ 0 successcount successCount�� 0 itemnum itemNum��   �������� 0 successcount successCount�� 0 itemnum itemNum�� 0 plural_test Plural_Test� ����!��$����269KNRUcfjmu��
�� 
nmbr
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj ~ �����������
�� .aevtoappnull  �   � ****� k    ��  ��  ��  $��  /��  @��  ���  ���  ���  ���  ���  �����  ��  ��  � ������ 0 w  �� 0 t  � &���������� 6�� ��������������������������� ������������������� ��������������� 0 urllist urlList�� 0 
currenttab 
currentTab
�� .misccurdldt    ��� null
�� 
TEXT�� 0 	datestamp 	dateStamp�� 0 	notetitle 	NoteTitle
�� .miscactvnull��� ��� null
�� 
cwin�� 0 safariwindow safariWindow�� 0 successcount successCount
�� 
bTab
�� .corecnte****       ****�� 0 tabcount tabCount
�� 
kocl
�� 
cobj
�� 
pnam�� 0 tabtitle TabTitle
�� 
pURL�� 0 taburl TabURL
�� 
ret �� 0 tabinfo TabInfo��  ��  
�� 
ascr
�� 
txdl�� 0 	old_delim  
�� 
ctxt�� 0 url_list  
�� 
Enxt
�� 
Entt�� 
�� .EVRNcrntnull��� ��� null�� 0 evnote EVNote�� *0 notification_center notification_Center��jvE�OjE�O*j �&E�O��%E�O� �*j O*�k/E�OjE�O��-j E�O y�[�a l kh   \ V��-[�a l kh �a ,E` O�a ,E` Oa _ %_ %_ %_ %_ %E` O_ �6GO�kE�OP[OY��W X  h[OY��UO_ a ,E` O_ _ a ,FO�a &E` O_ _ a ,FOa  *a  _ a !�a " #E` $UO)��l+ % ascr  ��ޭ