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
    public partial class sb_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            string strSelect = "";

            strSelect = "Select * from [Customer] where name like '%'+@name+'%' ";
                        

                        //"Select SUM((UnitPrice * Quantity)* (1-Discount)) as TotalSales " +
                        //    "from [Order Details] Inner Join Orders " +
                        //    "On [Order Details].OrderID = Orders.OrderID  " +
                        //    "Where Orders.EmployeeID = @empID and YEAR(Orders.OrderDate) = @y";

            SqlCommand cmdSelect;

            cmdSelect = new SqlCommand(strSelect, con);
            cmdSelect.Parameters.AddWithValue("name", txtSearch.Text);
            //cmdSelect.Parameters.AddWithValue("@y", rblYear.SelectedValue.ToString());

            //double dblTotalSales = (double)cmdSelect.ExecuteScalar();


            //lblTitleGridView.Text =
            //    "Sales Order by " + ddlStaff.SelectedValue + " in the year of " + rblYear.SelectedValue + ". Grand Total Sales: " + dblTotalSales.ToString("C");

            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            //string strSelect = "";

            //strSelect = "Select SUM((UnitPrice * Quantity)* (1-Discount)) as TotalSales " +
            //            "from [Order Details] " +
            //            "where OrderID = @OID";

            SqlCommand cmdSelect;

            //cmdSelect = new SqlCommand(strSelect, con);
            //cmdSelect.Parameters.AddWithValue("@OID", GridView1.SelectedValue.ToString()); ;

            //double dblTotalSales = (double)cmdSelect.ExecuteScalar();


            //lblOldSales.Text =
            //    "Total Sales for Order Id:" + GridView1.SelectedValue.ToString() + " = " + dblTotalSales.ToString("C2");

            con.Close();
        }
    }
}