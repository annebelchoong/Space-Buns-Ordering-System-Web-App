using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe;
using Stripe.Checkout;
using System.Data.SqlClient;
using System.Configuration;
using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System.Drawing;

namespace Space_Buns_Ordering_System
{
    public partial class sb_master : System.Web.UI.MasterPage
    {
        public string sessionId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //int cartItems = GetCartCount();
            //Cart_Checkout(cartItems);
            Cart_Checkout();

            // cart items

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            // get customer id based on the current user
            String currentUser = currentUsername.ToString();
            

            // if no user show empty
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                lblNumOfItems.Text = "0";
                lblNoItem.Text = "Not login";
                lblFinalAmount.Text = "RM 0.00";
                lblCustId.Text = "";
            }
            else
            {
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
                        lblCustId.Text = cust["customerId"].ToString();


                    }

                }


                con.Close();

                //need to have one query to check the total item in the cart for the current user

                con.Open();
                string countQuery = "SELECT COUNT(*) FROM Cart WHERE(customerId = @custId)";
                SqlCommand cmdCount = new SqlCommand(countQuery, con);
                cmdCount.Parameters.AddWithValue("@custId", lblCustId.Text);
                int count = Convert.ToInt32(cmdCount.ExecuteScalar());

                lblNumOfItems.Text = count.ToString();

                con.Close();

                if (lblNumOfItems.Text != "0")
                {
                    // calculate the sum of the total price of the items in the cart
                    con.Open();
                    string sumQuery = "SELECT SUM(price) FROM Cart WHERE(customerId = @custId)";
                    SqlCommand cmdSum = new SqlCommand(sumQuery, con);
                    cmdSum.Parameters.AddWithValue("@custId", lblCustId.Text);
                    double sum = Convert.ToDouble(cmdSum.ExecuteScalar());

                    lblFinalAmount.Text = sum.ToString("C2");

                    con.Close();
                    btnCheckout.Enabled = true;
                }
                else
                {
                    lblNoItem.Text = "Your Cart is Empty! ";
                    lblFinalAmount.Text = "RM 0.00";
                    btnCheckout.Enabled = false;
                    btnCheckout.BackColor = Color.Gray;
                    btnCheckout.ForeColor = Color.White;
                    btnCheckout.BorderColor = Color.Gray;

                }



                //   foreach(RepeaterItem item in Repeater1.Items)
                //{        
                //   Label1.Text += item.ItemIndex.ToString() + " - " +
                //                  ((DataBoundLiteralControl)item.Controls[0]).Text +
                //                  "<br />";
                //}

               

            }

    }

        private int GetCartCount()
        {
            //Create connection
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //con = new SqlConnection(strCon);
            ////open connection
            //con.Open();

            //string strSearch = "SELECT COUNT(*) AS CartCount FROM[OrderDetails] WHERE OrderId = 2 ";

            //SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            //int cartItems = (int)cmdSearch.ExecuteScalar();
            //con.Close();
            //return cartItems;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            int cartCount = 0;
            con.Open();
            string countQuery = "SELECT COUNT(*) FROM Cart WHERE(customerId = @custId)";
            SqlCommand cmdCount = new SqlCommand(countQuery, con);
            cmdCount.Parameters.AddWithValue("@custId", lblCustId.Text);
            int count = Convert.ToInt32(cmdCount.ExecuteScalar());

            con.Close();
            return cartCount;
            //lblTotalOrders.Text = totalOrders.ToString();
        }

        private SessionLineItemOptions GetCartLineItem(CartItem cartItem)
        {
            long unitAmount;
                int quantity;
            String name;
            String description;
            String imgPath;

            //CartItems cartItem;

            unitAmount = cartItem.unitPrice;
            quantity = cartItem.quantity;
            name = cartItem.productName;
            description = cartItem.addOnsDescription;
            imgPath = cartItem.imgPath;


            return new SessionLineItemOptions
            {
                PriceData = new SessionLineItemPriceDataOptions
                {
                    Currency = "myr",
                    UnitAmount = unitAmount * 100,
                    ProductData = new SessionLineItemPriceDataProductDataOptions
                    {
                        Name = name,
                        Description = description,
                        Images = new List<string>() {
                                    imgPath
                                 },
                    },

                },
                Quantity = quantity,
            };

        }

        private List<SessionLineItemOptions> getLineItemsFromCart()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            var currentUserEmail = "";
            var currentUserName = "";
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
                    currentUserEmail = cust["email"].ToString();
                    currentUserName = cust["name"].ToString();
                    currentUserId = cust["customerID"].ToString();
                }

            }


            con.Close();

            List<SessionLineItemOptions> LineItems = new List<SessionLineItemOptions> { };

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
                    // if issetmeal is true, then print set meal
                    var setMeal = cart["isSetMeal"].ToString() == "True" ? "Set Meal" : "A Lar Carte";
                    var descrip = cart["isSetMeal"].ToString() == "True" ?
                        setMeal + "," + cart["addOnPatties"].ToString() + "," + cart["choiceOfSides"].ToString() + "," + cart["choiceOfBeverage"].ToString() + "," + cart["addOnSauce"].ToString() :
                        setMeal + "," + cart["addOnPatties"].ToString() + "," + cart["addOnSauce"].ToString();
                    //var productName = cart["productName"].ToString();
                    //var unitPrice = (Convert.ToInt64(cart["price"]) / Convert.ToInt64(cart["quantity"]));
                    //var quantity = Convert.ToInt64(cart["quantity"]);
                    //var desc = cart["addOnPatties"].ToString() + ", " + cart["choiceOfSides"].ToString() + ", " + cart["choiceOfBeverage"].ToString() + ", " + cart["addOnSauce"].ToString();
                    var pic = cart["picture"].ToString().Replace("~", "");

                    LineItems.Add(GetCartLineItem(new CartItem(cart["productName"].ToString(), (Convert.ToInt64(cart["price"]) / Convert.ToInt64(cart["quantity"])), Convert.ToInt32(cart["quantity"]), descrip, "https://spacebuns.web.app"+ pic)));
                }

            }
            else
            {
                LineItems.Add(GetCartLineItem(new CartItem("defult name", 200, 1, "default description", "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg")));
            }
            con.Close();

            return LineItems;
        }

        private List<SessionLineItemOptions> defaultLineItem()
        {
            

            List<SessionLineItemOptions> LineItems = new List<SessionLineItemOptions> { };

            LineItems.Add(GetCartLineItem(new CartItem("defult name", 200, 1, "default description", "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg")));


            return LineItems;
        }

        //private void Cart_Checkout(int cartItems)
        private void Cart_Checkout()
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            // create Checkout session and set `sessionId`
            StripeConfiguration.ApiKey = "sk_test_51LWbMdCffsYKlOgZcf695lczfzE5jnrUdc6sX7abxQzwNj4jxRRqpWsGITmV76JO2rGHxHcGHDn4SMXTDaHrlXUF001T6K47cb";


            //GetCartLineItem(cartItems);
            List<SessionLineItemOptions> CartLineItems = new List<SessionLineItemOptions> { };
            //CartLineItems.Add(GetCartLineItem(new CartItem("lousy burger", 15, 2, "extra 2 patties", "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg")));
            //CartLineItems.Add(GetCartLineItem(new CartItem("awesome burger", 16, 3, "extra patties", "https://spacebuns.web.app/Media/menuBurgers/chicken2.jpg")));
            //CartLineItems.Add(GetCartLineItem(new CartItem("cool burger", 17, 1, "extra cheese", "https://spacebuns.web.app/Media/menuBurgers/chicken3.jpg")));
            //CartLineItems.Add(GetCartLineItem(new CartItem("nice burger", 18, 5, "extra cheese and patties", "https://spacebuns.web.app/Media/menuBurgers/beef1.jpg")));
            //CartLineItems.Add(GetCartLineItem(new CartItem("expensive burger", 20, 2, "extra cheese and 2 patties", "https://spacebuns.web.app/Media/menuBurgers/beef3.jpg")));
            //CartLineItems.Add(GetCartLineItem(new CartItem()));

            //for (int i = 0; i < cartItems; i++)
            //{
            //    CartLineItems.Add(new SessionLineItemOptions
            //    {
            //        PriceData = new SessionLineItemPriceDataOptions
            //        {
            //            Currency = "myr",
            //            UnitAmount = 1700,
            //            ProductData = new SessionLineItemPriceDataProductDataOptions
            //            {
            //                Name = "Double Trouble",
            //                Description = "Crispy chicken thigh, " +
            //            "shredded pickles with spicy creamy mayo, " +
            //            "with hot fragrant bun.",
            //                //Amount = 1700,
            //                Images = new List<string>() {
            //                    "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg"
            //                },
            //                //Price = "price_H5ggYwtDq4fbrJ",
            //            },


            //        },
            //        Quantity = cartItems,
            //    });

            //    CartLineItems.Add(GetCartLineItem(cartItems));
            //    CartLineItems.Add(GetCartLineItem(cartItems));
            //}

            var currentUserEmail = "";
            var currentUserName = "";
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
                    currentUserEmail = cust["email"].ToString();
                    currentUserName = cust["name"].ToString();
                    currentUserId = cust["customerID"].ToString();
                }

            }


            con.Close();

           


                var defaultOptions = new SessionCreateOptions
                {
                    CustomerEmail = currentUserEmail,

                    //CustomerEmail = "jason@gmail.com",
                    BillingAddressCollection = "required",
                    //SuccessUrl = "https://localhost:52001/success?id={CHECKOUT_SESSION_ID}",
                    SuccessUrl = "https://localhost:44358/sb_orderConfirmed.aspx",
                    CancelUrl = "https://localhost:44358/sb_orderCancelled.aspx",   // show error, then should go back to cart 


                    PaymentMethodTypes = new List<string>
                {
                    "card",
                    "fpx",
                    "grabpay",
                    "alipay",
       
                },

                    LineItems = {},

                    Mode = "payment",

                    AllowPromotionCodes = true,

                    //CustomerEmail = "boon@gmail.com", // using this will disable users to edit their email
                    //Customer = "Benn",
                };
            


            var options = new SessionCreateOptions
            {
                CustomerEmail = currentUserEmail,
                
                //CustomerEmail = "jason@gmail.com",
                BillingAddressCollection = "required",
                //SuccessUrl = "https://localhost:52001/success?id={CHECKOUT_SESSION_ID}",
                SuccessUrl = "https://localhost:44358/sb_orderConfirmed.aspx",
                CancelUrl = "https://localhost:44358/sb_orderCancelled.aspx",   // show error, then should go back to cart 

                //ShippingAddressCollection = new SessionShippingAddressCollectionOptions
                //{
                //    AllowedCountries = new List<string>
                //{
                //  "US",
                //  "CA",
                //},
                //},
                //ShippingOptions = new List<SessionShippingOptionOptions>
                //{
                //  new SessionShippingOptionOptions
                //  {
                //    ShippingRateData = new SessionShippingOptionShippingRateDataOptions
                //    {
                //      Type = "fixed_amount",
                //      FixedAmount = new SessionShippingOptionShippingRateDataFixedAmountOptions
                //      {
                //        Amount = 0,
                //        Currency = "myr",
                //      },
                //      DisplayName = "Free Delivery",
                //      // Delivers between 5-7 business days
                //      DeliveryEstimate = new SessionShippingOptionShippingRateDataDeliveryEstimateOptions
                //      {
                //        Minimum = new SessionShippingOptionShippingRateDataDeliveryEstimateMinimumOptions
                //        {
                //          Unit = "minutes",
                //          Value = 2,
                //        },
                //        Maximum = new SessionShippingOptionShippingRateDataDeliveryEstimateMaximumOptions
                //        {
                //          Unit = "minutes",
                //          Value = 3,
                //        },
                //      },
                //    }
                //  },
                //  new SessionShippingOptionOptions
                //  {
                //    ShippingRateData = new SessionShippingOptionShippingRateDataOptions
                //    {
                //      Type = "fixed_amount",
                //      FixedAmount = new SessionShippingOptionShippingRateDataFixedAmountOptions
                //      {
                //        Amount = 1500,
                //        Currency = "myr",
                //      },
                //      DisplayName = "Instant Delivery",
                //      // Delivers in exactly 1 business day
                //      DeliveryEstimate = new SessionShippingOptionShippingRateDataDeliveryEstimateOptions
                //      {
                //        Minimum = new SessionShippingOptionShippingRateDataDeliveryEstimateMinimumOptions
                //        {
                //          Unit = "hour",
                //          Value = 1,
                //        },
                //        Maximum = new SessionShippingOptionShippingRateDataDeliveryEstimateMaximumOptions
                //        {
                //          Unit = "hour",
                //          Value = 2,
                //        },
                //      },
                //    }
                //  },
                //},

                PaymentMethodTypes = new List<string>
                {
                    "card",
                    "fpx",
                    "grabpay",
                    "alipay",
                    //"paypal",
                    //"wechat_pay",
                },

                //LineItems = CartLineItems,
                LineItems =  getLineItemsFromCart(), // GetCartCount() == 0 ? defaultLineItem() : getLineItemsFromCart()
                //new List<SessionLineItemOptions>
                //   {

                //   new SessionLineItemOptions
                //   {
                //       PriceData = new SessionLineItemPriceDataOptions
                //       {
                //           Currency = "myr",
                //           UnitAmount = 200,
                //           ProductData = new SessionLineItemPriceDataProductDataOptions
                //           {
                //               Name = "",
                //               Description ="",
                //               Images = new List<string>() {
                //                 "",
                //               },
                //               //Price = "price_H5ggYwtDq4fbrJ",
                //           },


                //       },
                //       Quantity = 1,

                //   },
                //}

                //Convert.ToInt64(cart["price"])

                //LineItems = new List<SessionLineItemOptions>
                //    {

                //    new SessionLineItemOptions
                //    {
                //        PriceData = new SessionLineItemPriceDataOptions
                //        {
                //            Currency = "myr",
                //            UnitAmount = (Convert.ToInt64(cart["price"])/ Convert.ToInt64(cart["quantity"])) * 100,
                //            ProductData = new SessionLineItemPriceDataProductDataOptions
                //            {
                //                Name = (cart["productName"]).ToString(),
                //                Description = (cart["addOnPatties"]).ToString() + ", "+ (cart["choiceOfSides"]).ToString() + ", "+ (cart["choiceOfBeverage"]).ToString() + ", "+ (cart["addOnSauce"]).ToString(),
                //                //Amount = 1700,
                //                Images = new List<string>() {
                //                   cart["picture"].ToString(),
                //                },
                //                //Price = "price_H5ggYwtDq4fbrJ",
                //            },


                //        },
                //        Quantity = Convert.ToInt64(cart["quantity"]),

                //    },

                //new SessionLineItemOptions
                //{
                //    PriceData = new SessionLineItemPriceDataOptions
                //    {
                //        Currency = "myr",
                //        UnitAmount = 1600,
                //        ProductData = new SessionLineItemPriceDataProductDataOptions
                //        {
                //            Name = "Salmon Fillet",
                //            Description = "Salmon patty, " +
                //    "served with slices of tomatoes, lettuce, onions and mayo.",
                //            //Amount = 1600,
                //            Images = new List<string>() {
                //        "https://spacebuns.web.app/Media/menuBurgers/fish1.jpg"
                //    },
                //        },

                //    },
                //    Quantity = 1,
                //},

                //new SessionLineItemOptions
                //{
                //    PriceData = new SessionLineItemPriceDataOptions
                //    {
                //        Currency = "myr",
                //        UnitAmount = 1700,
                //        ProductData = new SessionLineItemPriceDataProductDataOptions
                //        {
                //            Name = "King of Cheese",
                //            Description = "A triple grilled Beef Patty covered with lots of mozarella cheese.",
                //            //Amount = 1700,
                //            Images = new List<string>() {
                //        "https://spacebuns.web.app/Media/menuBurgers/beef3.jpg"
                //    },
                //        },

                //    },
                //    Quantity = 1,
                //},

                //new SessionLineItemOptions
                //{
                //    PriceData = new SessionLineItemPriceDataOptions
                //    {
                //        Currency = "myr",
                //        UnitAmount = 250,
                //        ProductData = new SessionLineItemPriceDataProductDataOptions
                //        {
                //            Name = "Cupcake",
                //            Description = "This is a cupcake",
                //            //Amount = 250,
                //            Images = new List<string>() {
                //            "https://media.istockphoto.com/photos/pink-and-white-frosted-cupcake-isolated-on-white-picture-id167120918?k=20&m=167120918&s=612x612&w=0&h=SL7pPaRbqwf-7ewyqIF_aTvhMY-qKSbShkW5BetZtsI="
                //    },
                //        },

                //    },
                //    Quantity = 2,
                //},

                //},

                Mode = "payment",

                AllowPromotionCodes = true,

                //CustomerEmail = "boon@gmail.com", // using this will disable users to edit their email
                //Customer = "Benn",
            };


            var service = new SessionService();
            Session session = service.Create(options);
            sessionId = session.Id;

        }

        protected void Repeater_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            // get the item 
            var prodName = (e.Item.FindControl("lblProductName") as Label).Text;
            var desc = (e.Item.FindControl("lblDesc") as Label).Text;
            // get quantity
            int quantity = Convert.ToInt32((e.Item.FindControl("txtQuantity") as TextBox).Text);
            if (e.CommandName == "btnDecrement" && quantity > 1)
            {
                (e.Item.FindControl("txtQuantity") as TextBox).Text = (quantity - 1).ToString();

            }

            if (e.CommandName == "btnIncrement" && quantity < 99)
            {
                (e.Item.FindControl("txtQuantity") as TextBox).Text = (quantity + 1).ToString();

            }


            // update the quantity in the database
            con.Open();
            string decrementQuery = "UPDATE Cart SET quantity = @quantity WHERE(customerID = @custId) AND(productName = @prodName)";
            SqlCommand cmdDecrement = new SqlCommand(decrementQuery, con);
            cmdDecrement.Parameters.AddWithValue("@custId", lblCustId.Text);
            cmdDecrement.Parameters.AddWithValue("@prodName", prodName);
            cmdDecrement.Parameters.AddWithValue("@quantity", (e.Item.FindControl("txtQuantity") as TextBox).Text);

            int insert = cmdDecrement.ExecuteNonQuery();
            con.Close();
            if (insert > 0)
            {
                //lblCustId.Text = "insert";
                // try to change to make a dialog
                Response.Write("Updated!");
            }
            else
            {
                Response.Write("Ops, unable to add to cart");
            }
            // get the unit price of the product first
            //get selected product details
            con.Open();
            string prodQuery = "SELECT unitPrice, description FROM Product WHERE(name = @productName)";
            SqlCommand cmdProd = new SqlCommand(prodQuery, con);
            cmdProd.Parameters.AddWithValue("@productName", prodName);
            SqlDataReader product = cmdProd.ExecuteReader();


            if (product.HasRows)
            {
                while (product.Read())
                {
                    (e.Item.FindControl("lblUnitPrice") as Label).Text = product["unitPrice"].ToString();

                }

            }
            con.Close();

            var updatedPrice = Convert.ToDouble((e.Item.FindControl("txtQuantity") as TextBox).Text) * Convert.ToDouble((e.Item.FindControl("lblUnitPrice") as Label).Text);
            // update price 
            con.Open();
            string updatePriceQuery = "UPDATE Cart SET price = @price WHERE(customerID = @custId) AND(productName = @prodName)";
            SqlCommand cmdUpdatePrice = new SqlCommand(updatePriceQuery, con);
            cmdUpdatePrice.Parameters.AddWithValue("@custId", lblCustId.Text);
            cmdUpdatePrice.Parameters.AddWithValue("@prodName", prodName);
            cmdUpdatePrice.Parameters.AddWithValue("@price", updatedPrice);

            int update = cmdUpdatePrice.ExecuteNonQuery();
            con.Close();
            if (insert > 0)
            {
                //lblCustId.Text = "insert";
                // try to change to make a dialog
                Response.Write("Updated!");
                Response.Redirect("sb_index.aspx");

            }
            else
            {
                Response.Write("Ops, unable to add to cart");
            }


            con.Close();


            // delete item 
            if (e.CommandName == "btnDeleteItem")
            {
                // remove the item from the cart
                con.Open();
                string deleteQuery = "DELETE FROM Cart WHERE(customerID = @custId) AND(productName = @prodName)";
                SqlCommand cmdDelete = new SqlCommand(deleteQuery, con);
                cmdDelete.Parameters.AddWithValue("@custId", lblCustId.Text);
                cmdDelete.Parameters.AddWithValue("@prodName", prodName);

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

            // description
            con.Open();
            // get customer id
            string cartQuery = "SELECT * FROM Cart WHERE(customerID = @custID)";
            SqlCommand cmdCart = new SqlCommand(cartQuery, con);
            cmdCart.Parameters.AddWithValue("@custID", lblCustId.Text);
            SqlDataReader cart = cmdCart.ExecuteReader();


            if (cart.HasRows)
            {
                while (cart.Read())
                {
                    var setMeal = cart["isSetMeal"].ToString() == "True" ? "Set Meal" : "A Lar Carte";
                    var setMealDesc = "Set Meal: " + setMeal + "\nAdd Patties: " + cart["addOnPatties"] + "\nAdd Sauce:" + cart["addOnSauce"]
                        + "\nSides:" + cart["choiceOfSides"] + "\nBeverage: " + cart["choiceOfBeverages"];
                    var aLaCarteDesc = "Set Meal: " + setMeal + "\nAdd Patties: " + cart["addOnPatties"] + "\nAdd Sauce:" + cart["addOnSauce"];
                    (e.Item.FindControl("lblDesc") as Label).Text = setMeal == "Set Meal" ? setMealDesc : aLaCarteDesc;


                }

            }
            con.Close();


        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            //Cart_Checkout();

        }
    }

}