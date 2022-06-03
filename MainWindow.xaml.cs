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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Hospital
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader dreader;
        string connstring = "Data Source=DESKTOP-E04R6SJ\\SQLEXPRESS;Initial Catalog=hospital;Integrated Security=true";
        public MainWindow()
        {
            InitializeComponent();
        }

        private void submit_Click(object sender, RoutedEventArgs e)
        {
            conn = new SqlConnection(connstring);
            conn.Open();
            comm = new SqlCommand("select * from manager where email = '"+ usernamebox.Text
                                           +"' and password = '"+ password_login.Password.ToString()+"'", conn);
            try
            {
                dreader = comm.ExecuteReader();
                if (dreader != null)
                {
                    Manager manager = new Manager();
                    manager.Show();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Not Saved");
            }
            finally
            {
                conn.Close();
            }

        }
    }
}
