   M S B A M L   `   `   `  ����C  ?ToDoList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ToDoListToDoList  5   	       ToDoList.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:ToDoList     5   	   -   5          � Title$  
To Do List��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
dgToDoList��5
      $��16(�6'   $
��Bold"�65   $��10q�6G      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ CreationDate��6M      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   ��  �� Path$ creationDate�6u   4  .System.Windows.Controls.DataGridCheckBoxColumn  5      $
 Done��6p    .  $ 80 6�    6)   �� $ IsDone�	 �� UpdateSourceTrigger$	 PropertyChanged=�6�     5      $
 ToDo��6E    .  $ * 6f    6%   �� $
 Text�6f   5      5      5      