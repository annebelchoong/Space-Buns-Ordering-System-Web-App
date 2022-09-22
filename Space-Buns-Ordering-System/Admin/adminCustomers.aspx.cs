using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            string strSelect = "";

            strSelect = "Select * from [Custoner] " +
                        "where name = @name";

            SqlCommand cmdSelect;

            cmdSelect = new SqlCommand(strSelect, con);
            cmdSelect.Parameters.AddWithValue("@name", GridView1.SelectedValue.ToString()); ;

            //double dblTotalSales = (double)cmdSelect.ExecuteScalar();


            //lblOldSales.Text =
            //    "Total Sales for Order Id:" + GridView1.SelectedValue.ToString() + " = " + dblTotalSales.ToString("C2");

            con.Close();
        }
    }
}