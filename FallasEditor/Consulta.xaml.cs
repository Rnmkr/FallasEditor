using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using FallasEditor.DataAccessLayer;

namespace FallasEditor
{
    /// <summary>
    /// Interaction logic for Consulta.xaml
    /// </summary>
    public partial class Consulta : Window
    {
        public Consulta(string keyword)
        {
            InitializeComponent();
            PRDB context = new PRDB();
            var list = context.Falla.Where(w => w.CategoriaFalla == keyword).Select(s => s).ToList();
            DataGrid.ItemsSource = list;
            context.Dispose();
        }
    }
}
