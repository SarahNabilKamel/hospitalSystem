using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Hospital
{
    /// <summary>
    /// Interaction logic for sign_up.xaml
    /// </summary>
    public partial class sign_up : Window
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader dreader;
        string connstring = "Data Source=DESKTOP-E04R6SJ/SQLEXPRESS;User ID=hospital;Password=123@123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        public sign_up()
        {
            InitializeComponent();
        }

        private void submit_Click(object sender, RoutedEventArgs e)
        {
           

        }
    }
}
