﻿using Stripe.Checkout;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class sb_orderConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            
       
            var currentUserId = "";

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

            var prodId = "";
            var prodName = "";
            var prodPrice = "";
            var prodQty = "";
            var desc= "";
            var pic = "";
            var orderID = 0;

            // retrieve orderID 
            con.Open();
            // get customer id
            string orderQuery = "SELECT * FROM [Order] WHERE(customerID = @custID) AND (isActive = 1)";
            SqlCommand cmdOrder = new SqlCommand(orderQuery, con);
            cmdOrder.Parameters.AddWithValue("@custID", currentUserId);
            SqlDataReader order = cmdOrder.ExecuteReader();

            if (order.HasRows)
            {
                while (order.Read())
                {
                    orderID = Convert.ToInt32(order["orderID"].ToString());
                }

            }
            con.Close();


            List<OrderDetailsItem> items = new List<OrderDetailsItem>();

            // get cart items
            con.Open();
            // get customer id
            string cartQuery = "SELECT * FROM Cart WHERE(customerID = @custID)";
            SqlCommand cmdCart = new SqlCommand(cartQuery, con);
            cmdCart.Parameters.AddWithValue("@custID", currentUserId);
            SqlDataReader cart = cmdCart.ExecuteReader();

            if (cart.HasRows)
            {
                while (cart.Read())
                {

                    var setMeal = cart["isSetMeal"].ToString() == "True" ? "Set Meal" : "A Lar Carte";
                    prodId = cart["productID"].ToString();
                    prodQty = cart["quantity"].ToString();
                    prodName = cart["productName"].ToString();
                    prodPrice = cart["price"].ToString();
                    desc = cart["isSetMeal"].ToString() == "True" ?
                        setMeal + "," + cart["addOnPatties"].ToString() + "," + cart["choiceOfSides"].ToString() + "," + cart["choiceOfBeverage"].ToString() + "," + cart["addOnSauce"].ToString() :
                        setMeal + "," + cart["addOnPatties"].ToString() + "," + cart["addOnSauce"].ToString();
                    pic = cart["picture"].ToString();

                    //items.Add(new OrderDetailsItem(2, "boo", 23, 3, "apple pe", "asdfasdfasdf", 17));

                    items.Add(new OrderDetailsItem(Convert.ToInt32(prodId), prodName, Convert.ToDouble(prodPrice), Convert.ToInt32(prodQty), desc, pic, Convert.ToInt32(currentUserId)));
                }

            }
            con.Close();

            // add create order id and add details from cart to order details table
            con.Open();
            foreach(var lineItems in items)
            {
                string orderDetailQuery = "INSERT INTO OrderDetails( orderID, productID, customerID, productName, price, quantity, picture, description) VALUES (@orderID, @prodID,  @custID, @prodName, @prodPrice, @prodQty, @prodPic, @desc )";
                SqlCommand cmdOrderDetail = new SqlCommand(orderDetailQuery, con);
                cmdOrderDetail.Parameters.AddWithValue("@custID", lineItems.custId);
                cmdOrderDetail.Parameters.AddWithValue("@orderID", orderID);
                cmdOrderDetail.Parameters.AddWithValue("@prodID", lineItems.prodId);
                cmdOrderDetail.Parameters.AddWithValue("@prodName", lineItems.prodName.ToString());
                cmdOrderDetail.Parameters.AddWithValue("@prodPrice", lineItems.prodPrice);
                cmdOrderDetail.Parameters.AddWithValue("@prodQty", lineItems.prodQty);
                cmdOrderDetail.Parameters.AddWithValue("@desc", lineItems.desc);
                cmdOrderDetail.Parameters.AddWithValue("@prodPic", lineItems.pic);

                int insertOD = cmdOrderDetail.ExecuteNonQuery();

                if (insertOD > 0)
                {
                    Response.Write("Added!");
                }
                else
                {
                    Response.Write("Oops!");
                }
            }

            con.Close();


            // read from order details table based on the order id
            lblOrderID.Text = orderID.ToString();

            con.Open();
            string countQuery = "SELECT COUNT(*) FROM OrderDetails WHERE(customerId = @custId)";
            SqlCommand cmdCount = new SqlCommand(countQuery, con);
            cmdCount.Parameters.AddWithValue("@custId", currentUserId);
            int count = Convert.ToInt32(cmdCount.ExecuteScalar());

            lblDataNum.Text = count.ToString();

            con.Close();

            if (lblDataNum.Text != "0")
            {
                // calculate the sum of the total price of the items in the cart
                con.Open();
                string sumQuery = "SELECT SUM(price) FROM OrderDetails WHERE(customerId = @custId)";
                SqlCommand cmdSum = new SqlCommand(sumQuery, con);
                cmdSum.Parameters.AddWithValue("@custId", currentUserId);
                double sum = Convert.ToDouble(cmdSum.ExecuteScalar());

                lblDataTotal.Text = sum.ToString("C2");

                con.Close();
            }
            else
            {
                lblDataTotal.Text = "RM 0.00";

            }

            // create a update the isactive to false in order table
            con.Open();


            string updateOrderQuery = "UPDATE [Order] SET isActive = 0 WHERE(customerID = @custId) AND(orderID = @orderID)";
            SqlCommand cmdOrderUpdate = new SqlCommand(updateOrderQuery, con);
            cmdOrderUpdate.Parameters.AddWithValue("@custID", currentUserId);
            cmdOrderUpdate.Parameters.AddWithValue("@orderID", orderID);


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

            // delete from cart
            con.Open();
            string deleteQuery = "DELETE FROM Cart WHERE(customerID = @custId)";
            SqlCommand cmdDelete = new SqlCommand(deleteQuery, con);
            cmdDelete.Parameters.AddWithValue("@custId", currentUserId);

            int delete = cmdDelete.ExecuteNonQuery();
            if (delete > 0)
            {
                //lblCustId.Text = "insert";
                // try to change to make a dialog
                Response.Write("Deleted!");
                Response.Redirect("sb_index.aspx");
            }
            else
            {
                Response.Write("Ops, unable to delete from cart");
            }
            con.Close();

        }
        // a function to auto generate id
        public static string GenerateID()
        {
            Random random = new Random();
            string id = random.Next(0, 1000000).ToString("D6");
            return id ;
        }

    }

    public class OrderDetailsItem
    {
        public int custId;
        public int prodId;
        public String prodName;
        public double prodPrice;
        public int prodQty;
        public String desc;
        public String pic;
        public OrderDetailsItem() { }

        public OrderDetailsItem( int prodId, String prodName, double prodPrice, int prodQty, String desc, String pic, int custId)
        {
            this.prodId = prodId;
            this.prodName = prodName;
            this.prodPrice = prodPrice;
            this.prodQty = prodQty;
            this.desc = desc;
            this.pic = pic;
            this.custId = custId;
        }
    }
}