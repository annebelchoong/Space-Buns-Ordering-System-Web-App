using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe;
using Stripe.Checkout;

namespace Space_Buns_Ordering_System
{
    public partial class sb_cart : System.Web.UI.Page
    {
        public string sessionId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            // create Checkout session and set `sessionId`
            StripeConfiguration.ApiKey = "sk_test_51LWbMdCffsYKlOgZcf695lczfzE5jnrUdc6sX7abxQzwNj4jxRRqpWsGITmV76JO2rGHxHcGHDn4SMXTDaHrlXUF001T6K47cb";

            var options = new SessionCreateOptions
            {
                //SuccessUrl = "https://localhost:52001/success?id={CHECKOUT_SESSION_ID}",
                SuccessUrl = "https://localhost:44358/sb_orderConfirmed.aspx",
                CancelUrl = "https://localhost:52001/cancel",   // should go back to cart 
                PaymentMethodTypes = new List<string>
                {
                    "card",
                    "fpx",
                    "grabpay",
                    "alipay",
                    //"paypal",
                    //"wechat_pay",
                },
                ShippingAddressCollection = new SessionShippingAddressCollectionOptions(),
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
                    Quantity = 2,
                    },

                    new SessionLineItemOptions
                    {
                    PriceData = new SessionLineItemPriceDataOptions                        {
                        Currency = "myr",
                        UnitAmount = 1600,
                        ProductData = new SessionLineItemPriceDataProductDataOptions
                        {
                        Name = "Salmon Fillet",
                        Description = "Salmon patty, " +
                        "served with slices of tomatoes, lettuce, onions and mayo.",
                        //Amount = 1600,
                        Images = new List<string>() {
                            "https://spacebuns.web.app/Media/menuBurgers/fish1.jpg"
                        },
                        },

                        },
                     Quantity = 1,
                     },

                    new SessionLineItemOptions
                    {
                    PriceData = new SessionLineItemPriceDataOptions                        {
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

                    new SessionLineItemOptions
                    {
                    PriceData = new SessionLineItemPriceDataOptions                        {
                        Currency = "myr",
                        UnitAmount = 250,
                        ProductData = new SessionLineItemPriceDataProductDataOptions
                        {
                        Name = "Cupcake",
                        Description = "This is a cupcake",
                        //Amount = 250,
                        Images = new List<string>() {
                                "https://media.istockphoto.com/photos/pink-and-white-frosted-cupcake-isolated-on-white-picture-id167120918?k=20&m=167120918&s=612x612&w=0&h=SL7pPaRbqwf-7ewyqIF_aTvhMY-qKSbShkW5BetZtsI="
                        },
                        },

                        },
                    Quantity = 2,
                    },

                },
                Mode = "payment",

                AllowPromotionCodes = true,

                //CustomerEmail = "boon@gmail.com", // using this will disable users to edit their email
                //Customer = "Benn",
            };

            var service = new SessionService();
            Session session = service.Create(options);
            sessionId = session.Id;


            // get customer id based on the current user
            String currentUser = currentUsername.ToString();

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

            // calculate the sum of the total price of the items in the cart
            con.Open();
            string sumQuery = "SELECT SUM(price) FROM Cart WHERE(customerId = @custId)";
            SqlCommand cmdSum = new SqlCommand(sumQuery, con);
            cmdSum.Parameters.AddWithValue("@custId", lblCustId.Text);
            double sum = Convert.ToDouble(cmdSum.ExecuteScalar());

            lblFinalAmount.Text = sum.ToString("C2");

            con.Close();

            // need to have one query to check the total item in the cart for the current user
            con.Open();
            string countQuery = "SELECT COUNT(*) FROM Cart WHERE(customerId = @custId)";
            SqlCommand cmdCount = new SqlCommand(countQuery, con);
            cmdCount.Parameters.AddWithValue("@custId", lblCustId.Text);
            int count = Convert.ToInt32(cmdCount.ExecuteScalar());

            lblNumOfItems.Text = count.ToString();

            con.Close();



        }
        protected void btnDecrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((Repeater1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity > 1)
            {
                (Repeater1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity - 1).ToString();

            }

        }

        protected void btnIncrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((Repeater1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity < 99)
            {

                (Repeater1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity + 1).ToString();
            }


        }




    }
}