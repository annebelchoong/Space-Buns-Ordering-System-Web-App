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
    public partial class account : System.Web.UI.Page
    {
       string username; // declare the variable at the class level

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // check if the cookie exists and set the username and password values
                HttpCookie cookie = Request.Cookies["MyAppLogin"];
                if (cookie != null && cookie["username"] != null && cookie["password"] != null)
                {
                    username = cookie["username"]; // assign the value to the class-level variable
                    string password = cookie["password"];
                    txtUsername.Text = username;
                    txtPassword.Attributes["value"] = password;
                    RememberMe.Checked = true;
                }
            }
        }

        protected bool IsUserAuthenticated()
        {
            string mainConn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(mainConn);
            string sqlQuery = "select * from [dbo].[Customer] where username=@username and password=@password";
            SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn);
            sqlComm.Parameters.AddWithValue("@username", txtUsername.Text);
            sqlComm.Parameters.AddWithValue("@password", txtPassword.Text);
            sqlConn.Open();
            SqlDataReader sqlReader = sqlComm.ExecuteReader();
            bool isAuthenticated = sqlReader.HasRows;
            sqlReader.Close();
            sqlConn.Close();
            return isAuthenticated;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsUserAuthenticated())
            {
                Session["Username"] = txtUsername.Text;
                Session["IsLoggedIn"] = true; // set IsLoggedIn session variable to true
                Session["SuccessMessage"] = "Successfully logged in.";
                Response.Redirect("sb_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Invalid username or password.');", true);
            }

        }

        protected void RememberMe_CheckedChanged(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("MyAppLogin");

            if (RememberMe.Checked)
            {
                // Set the cookie to expire in 30 days
                cookie.Expires = DateTime.Now.AddDays(30);

                // Set the cookie value to the user's login information
                cookie.Values["username"] = txtUsername.Text;
                cookie.Values["password"] = txtPassword.Text;
            }
            else
            {
                // Set the cookie to expire immediately
                cookie.Expires = DateTime.Now.AddDays(-1);
            }

            // Add the cookie to the response
            Response.Cookies.Add(cookie);

        }
    }
}