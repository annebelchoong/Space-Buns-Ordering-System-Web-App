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
    public partial class sb_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ListItem> items = new List<ListItem>();
            for (int i = 0; i < 3; i++)
            {
                items.Add(new ListItem(DateTime.Now.AddDays(i).ToLongDateString()));
            }
            ddlDates.DataSource = items;
            ddlDates.DataBind();

            if (!Page.IsPostBack)
            {
                BindTime();
            }
        }
        private void BindTime()
        {
            // Set the start time (00:00 means 12:00 AM)
            string s = DateTime.Now.ToString("HH:mm");
            DateTime StartTime = DateTime.ParseExact(s, "HH:mm", null);
            // Set the end time (23:55 means 11:55 PM)
            DateTime EndTime = DateTime.ParseExact("23:55", "HH:mm", null);
            //Set 15 minutes interval
            TimeSpan Interval = new TimeSpan(0, 15, 0);
            //To set 1 hour interval
            //TimeSpan Interval = new TimeSpan(1, 0, 0);           
            ddlTime.Items.Clear();
            while (StartTime <= EndTime)
            {
                ddlTime.Items.Add(StartTime.ToShortTimeString());
                StartTime = StartTime.Add(Interval);
            }
            ddlTime.Items.Insert(0, new ListItem("--Select--", "0"));
            //ddlTime.Items.Add(DateTime.Now.ToShortTimeString());


            //string ktr, mtr;
            //for (int k = 0; k < 24; k++)
            //{
            //    for (int m = 0; m < 60; m++)
            //    {
            //        if (k < 10)
            //        {
            //            ktr = "0" + k.ToString();
            //        }
            //        else
            //        {
            //            ktr = k.ToString();
            //        }
            //        if (m < 10)
            //        {
            //            mtr = "0" + m.ToString();
            //        }
            //        else
            //        {
            //            mtr = m.ToString();
            //        }
            //        ddlTime.Items.Add(new ListItem(ktr + ":" + mtr));
            //    }
            //}
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            var currentUserId = "";
            var orderID = GenerateID();
            lblOrderID.Text = orderID;

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
                    currentUserId = cust["customerID"].ToString();
                }

            }


            con.Close();
            if (e.CommandName == "btnSelectBranch")
            {
                con.Open();
                // create a new order in order table

                // get branch id upon selection 
                var branchId = (e.Item.FindControl("lblBranchID") as Label).Text.ToString();
                var orderStatus = "Pending";
                var orderType = "Delivery"; // check which button selected 

                string orderQuery = "INSERT INTO [Order] (orderID, customerID, dateTime, orderStatus, orderType, note, branchID, isActive) VALUES (@orderID, @custID, @dateTime, @orderStatus, @orderType, @note, @branchID, @isActive)";
                SqlCommand cmdOrder = new SqlCommand(orderQuery, con);
                cmdOrder.Parameters.AddWithValue("@custID", currentUserId);
                cmdOrder.Parameters.AddWithValue("@orderID", orderID);
                cmdOrder.Parameters.AddWithValue("@dateTime", DateTime.Now);
                cmdOrder.Parameters.AddWithValue("@orderStatus", orderStatus);
                cmdOrder.Parameters.AddWithValue("@orderType", orderType);
                cmdOrder.Parameters.AddWithValue("@note", DBNull.Value);
                cmdOrder.Parameters.AddWithValue("@branchID", branchId);
                cmdOrder.Parameters.AddWithValue("@isActive", "True");



                int insertOrder = cmdOrder.ExecuteNonQuery();

                if (insertOrder > 0)
                {
                    Response.Write("Added!");
                }
                else
                {
                    Response.Write("Oops!");
                }



                con.Close();
                ModalPopupExtender1.Show();
            }
        }
        public static string GenerateID()
        {
            Random random = new Random();
            string id = random.Next(0, 1000000).ToString("D6");
            return id;
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            var currentUserId = "";

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
                    currentUserId = cust["customerID"].ToString();
                }

            }


            con.Close();

            // update the datetime
            con.Open();
            var orderID = lblOrderID.Text;
            var date = ddlDates.SelectedItem.Value;
            var time = ddlTime.SelectedItem.Value;
            DateTime dateTime = DateTime.Parse(date + time);

            string orderQuery = "UPDATE [Order] SET dateTime = @dateTime WHERE(customerID = @custId) AND(orderID = @orderID)";
            SqlCommand cmdOrder = new SqlCommand(orderQuery, con);
            cmdOrder.Parameters.AddWithValue("@custID", currentUserId);
            cmdOrder.Parameters.AddWithValue("@orderID", orderID);
            cmdOrder.Parameters.AddWithValue("@dateTime", dateTime);

            int insertOrder = cmdOrder.ExecuteNonQuery();

            if (insertOrder > 0)
            {
                Response.Write("update time!");
            }
            else
            {
                Response.Write("Oops!");
            }



            con.Close();
        }
    }
}