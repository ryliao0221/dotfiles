FasdUAS 1.101.10   ��   ��    k             l     ��  ��    I C an applescript program that opens a list of urls in separate tabs.     � 	 	 �   a n   a p p l e s c r i p t   p r o g r a m   t h a t   o p e n s   a   l i s t   o f   u r l s   i n   s e p a r a t e   t a b s .   
  
 l     ��  ��    ; 5 opens safari, then loads each url in a separate tab.     �   j   o p e n s   s a f a r i ,   t h e n   l o a d s   e a c h   u r l   i n   a   s e p a r a t e   t a b .      l     ��  ��    / ) written by alvin alexander, devdaily.com     �   R   w r i t t e n   b y   a l v i n   a l e x a n d e r ,   d e v d a i l y . c o m      l     ��  ��    F @ no rights reserved, feel free to copy and improve this program.     �   �   n o   r i g h t s   r e s e r v e d ,   f e e l   f r e e   t o   c o p y   a n d   i m p r o v e   t h i s   p r o g r a m .      l     ��������  ��  ��        l    	 ����  r     	    J           ! " ! m      # # � $ $ 4 h t t p : / / w w w . m a c i n t o u c h . c o m / "  % & % m     ' ' � ( ( * h t t p : / / w w w . m a c n n . c o m / &  ) * ) m     + + � , , 0 h t t p : / / w w w . m a c w o r l d . c o m / *  - . - m     / / � 0 0 6 h t t p : / / w w w . t h i n k s e c r e t . c o m / .  1�� 1 m     2 2 � 3 3 ( h t t p : / / w w w . t u a w . c o m /��    o      ���� 0 urllist urlList��  ��     4 5 4 l  
  6���� 6 r   
  7 8 7 l  
  9���� 9 I  
 �� :��
�� .corecnte****       **** : o   
 ���� 0 urllist urlList��  ��  ��   8 o      ���� 0 numurls numURLs��  ��   5  ; < ; l     ��������  ��  ��   <  =�� = l   s >���� > O    s ? @ ? k    r A A  B C B I   ������
�� .miscactvnull��� ��� null��  ��   C  D E D l   �� F G��   F * $ create all the tabs that are needed    G � H H H   c r e a t e   a l l   t h e   t a b s   t h a t   a r e   n e e d e d E  I�� I O    r J K J k     q L L  M N M l     �� O P��   O ' ! enter the url in the open window    P � Q Q B   e n t e r   t h e   u r l   i n   t h e   o p e n   w i n d o w N  R S R I    (�� T��
�� .prcskprsnull���     ctxt T l    $ U���� U n     $ V W V 4   ! $�� X
�� 
cobj X m   " #����  W o     !���� 0 urllist urlList��  ��  ��   S  Y Z Y I  ) .�� [��
�� .prcskcodnull���     **** [ m   ) *���� $��   Z  \�� \ Y   / q ]�� ^ _�� ] k   9 l ` `  a b a l  9 9�� c d��   c 2 , for each additional url, first create a tab    d � e e X   f o r   e a c h   a d d i t i o n a l   u r l ,   f i r s t   c r e a t e   a   t a b b  f g f O   9 ] h i h I  D \�� j��
�� .prcsclicnull��� ��� uiel j n   D X k l k 4   Q X�� m
�� 
menI m m   T W n n � o o  N e w   T a b l n   D Q p q p 4   J Q�� r
�� 
menE r m   M P s s � t t  F i l e q 4   D J�� u
�� 
mbar u m   H I���� ��   i 4   9 A�� v
�� 
prcs v m   = @ w w � x x  S a f a r i g  y z y l  ^ ^�� { |��   {   now enter the url    | � } } $   n o w   e n t e r   t h e   u r l z  ~  ~ I  ^ f�� ���
�� .prcskprsnull���     ctxt � l  ^ b ����� � n   ^ b � � � 4   _ b�� �
�� 
cobj � o   ` a���� 0 i   � o   ^ _���� 0 urllist urlList��  ��  ��     ��� � I  g l�� ���
�� .prcskcodnull���     **** � m   g h���� $��  ��  �� 0 i   ^ m   2 3����  _ l  3 4 ����� � o   3 4���� 0 numurls numURLs��  ��  ��  ��   K m     � ��                                                                                  sevs  alis    �  Macintosh HD               Ӈ��H+   ��System Events.app                                               	���(]        ����  	                CoreServices    Ӈ�2      ���     �� �� ��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   @ m     � ��                                                                                  sfri  alis    N  Macintosh HD               Ӈ��H+   ��
Safari.app                                                      T�ѭ�E        ����  	                Applications    Ӈ�2      Ѯ�     ��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     s � �   � �  4 � �  =����  ��  ��   � ���� 0 i   �  # ' + / 2�������� ��� ����������� w���� s�� n���� �� 0 urllist urlList
�� .corecnte****       ****�� 0 numurls numURLs
�� .miscactvnull��� ��� null
�� 
cobj
�� .prcskprsnull���     ctxt�� $
�� .prcskcodnull���     ****
�� 
prcs
�� 
mbar
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� t������vE�O�j E�O� ^*j 
O� S��k/j O�j O Al�kh  *a a / *a k/a a /a a /j UO��/j O�j [OY��UU ascr  ��ޭ