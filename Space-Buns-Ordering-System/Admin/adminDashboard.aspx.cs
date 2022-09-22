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
            lblDisplayDate.Text = "You log on to our site on " + Session["Time"].ToString();
            lblCount.Text = "There are " + Application["intVisitors"].ToString() + " user(s) online.";

            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            updateTotalOrders(con);
            updateTotalSales(con);
            updateTotalEvents(con);
            updateTotalProducts(con);
            updateTotalBranches(con);
            updateTotalCustomers(con);
            updateTotalOnline(con);

            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        private void updateTotalOrders(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalOrders FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOrders = (int)cmdSearch.ExecuteScalar();
            lblTotalOrders.Text = totalOrders.ToString();
        }

        private void updateTotalSales(SqlConnection con)
        {
            string strSearch = "SELECT SUM(paymentAmount) AS TotalSales FROM[Payment]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            double totalSales = Convert.ToDouble(cmdSearch.ExecuteScalar());
            lblTotalSales.Text = String.Format("{0:C}", totalSales * 2000);
        }

        private void updateTotalEvents(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalEvents FROM[Event]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalEvents = (int)cmdSearch.ExecuteScalar();
            lblTotalEvents.Text = totalEvents.ToString();
        }

        private void updateTotalProducts(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalProducts FROM[Product]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalProducts = (int)cmdSearch.ExecuteScalar();
            lblTotalProducts.Text = totalProducts.ToString();
        }

        private void updateTotalBranches(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalBranches FROM[Branch]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalBranches = (int)cmdSearch.ExecuteScalar();
            lblTotalBranches.Text = totalBranches.ToString();
        }

        private void updateTotalCustomers(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalCustomers FROM[Customer]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalCustomers = (int)cmdSearch.ExecuteScalar();
            lblTotalCustomers.Text = totalCustomers.ToString();
        }

        private void updateTotalOnline(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalOnline FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOnline = (int)cmdSearch.ExecuteScalar();
            lblTotalOnline.Text = totalOnline.ToString();
        }

    }
}