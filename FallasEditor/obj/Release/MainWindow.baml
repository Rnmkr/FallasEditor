   M S B A M L   `   `   `  ���� G  CFallasEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FallasEditorFallasEditor      FallasEditor.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:FallasEditor       � Title$  FallasEditor��$	��480��$	��720�� � 
ResizeMode$ CanMinimize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� -   $��ListBoxFalla��$	��350��$	��Top=�$��12,10,277,0q�   
Selectable#��[    ListBoxItemTemplate#���    FallaListBoxDataTemplate#��[  �� SelectionMode$ Single=����� �� -   $��TextBoxCodigoFalla�� �� MaxLines$ 1�� �� 	MaxLength$ 5��$��23�� �� TextWrapping$
 Wrap=�$	��Top=�$��12,390,652,0q�$��Consolas)�$
��Bold"�$��Center=�$��Center=�$��11(��� -   $��TextBoxDescripcionFalla��$ 1��$ 50��$��23��$
 Wrap=�$	��Top=�$��0,390,277,0q�$��Center=�$��Center=�$��Consolas)�$
��Bold"�$��11(�$��Right=�$	��370���� -   $��ButtonIngresar��$��INGRESAR��$��
0,418,11,0q�$��Consolas)�$
��Bold"�$��Right=�$��80��$��18��$	��Top=��� -   $��ButtonAgregarFalla��$��AGREGAR FALLA A LA LISTA��$	��Top=�$��12,365,277,0q�$��Consolas)�$
��Bold"�$��18���� -    ��Name$ ListBoxCategoria��$��	0,10,11,0q�#��[  #���     CategoriaListBoxDataTemplate#��[ $ Multiple=�$	��350��$	��Top=�$��Right=�$	��260������ �� -    ��Name$ TextBoxCategoriaFalla��$ 1��$ 5��$��Right=�$��23��$
 Wrap=�$	��Top=�$��50��$��0,390,221,0q�$��Consolas)�$
��Bold"�$��Center=�$��Center=�$��11(��� -   $! TextBoxDescripcionCategoria��$ 1��$ 30��$��23��$
 Wrap=�$	��Top=�$��
0,390,11,0q�$��Center=�$��Center=�$��Consolas)�$
��Bold"�$��11(�$��Right=�$	��205���� -	   	 ��Name$	 ButtonAgregarCategoria��$"��AGREGAR CATEGORIA A LA LISTA��$	��Top=�$��
0,365,11,0q�$
��Bold"�$��Consolas)�$��Right=�$	��260���� -
   $	 ButtonConsultarCategoria��$��CONSULTA��$	��Top=�$��0,418,221,0q�$��Consolas)�$
��Bold"�$��10(�$��Right=�$��50��$��18��