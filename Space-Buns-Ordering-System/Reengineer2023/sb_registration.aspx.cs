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
    public partial class sb_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            //Session["username"] = txtUsername.Text;
            //String user = txtUsername.ToString();
            //lblUsername1.Text = user;

            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();
            string query = "INSERT INTO Customer(email, phone, password, username) VALUES(@email, @phone, @password, @username)";


            SqlCommand cmd = new SqlCommand(query, con);
            //string state = ddlState.SelectedItem.Value;
            //cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            //cmd.Parameters.AddWithValue("@username", "text");
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            //cmd.Parameters.AddWithValue("@state", state);
            //cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
            //cmd.Parameters.AddWithValue("@street", txtAddress.Text);
            //cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());


            int insert = cmd.ExecuteNonQuery();
            con.Close();


            if (insert > 0)
            {
                //lblResults.Text = "Insert successfully";
                string script = "alert('Your account is created!');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                Response.Redirect("sb_userProfile.aspx");
            }
            else
            {
                string script = "alert('Error!');";
            }
        }
    }
}