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

        protected void btnSavePassword_Click(object sender, EventArgs e)
        {
            // get the username from session
            string username = Session["username"].ToString();

            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();

            string query = "UPDATE Customer SET password = @password WHERE username = @username";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@password", txtRetypePassword.Text);
            cmd.Parameters.AddWithValue("@username", username);

            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password saved!');", true);
            Response.Redirect("~/Reengineer2023/sb_userProfile.aspx");

        }

    }
}