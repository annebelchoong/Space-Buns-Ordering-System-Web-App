using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System.Drawing;
using System.Diagnostics.Eventing.Reader;

namespace Space_Buns_Ordering_System
{
    public partial class sb_orderHistory : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection
        //        ("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\SpaceBunsDB.MDF;Integrated Security=True");

        //String oId, pId, desc, dId, oStatus, oType;

        //double unitPrice, qty, disc;

        //string sessionId = System.Web.HttpContext.Current.Session.SessionID;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            //get current user details
            String currentUser = currentUsername.ToString();
            con.Open();
            // get customer id
            // issue! always get teh last one 
            string custQuery = "SELECT * FROM Customer WHERE(username = @customerName)";
            SqlCommand cmdCust = new SqlCommand(custQuery, con);
            cmdCust.Parameters.AddWithValue("@customerName", currentUser);
            SqlDataReader cust = cmdCust.ExecuteReader();

            if (cust.HasRows)
            {
                while (cust.Read())
                {
                    lblCustId.Text= cust["customerID"].ToString();
                }

            }
            //// this.gvOrder.GridLines = Color.Black ;


            //if (conn.State == System.Data.ConnectionState.Open)
            //{
            //    conn.Close();
            //}


            //conn.Open();

            //string sID = this.Session.SessionID;

            ////SqlCommand cmd = conn.CreateCommand();

            //SqlCommand cmd;
            ////cmd.CommandType = CommandType.Text;

            //sID = Convert.ToString(1);

            //String sqlCommText = "SELECT * FROM [Order](NOLOCK) A LEFT JOIN [OrderDetails](NOLOCK) B ON A.[orderID] = B.[orderID] WHERE CUSTOMERID = 1";

            ////cmd = new SqlCommand("SELECT * FROM Order WHERE customerID =" + sID + "",conn);
            //cmd = new SqlCommand(sqlCommText, conn);
            //SqlDataReader reader = cmd.ExecuteReader();

            //while (reader.Read())
            //{
            //    //  DataList1.Items(0).findControl("")
            //    oId = reader["orderId"].ToString();
            //    pId = reader["productId"].ToString();
            //    string uPrice = reader["unitPrice"].ToString();
            //    string q = reader["quantity"].ToString();
            //    desc = reader["description"].ToString();
            //    String d = reader["discount"].ToString(); ;
            //    unitPrice = Convert.ToDouble(uPrice);
            //    qty = Convert.ToInt32(q);

            //    if (d == string.Empty)
            //    {
            //        d = "1.00";
            //    }

            //    else
            //    {
            //        disc = Convert.ToDouble(d);
            //    }
            //    oStatus = reader["orderStatus"].ToString();
            //    oType = reader["orderType"].ToString();




            //}



        }

        protected void gvOrder_SelectedIndexChanged(object sender, DataListItemEventArgs e)
        {
            //String oId, pId, desc, dId, oStatus, oType;

            //double unitPrice, qty, disc;

            //// ForeColor = System.Drawing.Color.Red ; 
            //SqlCommand cmd = conn.CreateCommand();

            //cmd.CommandType = CommandType.Text;

            //GridViewRow row = gvOrder.Rows[0];

            //SqlCommand check_Order = new SqlCommand("'SELECT * FROM OrderDetails WHERE OrderId ='" + row);
            //SqlDataReader reader = check_Order.ExecuteReader();

            //while (reader.Read())
            //{
            //    //  DataList1.Items(0).findControl("")
            //    oId = reader["orderId"].ToString();
            //    pId = reader["productId"].ToString();
            //    string uPrice = reader["unitPrice"].ToString();
            //    string q = reader["quantity"].ToString();
            //    desc = reader["descricption"].ToString();
            //    string d = reader["discount"].ToString();
            //    unitPrice = Convert.ToDouble(uPrice);
            //    qty = Convert.ToInt32(q);
            //    disc = Convert.ToDouble(d);


            //}






            //str = DataList1.Items(i).FindControl("Label1").Text;



        }


        protected void gvOrder_RowBoundData(object sender, GridViewRowEventArgs e)

        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[1].BackColor = System.Drawing.Color.Orange;
                e.Row.Cells[2].BackColor = System.Drawing.Color.FloralWhite;
                e.Row.Cells[3].BackColor = System.Drawing.Color.Orange;
                e.Row.Cells[4].BackColor = System.Drawing.Color.FloralWhite;
                e.Row.Cells[5].BackColor = System.Drawing.Color.Orange;
                //e.Row.Cells[6].BackColor = System.Drawing.Color.FloralWhite;
                e.Row.Cells[0].BackColor = System.Drawing.Color.FloralWhite;
                //e.Row.Cells[7].BackColor = System.Drawing.Color.FloralWhite;
                e.Row.Cells[0].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[0].BorderWidth = 1;
                e.Row.Cells[1].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[1].BorderWidth = 1;
                e.Row.Cells[2].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[2].BorderWidth = 1;
                e.Row.Cells[3].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[3].BorderWidth = 1;
                e.Row.Cells[4].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[4].BorderWidth = 1;
                e.Row.Cells[5].BorderColor = System.Drawing.Color.Black;
                e.Row.Cells[5].BorderWidth = 1;
                //e.Row.Cells[6].BorderColor = System.Drawing.Color.Black;
                //e.Row.Cells[6].BorderWidth = 1;

            }


            //  DataTable dt = new DataTable();

        }

    }

}