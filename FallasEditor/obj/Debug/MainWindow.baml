   M S B A M L   `   `   `  ����G  CFallasEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FallasEditorFallasEditor  5   	       FallasEditor.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:FallasEditor     5   	     � Title$  FallasEditor��5   	   $	��480��6   $	��720��6+    � 
ResizeMode$ CanMinimize=�67    � WindowStartupLocation$ CenterScreen=�6P   .��5	      � .+�5
   
   �� -   5        $��ListBoxFalla��5
      $	��350��6&   $	��Top=�63   $��12,10,277,0q�6K      
Selectable#��[  6`     ListBoxItemTemplate#���  6�     FallaListBoxDataTemplate#��[ 6�    �� SelectionMode$ Single=�6  ��6�   �� 6,  �� 5   
   -   5        $��TextBoxCodigoFalla��5       �� MaxLines$ 1��6,    �� 	MaxLength$ 5��69   $��23��6G    �� TextWrapping$
 Wrap=�6S   $	��Top=�6g   $��12,390,652,0q�6   $��Consolas)�6�   $
��Bold"�6�   $��Center=�6�   $��Center=�6�   $��11(�6:  �� 5   
   -   5        $��TextBoxDescripcionFalla��5      $ 1��61   $ 50��6>   $��23��6M   $
 Wrap=�6Y   $	��Top=�6m   $��0,390,277,0q�6�   $��Center=�6�   $��Center=�6�   $��Consolas)�6�   $
��Bold"�6�   $��11(�6  $��Right=�6  $	��370��62  �� 5   
   -   5        $��ButtonIngresar��5      $��INGRESAR��6'   $��
0,418,11,0q�6:   $��Consolas)�6N   $
��Bold"�6d   $��Right=�6�   $��80��6�   $��18��6�   $	��Top=�6�   �� 5   
   -   5        $��ButtonAgregarFalla��5      $��AGREGAR FALLA A LA LISTA��6+   $	��Top=�6N   $��12,365,277,0q�6f   $��Consolas)�6|   $
��Bold"�6�   $��18��6�   6�   �� 5   
   -   5         ��Name$ ListBoxCategoria��5      $��	0,10,11,0q�6,   #��[  6?   #���  6�      CategoriaListBoxDataTemplate#��[ 6�   $ Multiple=�6�   $	��350��6  $	��Top=�6  $��Right=�66  $	��260��6R  ��6p   �� 6R  �� 5   
   -   5         ��Name$ TextBoxCategoriaFalla��5      $ 1��61   $ 5��6>   $��Right=�6L   $��23��6h   $
 Wrap=�6t   $	��Top=�6�   $��50��6�   $��0,390,221,0q�6�   $��Consolas)�6�   $
��Bold"�6�   $��Center=�6�   $��Center=�6  $��11(�6.  �� 5   
   -   5        $! TextBoxDescripcionCategoria��5      $ 1��67   $ 30��6D   $��23��6S   $
 Wrap=�6_   $	��Top=�6s   $��
0,390,11,0q�6�   $��Center=�6�   $��Center=�6�   $��Consolas)�6�   $
��Bold"�6�   $��11(�6  $��Right=�6  $	��205��67  �� 5   
   -	   5        	 ��Name$	 ButtonAgregarCategoria��5      $"��AGREGAR CATEGORIA A LA LISTA��61   $	��Top=�6X   $��
0,365,11,0q�6p   $
��Bold"�6�   $��Consolas)�6�   $��Right=�6�   $	��260��6�   �� 5   
   -
   5        $	 ButtonConsultarCategoria��5      $��CONSULTA��63   $	��Top=�6F   $��0,418,221,0q�6^   $��Consolas)�6s   $
��Bold"�6�   $��10(�6�   $��Right=�6�   $��50��6�   $��18��6�   �� 5   
   -   5        $��
ButtonLoad��5      $��(RE)CARGAR FALLAS��6#   $��
12,418,0,0q�6?   $��Consolas)�6S   $
��Bold"�6i   $��18��6�   $	��Top=�6�   $
��Left=�6�   $	��120��6�   5      5      