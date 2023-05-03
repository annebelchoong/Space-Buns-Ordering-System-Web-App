using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System.UserProfile
{
    public partial class sb_updateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["username"] != null)
            {
                string username = Request.QueryString["username"].ToString();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "Select * from [Customer] WHERE username = @username";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", username);

                SqlDataReader drEmp = cmd.ExecuteReader();

                if (drEmp.HasRows)
                {
                    while (drEmp.Read())
                    {
                        txtFirstName.Text = drEmp["name"].ToString();
                        txtEmail.Text = drEmp["email"].ToString();
                        txtPhoneNo.Text = drEmp["phone"].ToString();
                        txtAddress.Text = drEmp["street"].ToString();
                        txtPostCode.Text = drEmp["zipcode"].ToString();
                    }

                    // set the label text after data binding
                    lblUsername1.Text = username;
                    lblUsername1.DataBind();
                }
                else
                {
                    // display success message using alert
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No record found!');", true);
                }
                drEmp.Close();
                con.Close();
            }
        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            Response.Write("Username: " + username);

            //// Get selected state from DropDownList
            //string state = ddlState.SelectedValue;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "UPDATE [Customer] SET name=@name, email=@email, "
                + "phone=@phone, street=@street, zipcode=@zipcode WHERE username=@username";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
            cmd.Parameters.AddWithValue("@street", txtAddress.Text);
            cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
            //cmd.Parameters.AddWithValue("@state", state);

            int result = cmd.ExecuteNonQuery();

            con.Close();

            if (result > 0)
            {
                // display success message using alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('Profile updated successfully!');", true);
                Response.Redirect("sb_userProfile.aspx");
            }
            else
            {
                // display error message using alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('Failed to update profile.');", true);
            }
        }
    }
}