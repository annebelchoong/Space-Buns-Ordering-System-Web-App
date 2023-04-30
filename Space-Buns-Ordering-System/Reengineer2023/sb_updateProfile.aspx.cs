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
    public partial class sb_updateProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void calDoB_SelectionChanged(object sender, EventArgs e)
        //{
        //    txtDoB.Text = calDoB.SelectedDate.ToString();
        //}

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            String user = LoginName1.ToString();

            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();

            //string query = "UPDATE Customer SET email = @email, phone = @phone, street = @street, zipcode = @zipcode, name = @name, password = @password, username = @username WHERE username = @username";


            //SqlCommand cmd = new SqlCommand(query, con);
            //string state = ddlState.SelectedItem.Value;
            //cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
            //cmd.Parameters.AddWithValue("@username", user);
            //cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            //cmd.Parameters.AddWithValue("@password", "asdfasdf");
            //cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
            //cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
            //cmd.Parameters.AddWithValue("@street", txtAddress.Text);
            //cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());


            //int insert = cmd.ExecuteNonQuery();
            ////cmd.Dispose();
            //con.Close();
            ////Response.Write("alert('Profile saved!')");
            ////Response.Redirect("sb_userProfile.aspx");

            //if (insert > 0)
            //{
            //    //lblResults.Text = "Insert successfully";
            //    string script = "alert('Profile saved!');";
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            //    Response.Redirect("sb_userProfile.aspx");
            //}
            //else
            //{
            //    lblResults.Text = "fail to insert";
            //}

            try
            {
                string query = "UPDATE Customer SET email = @email, phone = @phone, street = @street, zipcode = @zipcode, name = @name, password = @password WHERE username = @username";

                SqlCommand cmd = new SqlCommand(query, con);
                string state = ddlState.SelectedItem.Value;
                cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", "asdfasdf");
                cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
                cmd.Parameters.AddWithValue("@street", txtAddress.Text);
                //cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());

                int insert = cmd.ExecuteNonQuery();

                con.Close();

                if (insert > 0)
                {
                    string script = "alert('Profile saved!');";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                    Response.Redirect("sb_userProfile.aspx");
                }
                else
                {
                    lblResults.Text = "Failed to update profile";
                }
            }
            catch (Exception ex)
            {
                lblResults.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}