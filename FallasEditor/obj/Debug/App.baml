   M S B A M L   `   `   `  ����G  CFallasEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FallasEditorFallasEditor  5          FallasEditor.App   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ,localclr-namespace:FallasEditor     5        �� 	Resources  5         
Selectable �� 
TargetType �� Property �� Value �� 
TargetType J� SnapsToDevicePixels �� Triggers P� Property P� Value	 �� 
TargetName  ListBoxItemTemplate
 A� Columns   CategoriaListBoxDataTemplate � ColumnDefinitions  FallaListBoxDataTemplate��%  &	        &	 5    &	 �    &	 u    �� 5   
   " ��6#   .�5	      ��  � �� 5
      �� 5      " ��6&   .R�5      �� $��Label��6    $��0q�6-    . .��5      �� 5       5      P� 5       �@��
IsSelected . . �5   "   �� $	 Label��6)   # � ��6R    � ��5      5      5      5      �� 5   
   .R�5      A� $
 1��6   $��Stretch=�6&   $	��Top=�6D   5      �� 5   
   .R�5      � $
��Left=�6   $��Center=�6.    5      �� 5       $��50 �6'   �� 5!      $��* �6'   .+�5#      �� $��0��6   $��24��6K   $
��Left=�6W   $
��Left=�6r   $��Center=�6�   $��12(�6�   $
��Bold"�6�   ��6(   �� *CategoriaFalla+6�   �� 5$      $��1��6   $��24��6Q   $
��Left=�6]   $
��Left=�6x   $��Center=�6�   $��11(�6�   $
��Bold"�6�   
���  ����6(   �� *DescripcionCategoria+6�   5%      5&      �� 5(   
   .R�5)      � $
��Left=�6   $��Center=�6.    5*      �� 5+      $��50 �6'   �� 5,      $��* �6'   .+�5.      �� $��0��6   $��24��6H   $
��Left=�6T   $
��Left=�6o   $��Center=�6�   $��12(�6�   $
��Bold"�6�   ��6(   �� *CodigoFalla+6�   �� 5/      $��1��6   $��24��6M   $
��Left=�6Y   $
��Left=�6t   $��Center=�6�   $��11(�6�   $
��Bold"�6�   
���  ����6(   �� *DescripcionFalla+6�   50      51      53      54      