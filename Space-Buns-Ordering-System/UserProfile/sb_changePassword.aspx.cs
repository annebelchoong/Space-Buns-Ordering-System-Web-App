using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Space_Buns_Ordering_System
{
    public partial class sb_changePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSavePassword_Click(object sender, EventArgs e)
        {
            //String user = LoginName1.ToString();

            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();

            string query = "UPDATE Customer SET password = @password WHERE username = @username";


            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@password", txtRetypePassword.Text);

            cmd.ExecuteNonQuery();
            //cmd.Dispose();
            con.Close();
            Response.Write("alert('Password saved!')");
            Response.Redirect("sb_userProfile.aspx");

        }
    }
}