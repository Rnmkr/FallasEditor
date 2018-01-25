using System.Windows;
using FallasEditor.DataAccessLayer;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows.Controls;
using System;
using System.Net.NetworkInformation;
using System.Windows.Input;
using readconfig;

namespace FallasEditor
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<Falla> Lista;
        ObservableCollection<Falla> ListaCategorias = new ObservableCollection<Falla>();
        ObservableCollection<Falla> ListaFallas = new ObservableCollection<Falla>();

        public MainWindow()
        {
            InitializeComponent();
            //LoadItems();
        }

        private void LoadItems()
        {
            try
            {
                ListaCategorias.Clear();
                ListaFallas.Clear();
                PRDB context = new PRDB();
                Lista = new ObservableCollection<Falla>(context.Falla.Select(s => s));
                context.Dispose();

                var LC = from c in Lista orderby c.CategoriaFalla group c by c.CategoriaFalla into uniqueCats select uniqueCats.FirstOrDefault() ;
                var LF = from c in Lista orderby c.CodigoFalla group c by c.CodigoFalla into uniqueCods select uniqueCods.FirstOrDefault();

                foreach (var v in LC)
                {
                    ListaCategorias.Add(v);
                }

                foreach (var v in LF)
                {
                    ListaFallas.Add(v);
                }

                ListBoxCategoria.DataContext = ListaCategorias;
                ListBoxFalla.DataContext = ListaFallas;
            }
            catch (System.Data.SqlClient.SqlException)
            {
                MessageBox.Show("No se pudo conectar a la base de datos!", "FallasEditor", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
        }

        private void ListBoxFalla_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            try
            {
                ListBoxCategoria.SelectedItems.Clear();
                Falla fallaseleccionada = (Falla)ListBoxFalla.SelectedItem;

                var listaseleccionada = Lista.Where(w => w.CodigoFalla == fallaseleccionada.CodigoFalla).Select(s => s);
                foreach (var v in listaseleccionada)
                {
                    Falla c = ListaCategorias.Where(w => w.CategoriaFalla == v.CategoriaFalla).Select(s => s).FirstOrDefault();
                    ListBoxCategoria.SelectedItems.Add(c);
                }
            }
            catch (Exception)
            {
                //MessageBox.Show("Error seleccionando items" + Environment.NewLine + ex.ToString(), "FallasEditor", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ButtonAgregarCategoria_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxCategoriaFalla.Text) || string.IsNullOrWhiteSpace(TextBoxDescripcionCategoria.Text))
            {
                MessageBox.Show("Debe ingresar CATEGORIA y COMPONENTE!", "Agregar Categoria", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            string NewCat = TextBoxCategoriaFalla.Text.ToUpper();
            string NewCom = TextBoxDescripcionCategoria.Text.ToUpper();

            if (ListaCategorias.Where(w => w.CategoriaFalla == NewCat).Any())
            {
                MessageBox.Show("Ya existe la categoria " + NewCat, "Agregar Categoria", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            if (ListaCategorias.Where(w => w.DescripcionCategoria == NewCom).Any())
            {
                MessageBox.Show("Ya existe una categoria con descripción " + NewCom, "Agregar Categoria", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            Falla fc = new Falla { CategoriaFalla = NewCat, DescripcionCategoria = NewCom };
            ListaCategorias.Add(fc);
            //SortItems();
            ListBoxCategoria.SelectedItems.Add(fc);
            TextBoxCategoriaFalla.Text = "";
            TextBoxDescripcionCategoria.Text = "";
        }

        private void ButtonConsultarCategoria_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxCategoriaFalla.Text))
            {
                MessageBox.Show("Debe ingresar una CATEGORIA para consultar!", "Consultar Categoria", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            string keyword = TextBoxCategoriaFalla.Text;
            Consulta consulta = new Consulta(keyword);
            consulta.ShowDialog();
        }

        private void ButtonAgregarFalla_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxCodigoFalla.Text) || string.IsNullOrWhiteSpace(TextBoxDescripcionFalla.Text))
            {
                MessageBox.Show("Debe ingresar CODIGO y DESCRIPCION!", "Complete los campos", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            string NewCod = TextBoxCodigoFalla.Text.ToUpper();
            string NewFal = TextBoxDescripcionFalla.Text.ToUpper();

            if (ListaFallas.Where(w => w.CodigoFalla == NewCod).Any())
            {
                MessageBox.Show("Ya existe el código " + NewCod, "Agregar Falla", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            if (ListaFallas.Where(w => w.DescripcionFalla == NewFal).Any())
            {
                MessageBox.Show("Ya existe la falla " + NewFal, "Agregar Falla", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            Falla fd = new Falla { CodigoFalla = NewCod, DescripcionFalla = NewFal };
            ListaFallas.Add(fd);
            ListBoxFalla.SelectedItem = fd;
            ListBoxFalla.ScrollIntoView(ListBoxFalla.SelectedItem);
            TextBoxCodigoFalla.Text = "";
            TextBoxDescripcionFalla.Text = "";
        }

        private void ButtonIngresar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                PRDB context = new PRDB();
                Falla selectedfalla = (Falla)ListBoxFalla.SelectedItem;
                foreach (Falla f in ListBoxCategoria.SelectedItems)
                {
                    Falla newfalla = new Falla { CategoriaFalla = f.CategoriaFalla.TrimEnd(), DescripcionCategoria = f.DescripcionCategoria.TrimEnd(), CodigoFalla = selectedfalla.CodigoFalla.TrimEnd(), DescripcionFalla = selectedfalla.DescripcionFalla.TrimEnd() };

                    if (!context.Falla.Where(x => x.CategoriaFalla == newfalla.CategoriaFalla && x.CodigoFalla == newfalla.CodigoFalla).Any())
                    {
                        context.Falla.Add(newfalla);
                        context.SaveChanges();
                    }
                }
                context.Dispose();
                MessageBox.Show("Datos Ingresados!", "FallasEditor", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                LoadItems();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "FallasEditor", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void TextBoxCodigoFalla_PreviewTextInput(object sender, System.Windows.Input.TextCompositionEventArgs e)
        {
            var textBox = sender as TextBox;
            e.Handled = Regex.IsMatch(e.Text, "[^0-9]+");
        }

        private void ButtonLoad_Click(object sender, RoutedEventArgs e)
        {
            using (new WaitCursor())
            {
                if (SimplePing() == false)
                {
                    MessageBox.Show("No se encontró el servidor." + Environment.NewLine + "Revise la conexión con la Base de Datos y reintente.", "Conectando al servidor", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }
                LoadItems();
            }
        }

        public class WaitCursor : IDisposable
        {
            private Cursor _previousCursor;

            public WaitCursor()
            {
                _previousCursor = Mouse.OverrideCursor;

                Mouse.OverrideCursor = Cursors.Wait;
            }

            #region IDisposable Members

            public void Dispose()
            {
                Mouse.OverrideCursor = _previousCursor;
            }

            #endregion
        }

        public static bool SimplePing()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PRDB"].ConnectionString.ToString();
            string ServerIP = connectionString.Between("data source=", ";initial");
            Ping pingSender = new Ping();
            PingReply reply = pingSender.Send(ServerIP);

            if (reply.Status == IPStatus.Success)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}

