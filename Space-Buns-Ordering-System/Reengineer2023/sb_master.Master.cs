using Stripe.Checkout;
using Stripe;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_Master : System.Web.UI.MasterPage
    {
        public string sessionId = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                // User is logged in
                lblLoginStatus.Text = "Logout";
                lblLoginStatus.Attributes.Add("OnClick", "location.href='sb_login.aspx'");
            }
            else
            {
                // User is logged out
                lblLoginStatus.Text = "Login";
                lblLoginStatus.Attributes.Add("OnClick", "location.href='sb_login.aspx'");
            }


            //if (!IsPostBack)
            //{
            //    Label lblLoginStatus = (Label)Master.FindControl("ContentPlaceHolder1").FindControl("lblLoginStatus");

            //    if (Session["Username"] != null && (bool)Session["IsLoggedIn"])
            //    {
            //        // User is logged in
            //        LoginStatus1.LogoutText = "Logout";
            //        lblLoginStatus.Text = "Logged in as " + Session["Username"].ToString();
            //    }
            //    else
            //    {
            //        // User is logged out
            //        LoginStatus1.LoginText = "Login";
            //        lblLoginStatus.Text = "Not logged in";
            //    }
            //}

            //if (!IsPostBack)
            //{
            //    bool isLoggedIn = (Session["username"] != null);

            //    if (isLoggedIn)
            //    {
            //        LoginStatus1.LogoutText = "Logout";
            //    }
            //    else
            //    {
            //        LoginStatus1.LoginText = "Login";
            //    }
            //}
            //int cartItems = GetCartCount();
            //Cart_Checkout(cartItems);
            Cart_Checkout();
        }

        private int GetCartCount()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strSearch = "SELECT COUNT(*) AS CartCount FROM[OrderDetails] WHERE OrderId = 2 ";

            SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            int cartItems = (int)cmdSearch.ExecuteScalar();
            con.Close();
            return cartItems;
            //lblTotalOrders.Text = totalOrders.ToString();
        }

        private SessionLineItemOptions GetCartLineItem(CartItem cartItem)
        {
            int unitAmount, quantity;
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

        //private void Cart_Checkout(int cartItems)
        private void Cart_Checkout()
        {
            // create Checkout session and set `sessionId`
            StripeConfiguration.ApiKey = "sk_test_51LWbMdCffsYKlOgZcf695lczfzE5jnrUdc6sX7abxQzwNj4jxRRqpWsGITmV76JO2rGHxHcGHDn4SMXTDaHrlXUF001T6K47cb";


            //GetCartLineItem(cartItems);
            List<SessionLineItemOptions> CartLineItems = new List<SessionLineItemOptions> { };
            CartLineItems.Add(GetCartLineItem(new CartItem("lousy burger", 15, 2, "extra 2 patties", "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg")));
            CartLineItems.Add(GetCartLineItem(new CartItem("awesome burger", 16, 3, "extra patties", "https://spacebuns.web.app/Media/menuBurgers/chicken2.jpg")));
            CartLineItems.Add(GetCartLineItem(new CartItem("cool burger", 17, 1, "extra cheese", "https://spacebuns.web.app/Media/menuBurgers/chicken3.jpg")));
            CartLineItems.Add(GetCartLineItem(new CartItem("nice burger", 18, 5, "extra cheese and patties", "https://spacebuns.web.app/Media/menuBurgers/beef1.jpg")));
            CartLineItems.Add(GetCartLineItem(new CartItem("expensive burger", 20, 2, "extra cheese and 2 patties", "https://spacebuns.web.app/Media/menuBurgers/beef3.jpg")));
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

            var options = new SessionCreateOptions
            {
                CustomerEmail = "jason@gmail.com",
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

                LineItems = new List<SessionLineItemOptions>
                {

                new SessionLineItemOptions
                {
                    PriceData = new SessionLineItemPriceDataOptions
                    {
                        Currency = "myr",
                        UnitAmount = 1700,
                        ProductData = new SessionLineItemPriceDataProductDataOptions
                        {
                            Name = "Double Trouble",
                            Description = "Crispy chicken thigh, " +
                        "shredded pickles with spicy creamy mayo, " +
                        "with hot fragrant bun.",
                            //Amount = 1700,
                            Images = new List<string>() {
                                "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg"
                            },
                            //Price = "price_H5ggYwtDq4fbrJ",
                        },


                    },
                    Quantity = 1,
                },

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

                    new SessionLineItemOptions
                    {
                        PriceData = new SessionLineItemPriceDataOptions
                        {
                            Currency = "myr",
                            UnitAmount = 1700,
                            ProductData = new SessionLineItemPriceDataProductDataOptions
                            {
                                Name = "King of Cheese",
                                Description = "A triple grilled Beef Patty covered with lots of mozarella cheese.",
                                //Amount = 1700,
                                Images = new List<string>() {
                            "https://spacebuns.web.app/Media/menuBurgers/beef3.jpg"
                        },
                            },

                        },
                        Quantity = 1,
                    },

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

                },

                Mode = "payment",

                AllowPromotionCodes = true,

                //CustomerEmail = "boon@gmail.com", // using this will disable users to edit their email
                //Customer = "Benn",
            };

            var service = new SessionService();
            Session session = service.Create(options);
            sessionId = session.Id;
        }

        
    }
}