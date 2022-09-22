using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System
{
    public partial class sb_adminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateTime.Text = DateTime.Now.ToString();

            updateTotalOrders();
            updateTotalSales();
            updateTotalEvents();
            updateTotalProducts();
            updateTotalBranches();
            updateTotalCustomers();
            updateTotalOnline();

        }



        private void updateTotalOrders()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalOrders FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOrders = (int)cmdSearch.ExecuteScalar();
            lblTotalOrders.Text = totalOrders.ToString();

            con.Close();
        }

        private void updateTotalSales()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT SUM(paymentAmount) AS TotalSales FROM[Payment]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            double totalSales = Convert.ToDouble(cmdSearch.ExecuteScalar());
            lblTotalSales.Text = String.Format("{0:C}", totalSales * 100000);

            con.Close();
        }

        private void updateTotalEvents()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalEvents FROM[Event]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalEvents = (int)cmdSearch.ExecuteScalar();
            lblTotalEvents.Text = totalEvents.ToString();

            con.Close();
        }

        private void updateTotalProducts()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalProducts FROM[Product]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalProducts = (int)cmdSearch.ExecuteScalar();
            lblTotalProducts.Text = totalProducts.ToString();

            con.Close();
        }

        private void updateTotalBranches()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalBranches FROM[Branch]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalBranches = (int)cmdSearch.ExecuteScalar();
            lblTotalBranches.Text = totalBranches.ToString();

            con.Close();
        }

        private void updateTotalCustomers()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalCustomers FROM[Customer]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalCustomers = (int)cmdSearch.ExecuteScalar();
            lblTotalCustomers.Text = totalCustomers.ToString();

            con.Close();
        }

        private void updateTotalOnline()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS TotalOnline FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOnline = (int)cmdSearch.ExecuteScalar();
            lblTotalOnline.Text = totalOnline.ToString();

            con.Close();
        }

    }
}