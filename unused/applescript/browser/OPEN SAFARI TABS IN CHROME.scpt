FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
? Veritrope.com
Open Safari Tabs in Chrome
Version 1.0
April 18, 2011

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here: 
http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/open-safari-tabs-in-chrome

// REQUIREMENTS
More details on the script information page.

// CHANGELOG
1.0 Initial Release
     � 	 	�  
%�   V e r i t r o p e . c o m  
 O p e n   S a f a r i   T a b s   i n   C h r o m e  
 V e r s i o n   1 . 0  
 A p r i l   1 8 ,   2 0 1 1  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   L I K E   T H I S   S C R I P T ?  
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e :    
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t  
  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E  
 h t t p : / / v e r i t r o p e . c o m / c o d e / o p e n - s a f a r i - t a b s - i n - c h r o m e  
  
 / /   R E Q U I R E M E N T S  
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e .  
  
 / /   C H A N G E L O G  
 1 . 0   I n i t i a l   R e l e a s e  
   
  
 l     ��������  ��  ��        l     ����  r         J     ����    o      ���� 0 	list_tabs 	list_Tabs��  ��        l   H ����  O    H    k   	 G       r   	     l  	  ����  n   	     2   ��
�� 
bTab  2   	 ��
�� 
cwin��  ��    o      ���� 0 the_tabs the_Tabs   ��  X    G ��    k   ! B ! !  " # " r   ! & $ % $ l  ! $ &���� & n   ! $ ' ( ' 2   " $��
�� 
cobj ( o   ! "���� 0 the_tab the_Tab��  ��   % o      ���� 0 	the_items 	the_Items #  )�� ) X   ' B *�� + * s   7 = , - , n   7 : . / . 1   8 :��
�� 
pURL / o   7 8���� 0 the_item the_Item - n       0 1 0  ;   ; < 1 o   : ;���� 0 	list_tabs 	list_Tabs�� 0 the_item the_Item + o   * +���� 0 	the_items 	the_Items��  �� 0 the_tab the_Tab   o    ���� 0 the_tabs the_Tabs��    m     2 2�                                                                                  sfri  alis    N  Macintosh HD               Ӈ��H+   ��
Safari.app                                                      T�ѭ�E        ����  	                Applications    Ӈ�2      Ѯ�     ��  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��     3 4 3 l     ��������  ��  ��   4  5 6 5 l  I | 7���� 7 O   I | 8 9 8 X   M { :�� ; : k   ] v < <  = > = r   ] n ? @ ? I  ] l���� A
�� .corecrel****      � null��   A �� B C
�� 
kocl B m   _ `��
�� 
CrTb C �� D��
�� 
insh D n   a h E F E  ;   g h F n   a g G H G 2  e g��
�� 
CrTb H 4   a e�� I
�� 
cwin I m   c d���� ��   @ o      ���� 0 mytab myTab >  J�� J r   o v K L K o   o p���� 0 list_tab list_Tab L n       M N M 1   q u��
�� 
URL  N o   p q���� 0 mytab myTab��  �� 0 list_tab list_Tab ; o   P Q���� 0 	list_tabs 	list_Tabs 9 m   I J O O�                                                                                  rimZ  alis    h  Macintosh HD               Ӈ��H+   ��Google Chrome.app                                               "{'ӆ_V        ����  	                Applications    Ӈ�2      ӆ��     ��  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��   6  P Q P l     ��������  ��  ��   Q  R�� R l     ��������  ��  ��  ��       �� S T��   S ��
�� .aevtoappnull  �   � **** T �� U���� V W��
�� .aevtoappnull  �   � **** U k     | X X   Y Y   Z Z  5����  ��  ��   V �������� 0 the_tab the_Tab�� 0 the_item the_Item�� 0 list_tab list_Tab W �� 2���������������� O�������������� 0 	list_tabs 	list_Tabs
�� 
cwin
�� 
bTab�� 0 the_tabs the_Tabs
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	the_items 	the_Items
�� 
pURL
�� 
CrTb
�� 
insh�� 
�� .corecrel****      � null�� 0 mytab myTab
�� 
URL �� }jvE�O� @*�-�-E�O 5�[��l kh  ��-E�O �[��l kh ��,�6G[OY��[OY��UO� 0 -�[��l kh *���*�k/�-6� E�O��a ,F[OY��U ascr  ��ޭ