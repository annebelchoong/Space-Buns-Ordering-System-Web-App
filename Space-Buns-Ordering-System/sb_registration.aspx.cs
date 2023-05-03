using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (!chkSignUp.Checked)
            {
                chkSignUpCustomValidator.IsValid = false;
            }
            else
            {

                SqlConnection con;
                string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(sss);
                con.Open();
                string query = "INSERT INTO Customer(email, phone, password, username) VALUES(@email, @phone, @password, @username)";


                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);

                int insert = cmd.ExecuteNonQuery();
                con.Close();


                if (insert > 0)
                {
                    // Store the username in a session variable
                    Session["username"] = txtUsername.Text;

                    string script = "alert('Your account is created!');";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                    Response.Redirect("~/UserProfile/sb_userProfile.aspx");
                }
                else
                {
                    string script = "alert('Error!');";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Error", script, true);
                }
            }

        }
        protected void chkSignUpCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkSignUp.Checked;
        }
    }
}