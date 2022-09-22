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

            UpdateTotalSales(con);
            UpdateTotalOrders(con);
            UpdateTotalEvents(con);
            UpdateTotalProducts(con);
            UpdateTotalBranches(con);
            UpdateTotalCustomers(con);
            UpdateTotalOnline(con);

            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        private void UpdateTotalSales(SqlConnection con)
        {
            string strSearch = "SELECT SUM(paymentAmount) AS TotalSales FROM[Payment]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            double totalSales = Convert.ToDouble(cmdSearch.ExecuteScalar());
            lblTotalSales.Text = String.Format("{0:C}", totalSales * 2000);
        }

        private void UpdateTotalOrders(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalOrders FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOrders = (int)cmdSearch.ExecuteScalar();
            lblTotalOrders.Text = totalOrders.ToString();
        }

        private void UpdateTotalEvents(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalEvents FROM[Event]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalEvents = (int)cmdSearch.ExecuteScalar();
            lblTotalEvents.Text = totalEvents.ToString();
        }

        private void UpdateTotalProducts(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalProducts FROM[Product]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalProducts = (int)cmdSearch.ExecuteScalar();
            lblTotalProducts.Text = totalProducts.ToString();
        }

        private void UpdateTotalBranches(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalBranches FROM[Branch]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalBranches = (int)cmdSearch.ExecuteScalar();
            lblTotalBranches.Text = totalBranches.ToString();
        }

        private void UpdateTotalCustomers(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalCustomers FROM[Customer]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalCustomers = (int)cmdSearch.ExecuteScalar();
            lblTotalCustomers.Text = totalCustomers.ToString();
        }

        private void UpdateTotalOnline(SqlConnection con)
        {
            string strSearch = "SELECT COUNT(*) AS TotalOnline FROM[Order]";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int totalOnline = (int)cmdSearch.ExecuteScalar();
            lblTotalOnline.Text = totalOnline.ToString();
        }

    }
}