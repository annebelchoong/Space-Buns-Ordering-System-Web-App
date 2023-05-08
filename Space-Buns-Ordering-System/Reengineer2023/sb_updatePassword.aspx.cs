using Stripe;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_updatePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSavePassword_Click(object sender, EventArgs e)
        //{
        //    // get the username from session
        //    string username = Session["username"].ToString();

        //    SqlConnection con;
        //    string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    con = new SqlConnection(sss);
        //    con.Open();

        //    string query = "UPDATE Customer SET password = @password WHERE username = @username";

        //    SqlCommand cmd = new SqlCommand(query, con);

        //    cmd.Parameters.AddWithValue("@password", txtRetypePassword.Text);
        //    cmd.Parameters.AddWithValue("@username", username);

        //    cmd.ExecuteNonQuery();
        //    con.Close();

        //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password saved!');", true);
        //    Response.Redirect("~/Reengineer2023/sb_userProfile.aspx");

        //}

        protected void btnSavePassword_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the username from session
                string username = Session["username"]?.ToString();

                if (string.IsNullOrEmpty(username))
                {
                    // Handle error when the username is null or empty
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Username not found!');", true);
                    return;
                }

                // Retrieve the connection string from web.config
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = "UPDATE Customer SET password = @password WHERE username = @username";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@password", txtRetypePassword.Text);
                        cmd.Parameters.AddWithValue("@username", username);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Update the password in the session
                            Session["password"] = txtRetypePassword.Text;

                            // Close the connection before showing the alert
                            con.Close();

                            // Show the alert message
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password saved!');", true);

                            // Redirect to the user profile page
                            Response.Redirect("~/Reengineer2023/sb_userProfile.aspx");
                        }
                        else
                        {
                            con.Close();
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed to update password!');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions and display an error message
                string errorMessage = "An error occurred while updating the password: " + ex.Message;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{errorMessage}');", true);
            }
        }


    }

}
