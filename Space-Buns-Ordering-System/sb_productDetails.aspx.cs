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
    public partial class sb_productDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                //Response.Redirect("sb_cart.aspx?name=" + e.CommandArgument.ToString());
                //retrieve current user
                String currentUser = currentUsername.ToString();
                String currentProduct = Request.QueryString["name"];
                int qtyEntered = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
                string mealType = ((RadioButtonList)e.Item.FindControl("rblSetSelection")).SelectedValue;
                bool isSetMeal = (mealType == "Set Meal") ? true : false;
                string patties = ((RadioButtonList)e.Item.FindControl("RadioButtonList3")).SelectedItem.Value;
                var a = e.Item.FindControl("Label1") as Label;
                a.Text = patties;
                string sides = ((RadioButtonList)e.Item.FindControl("RadioButtonList2")).SelectedItem.Value;
                string beverage = ((RadioButtonList)e.Item.FindControl("RadioButtonList4")).SelectedItem.Value;
                string sauce = ((RadioButtonList)e.Item.FindControl("RadioButtonList5")).SelectedItem.Value ;

                

                if (currentUser == null)
                {
                    Response.Redirect("sb_login.aspx");
                }
                else
                {

                    /*Add the product into cart database*/
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    // get customer id
                    string custQuery = "SELECT customerId FROM Customer WHERE(name = @customerName)";
                    SqlCommand cmdCust = new SqlCommand(custQuery, con);
                    cmdCust.Parameters.AddWithValue("@customerName", currentUser);
                    var custID = (int)cmdCust.ExecuteScalar();

                    // get selected product details
                    string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
                    SqlCommand cmdProd = new SqlCommand(prodQuery, con);
                    cmdProd.Parameters.AddWithValue("@productName", currentProduct);
                    SqlDataReader product = cmdProd.ExecuteReader();

                    string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);

                    cmd.Parameters.AddWithValue("@productId", product["productID"]);
                    cmd.Parameters.AddWithValue("@picture", product["picture"]);
                    cmd.Parameters.AddWithValue("@productName", product["name"]);
                    cmd.Parameters.AddWithValue("@quantity", qtyEntered);
                    cmd.Parameters.AddWithValue("@customerID", custID);
                    cmd.Parameters.AddWithValue("@isSetMeal", isSetMeal);
                    cmd.Parameters.AddWithValue("@addOnPatties", patties);
                    cmd.Parameters.AddWithValue("@choiceOfSides", sides);
                    cmd.Parameters.AddWithValue("@choiceOfBeverage", beverage);
                    cmd.Parameters.AddWithValue("@addOnSauce", sauce);

                    int insert = cmd.ExecuteNonQuery();
                    if (insert > 0)
                    {
                        Response.Write("Added to Cart!");
                    }
                    else
                    {
                        Response.Write("Ops, unable to add to cart");
                    }

                    con.Close();

                }
            }
            
            }

        protected void btnDecrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity > 1)
            {
                (DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity - 1).ToString();

            }

        }

        protected void btnIncrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity < 99)
            {

                (DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity + 1).ToString();
            }


        }

        protected void btnAddtoCart_onClick(object sender, EventArgs e)
        {

            //retrieve current user
            String currentUser = currentUsername.ToString();
            String currentProduct = Request.QueryString["name"];
            int qtyEntered = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            string mealType = (FindControl("rblSetSelection") as RadioButtonList).SelectedItem.Value;
            bool isSetMeal = (mealType == "Set Meal") ? true : false;
            string patties = rblPatties.SelectedItem.Value ;
            string sides = rblSides.SelectedItem.Value ;
            string beverage = rblBeverage.SelectedItem.Value ;
            string sauce = rblSauce.SelectedItem.Value ;

            lblBeverage.Text = beverage;
            lblPatties.Text = patties;
            lblSides.Text = sides;
            lblSauce.Text = sauce;

            
            


            if (currentUser == null)
            {
                Response.Redirect("sb_login.aspx");
            }
            else
            {

                /*Add the product into cart database*/
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // get customer id
                string custQuery = "SELECT customerId FROM Customer WHERE(name = @customerName)";
                SqlCommand cmdCust = new SqlCommand(custQuery, con);
                cmdCust.Parameters.AddWithValue("@customerName", currentUser);
                var custID = (int)cmdCust.ExecuteScalar();

                // get selected product details
                string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
                SqlCommand cmdProd = new SqlCommand(prodQuery, con);
                cmdProd.Parameters.AddWithValue("@productName", currentProduct);
                SqlDataReader product = cmdProd.ExecuteReader();

                string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);

                cmd.Parameters.AddWithValue("@productId", product["productID"]);
                cmd.Parameters.AddWithValue("@picture", product["picture"]);
                cmd.Parameters.AddWithValue("@productName", product["name"]);
                cmd.Parameters.AddWithValue("@quantity", qtyEntered);
                cmd.Parameters.AddWithValue("@customerID", custID);
                cmd.Parameters.AddWithValue("@isSetMeal", isSetMeal);
                cmd.Parameters.AddWithValue("@addOnPatties", patties);
                cmd.Parameters.AddWithValue("@choiceOfSides", sides);
                cmd.Parameters.AddWithValue("@choiceOfBeverage", beverage);
                cmd.Parameters.AddWithValue("@addOnSauce", sauce);

                int insert = cmd.ExecuteNonQuery();
                if(insert > 0)
                {
                    Response.Write("Added to Cart!");
                    Response.Redirect("sb_menu.aspx");
                }
                else
                {
                    Response.Write("Ops, unable to add to cart");
                }

                con.Close();
            }
        }

            protected void RblSetSelection_SelectedIndexChanged(object sender, EventArgs e)
            {
                //if (IsPostBack)
                //{
                //if (rblSetSelection.SelectedItem.Value == "A Lar Carte")
                //{
                //    //Accordion1.Visible = false;
                //    Pane2.Visible = false;
                //    Pane3.Visible = false;
                //    lblTest.Text = "A Lar Carte is selected";
                //}
                //else
                //{
                //    Pane2.Visible = true;
                //    Pane3.Visible = true;
                //}

                //}
            }

    }
}