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
            // check if user is logged in
            //if (User.Identity.IsAuthenticated)
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                //retrieve current user

                String currentUser = currentUsername.ToString();
                String currentProduct = Request.QueryString["name"];


                /*Add the product into cart database*/
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // get customer id
                string custQuery = "SELECT * FROM Customer WHERE(username = @customerName)";
                SqlCommand cmdCust = new SqlCommand(custQuery, con);
                cmdCust.Parameters.AddWithValue("@customerName", currentUser);
                SqlDataReader cust = cmdCust.ExecuteReader();

                if (cust.HasRows)
                {
                    while (cust.Read())
                    {
                        lblCustId.Text = cust["customerId"].ToString();


                    }

                }

                con.Close();
                con.Open();

                //get selected product details
                string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
                SqlCommand cmdProd = new SqlCommand(prodQuery, con);
                cmdProd.Parameters.AddWithValue("@productName", currentProduct);
                SqlDataReader product = cmdProd.ExecuteReader();


                if (product.HasRows)
                {
                    while (product.Read())
                    {

                        
                        lblProduct.Text = product["name"].ToString();
                        lblProductName.Text = product["name"].ToString();
                        imgProduct.ImageUrl = product["picture"].ToString();
                        lblPrice.Text = product["unitPrice"].ToString();
                        lblDescription.Text = product["description"].ToString();

                    }

                }
                con.Close();
            }
            else
            {
                Response.Redirect("sb_login.aspx");
            }
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (e.CommandName == "Add")
            //{
            //    //Response.Redirect("sb_cart.aspx?name=" + e.CommandArgument.ToString());
            //    //retrieve current user
            //    String currentUser = currentUsername.ToString();
            //    String currentProduct = Request.QueryString["name"];
            //    int qtyEntered = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            //    string mealType = ((RadioButtonList)e.Item.FindControl("rblSetSelection")).SelectedValue;
            //    bool isSetMeal = (mealType == "Set Meal") ? true : false;
            //    string patties = ((RadioButtonList)e.Item.FindControl("RadioButtonList3")).SelectedItem.Value;
            //    var a = e.Item.FindControl("Label1") as Label;
            //    a.Text = patties;
            //    string sides = ((RadioButtonList)e.Item.FindControl("RadioButtonList2")).SelectedItem.Value;
            //    string beverage = ((RadioButtonList)e.Item.FindControl("RadioButtonList4")).SelectedItem.Value;
            //    string sauce = ((RadioButtonList)e.Item.FindControl("RadioButtonList5")).SelectedItem.Value ;

                

            //    if (currentUser == null)
            //    {
            //        Response.Redirect("sb_login.aspx");
            //    }
            //    else
            //    {

            //        /*Add the product into cart database*/
            //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //        con.Open();

            //        // get customer id
            //        string custQuery = "SELECT customerId FROM Customer WHERE(name = @customerName)";
            //        SqlCommand cmdCust = new SqlCommand(custQuery, con);
            //        cmdCust.Parameters.AddWithValue("@customerName", currentUser);
            //        var custID = (int)cmdCust.ExecuteScalar();

            //        // get selected product details
            //        string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
            //        SqlCommand cmdProd = new SqlCommand(prodQuery, con);
            //        cmdProd.Parameters.AddWithValue("@productName", currentProduct);
            //        SqlDataReader product = cmdProd.ExecuteReader();

            //        string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
            //        SqlCommand cmd = new SqlCommand(insertQuery, con);

            //        cmd.Parameters.AddWithValue("@productId", product["productID"]);
            //        cmd.Parameters.AddWithValue("@picture", product["picture"]);
            //        cmd.Parameters.AddWithValue("@productName", product["name"]);
            //        cmd.Parameters.AddWithValue("@quantity", qtyEntered);
            //        cmd.Parameters.AddWithValue("@customerID", custID);
            //        cmd.Parameters.AddWithValue("@isSetMeal", isSetMeal);
            //        cmd.Parameters.AddWithValue("@addOnPatties", patties);
            //        cmd.Parameters.AddWithValue("@choiceOfSides", sides);
            //        cmd.Parameters.AddWithValue("@choiceOfBeverage", beverage);
            //        cmd.Parameters.AddWithValue("@addOnSauce", sauce);

            //        int insert = cmd.ExecuteNonQuery();
            //        if (insert > 0)
            //        {
            //            Response.Write("Added to Cart!");
            //        }
            //        else
            //        {
            //            Response.Write("Ops, unable to add to cart");
            //        }

            //        con.Close();

            //    }
            //}
            
            }

        protected void btnDecrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32(txtQuantity.Text);
            if (quantity > 1)
            {
                //(DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity - 1).ToString();
                txtQuantity.Text = (quantity-1).ToString();

            }

        }

        protected void btnIncrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32(txtQuantity.Text);
            if (quantity < 99)
            {

                //(DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity + 1).ToString();
                txtQuantity.Text = (quantity + 1).ToString();
            }


        }

        protected void btnAddtoCart_onClick(object sender, EventArgs e)
        {

            // check if user is logged in
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                //retrieve current user

                String currentUser = currentUsername.ToString();
                String currentProduct = Request.QueryString["name"];
            
                int qtyEntered = Convert.ToInt32(txtQuantity.Text);
                string mealType = rblSetSelection.SelectedItem.Value;
                bool isSetMeal = (mealType == "Set Meal") ? true : false;
                string patties = rblPatties.SelectedItem.Value;
                string sides = rblSides.SelectedItem.Value;
                string beverage = rblBeverage.SelectedItem.Value;
                string sauce = rblSauce.SelectedItem.Value;

                string custId = "";
                string prodId = "";
                string prodName = "";
                string prodPic = "";


                lblBeverage.Text = beverage;
                lblPatties.Text = patties;
                lblSides.Text = sides;
                lblSauce.Text = sauce;

                /*Add the product into cart database*/
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // get customer id
                string custQuery = "SELECT * FROM Customer WHERE(username = @customerName)";
                SqlCommand cmdCust = new SqlCommand(custQuery, con);
                cmdCust.Parameters.AddWithValue("@customerName", currentUser);
                SqlDataReader cust = cmdCust.ExecuteReader();

                if (cust.HasRows)
                {
                    while (cust.Read())
                    {
                        lblCustId.Text = cust["customerId"].ToString();


                    }

                }

                con.Close();
                con.Open();

                //get selected product details
                string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
                SqlCommand cmdProd = new SqlCommand(prodQuery, con);
                cmdProd.Parameters.AddWithValue("@productName", currentProduct);
                SqlDataReader product = cmdProd.ExecuteReader();


                if (product.HasRows)
                {
                    while (product.Read())
                    {

                        lblProductID.Text = product["productID"].ToString();
                        lblProductName.Text = product["name"].ToString();
                        lblProductImage.Text = product["picture"].ToString();
                        lblUnitPrice.Text = product["unitPrice"].ToString();

                    }

                }
                con.Close();
                con.Open();
                // check if the product is already in the cart if yes then update the quantity and the price only

                string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                double totalPrice = Convert.ToDouble(txtQuantity.Text) * Convert.ToDouble(lblUnitPrice.Text);

                cmd.Parameters.AddWithValue("@productId", lblProductID.Text );
                cmd.Parameters.AddWithValue("@picture", lblProductImage.Text);
                cmd.Parameters.AddWithValue("@productName", lblProductName.Text);
                cmd.Parameters.AddWithValue("@quantity", qtyEntered);
                cmd.Parameters.AddWithValue("@customerID", Convert.ToInt32(lblCustId.Text));
                cmd.Parameters.AddWithValue("@isSetMeal", isSetMeal);
                cmd.Parameters.AddWithValue("@addOnPatties", patties);
                cmd.Parameters.AddWithValue("@choiceOfSides", sides);
                cmd.Parameters.AddWithValue("@choiceOfBeverage", beverage);
                cmd.Parameters.AddWithValue("@addOnSauce", sauce);
                cmd.Parameters.AddWithValue("@price", totalPrice);

                int insert = cmd.ExecuteNonQuery();
                con.Close();
                if (insert > 0)
                {
                    lblCustId.Text = "insert";
                    Response.Write("Added to Cart!");
                    Response.Redirect("sb_menu.aspx");
                }
                else
                {
                    Response.Write("Ops, unable to add to cart");
                }



            }
            else
            {
                Response.Redirect("sb_login.aspx");
            }


        }

            protected void RblSetSelection_SelectedIndexChanged(object sender, EventArgs e)
            {
            //if (IsPostBack)
            //{
            if (rblSetSelection.SelectedItem.Value == "A Lar Carte")
            {
                //Accordion1.Visible = false;
                Pane2.Visible = false;
                Pane3.Visible = false;
                //lblTest.Text = "A Lar Carte is selected";
            }
            else
            {
                Pane2.Visible = true;
                Pane3.Visible = true;
            }

            //}
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //string testWord = rblTest.SelectedItem.Value;
            //lblTest.Text = testWord;
            //string mealType = rblSetSelection.SelectedItem.Value;
            //bool isSetMeal = (mealType == "Set Meal") ? true : false;
            //lblSetMealBool.Text = isSetMeal.ToString();
            //lblMealType.Text = mealType;

            //String currentUser = currentUsername.ToString();

            //string patties = rblPatties.SelectedItem.Value;
            //string sides = rblSides.SelectedItem.Value;
            //string beverage = rblBeverage.SelectedItem.Value;
            //string sauce = rblSauce.SelectedItem.Value;

            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {

                String currentUser = currentUsername.ToString();
                String currentProduct = Request.QueryString["name"];

                /*Add the product into cart database*/
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                // get customer id
                string custQuery = "SELECT * FROM Customer WHERE(username = @customerName)";
                SqlCommand cmdCust = new SqlCommand(custQuery, con);
                cmdCust.Parameters.AddWithValue("@customerName", currentUser);
                SqlDataReader cust = cmdCust.ExecuteReader();



                //string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
                //SqlCommand cmd = new SqlCommand(insertQuery, con);



                if (cust.HasRows)
                {
                    while (cust.Read())
                    {
                        lblCustId.Text = cust["name"].ToString();


                    }

                }

                con.Close();
                con.Open();

                //get selected product details
                string prodQuery = "SELECT productID, name, picture, quantity, unitPrice, description FROM Product WHERE(name = @productName)";
                SqlCommand cmdProd = new SqlCommand(prodQuery, con);
                cmdProd.Parameters.AddWithValue("@productName", currentProduct);
                SqlDataReader product = cmdProd.ExecuteReader();


                if (product.HasRows)
                {
                    while (product.Read())
                    {
                        lblProductID.Text = product["productID"].ToString();
                        lblProductName.Text = product["name"].ToString();
                        lblProductImage.Text = product["picture"].ToString();

                    }

                }
                con.Close();
                con.Open();
                string insertQuery = "INSERT INTO Cart(productID, quantity, price, picture, productName, customerID, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce) VALUES(@productID, @quantity, @price, @picture, @productName, @customerID, @isSetMeal, @addOnPatties, @choiceOfSides, @choiceOfBeverage, @addOnSauce)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);


                con.Close();


            }
            else
            {
                Response.Redirect("sb_login.aspx");
            }

            //lblBeverage.Text = beverage;
            //lblPatties.Text = patties;
            //lblSides.Text = sides;
            //lblSauce.Text = sauce;
            //lblProductID.Text = product["productID"].ToString();
            //lblProductName.Text = product["name"].ToString();
            //lblProductImage.Text = product["picture"].ToString();


        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {

        }
    }
}