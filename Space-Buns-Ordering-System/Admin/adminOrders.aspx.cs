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
    public partial class adminOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //con = new SqlConnection(strCon);
            //con.Open();

            //string strSelect = "SELECT* FROM [OrderDetails] WHERE [Order].orderId = @orderId";
            //SqlCommand cmdSelect = new SqlCommand(strSelect, con);
            //cmdSelect.Parameters.AddWithValue("@orderId", GridView1.SelectedValue.ToString());
            //string info = cmdSelect.ExecuteScalar().ToString();


        }
    }
}