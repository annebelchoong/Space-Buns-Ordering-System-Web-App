using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_updateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.QueryString["username"] != null)
            //{
            //    string username = Request.QueryString["username"].ToString();
            //    lblUsername1.Text = username;
            //    lblUsername1.DataBind();

            //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //    con.Open();

            //    string query = "Select * from [Customer] WHERE username = @username";
            //    SqlCommand cmd = new SqlCommand(query, con);
            //    cmd.Parameters.AddWithValue("@username", username);

            //    SqlDataReader drEmp = cmd.ExecuteReader();

            //    if (drEmp.HasRows)
            //    {
            //        while (drEmp.Read())
            //        {
            //            txtFirstName.Text = drEmp["name"].ToString();
            //            txtEmail.Text = drEmp["email"].ToString();
            //            txtPhoneNo.Text = drEmp["phone"].ToString();
            //            txtAddress.Text = drEmp["street"].ToString();
            //            txtPostCode.Text = drEmp["zipcode"].ToString();
            //        }
            //    }
            //    else
            //    {
            //        // display success message using alert
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
            //            "alert('No record found!');", true);
            //    }

            //    drEmp.Close();
            //    con.Close();
            //}

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

            int result = cmd.ExecuteNonQuery();

            con.Close();

            if (result > 0)
            {
                // display success message using alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('Profile updated successfully!');", true);
                Response.Redirect("~/Reengineer2023/sb_userProfile.aspx");
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
    





//protected void calDoB_SelectionChanged(object sender, EventArgs e)
//{
//    txtDoB.Text = calDoB.SelectedDate.ToString();
//}

//protected void btnSaveChange_Click(object sender, EventArgs e)
//{
//    string username = Session["username"].ToString();

//    SqlConnection con;
//    string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
//    con = new SqlConnection(sss);
//    con.Open();

//    //string query = "UPDATE Customer SET email = @email, phone = @phone, street = @street, zipcode = @zipcode, name = @name, password = @password, username = @username WHERE username = @username";


//    //SqlCommand cmd = new SqlCommand(query, con);
//    //string state = ddlState.SelectedItem.Value;
//    //cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
//    //cmd.Parameters.AddWithValue("@username", user);
//    //cmd.Parameters.AddWithValue("@email", txtEmail.Text);
//    //cmd.Parameters.AddWithValue("@password", "asdfasdf");
//    //cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
//    //cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
//    //cmd.Parameters.AddWithValue("@street", txtAddress.Text);
//    //cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());


//    //int insert = cmd.ExecuteNonQuery();
//    ////cmd.Dispose();
//    //con.Close();
//    ////Response.Write("alert('Profile saved!')");
//    ////Response.Redirect("sb_userProfile.aspx");

//    //if (insert > 0)
//    //{
//    //    //lblResults.Text = "Insert successfully";
//    //    string script = "alert('Profile saved!');";
//    //    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
//    //    Response.Redirect("sb_userProfile.aspx");
//    //}
//    //else
//    //{
//    //    lblResults.Text = "fail to insert";
//    //}

//    try
//    {
//        string query = "UPDATE Customer SET email = @email, phone = @phone, street = @street, zipcode = @zipcode, name = @name, password = @password WHERE username = @username";

//        SqlCommand cmd = new SqlCommand(query, con);
//        string state = ddlState.SelectedItem.Value;
//        cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
//        cmd.Parameters.AddWithValue("@username", username);
//        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
//        cmd.Parameters.AddWithValue("@password", "asdfasdf");
//        cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
//        cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
//        cmd.Parameters.AddWithValue("@street", txtAddress.Text);
//        //cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());

//        int insert = cmd.ExecuteNonQuery();

//        con.Close();

//        if (insert > 0)
//        {
//            string script = "alert('Profile saved!');";
//            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
//            Response.Redirect("sb_userProfile.aspx");
//        }
//        else
//        {
//            lblResults.Text = "Failed to update profile";
//        }
//    }
//    catch (Exception ex)
//    {
//        lblResults.Text = "An error occurred: " + ex.Message;
//    }
//}
//protected void btnSaveChange_Click(object sender, EventArgs e)
//{
//    try
//    {
//        string username = HttpContext.Current.User.Identity.Name;
//        if (string.IsNullOrEmpty(username))
//        {
//            // user not logged in, redirect to login page
//            Response.Redirect("~/Reengineer2023/sb_login.aspx");
//            return;
//        }

//        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
//        con.Open();

//        string query = "UPDATE [Customer] SET name=@name, email=@email, " +
//                       "phone=@phone, street=@street, zipcode=@zipcode WHERE username = @username";
//        SqlCommand cmd = new SqlCommand(query, con);
//        cmd.Parameters.AddWithValue("@username", username);
//        cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
//        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
//        cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
//        cmd.Parameters.AddWithValue("@street", txtAddress.Text);
//        cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);

//        int result = cmd.ExecuteNonQuery();

//        con.Close();

//        if (result > 0)
//        {
//            string script = "alert('Profile updated successfully.');";
//            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
//        }
//        else
//        {
//            string script = "alert('Error updating profile! Please try again.');";
//            ClientScript.RegisterClientScriptBlock(this.GetType(), "Error", script, true);
//        }
//    }
//    catch (Exception ex)
//    {
//        string script = "alert('Error updating profile! Please try again.');";
//        ClientScript.RegisterClientScriptBlock(this.GetType(), "Error", script, true);
//    }
//}
//    }
//}