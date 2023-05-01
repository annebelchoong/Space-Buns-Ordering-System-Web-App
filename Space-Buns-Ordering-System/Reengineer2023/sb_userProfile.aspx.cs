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
    public partial class sb_userProfile : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    // user not logged in, redirect to login page
                    Response.Redirect("~/Reengineer2023/sb_login.aspx");
                    return;
                }

                string username = Session["username"].ToString();
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
                        lblUsername.Text = drEmp["username"].ToString();
                        lblName.Text = drEmp["name"].ToString();
                        lblEmail.Text = drEmp["email"].ToString();
                        lblPhone.Text = drEmp["phone"].ToString();
                        lblStreet.Text = drEmp["street"].ToString();
                        lblZipcode.Text = drEmp["zipcode"].ToString();
                    }
                }
                else
                {
                    lblUsername.Text = "No record found!";
                    lblName.Text = "No record found!";
                    lblEmail.Text = "No record found!";
                    lblPhone.Text = "No record found!";
                    lblStreet.Text = "No record found!";
                    lblZipcode.Text = "No record found!";
                }

                drEmp.Close();
                con.Close();
            }
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            // Check if username is stored in session
            if (Session["username"] == null)
            {
                // Redirect to login page or display error message
                Response.Redirect("~/Reengineer2023/sb_login.aspx");
                return;
            }

            // Get username from session
            string username = Session["username"].ToString();

            // Debugging: check value of username
            Response.Write("Username: " + username);

            // Redirect to update profile page
            Response.Redirect("~/Reengineer2023/sb_updateProfile.aspx?username=" + username);

        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    //String user = LoginName1.ToString();

        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //    con.Open();

        //    //string query = "Select * from [Customer] WHERE username = @username";
        //    string query = "Select * from [Customer] WHERE username = @username";
        //    SqlCommand cmd = new SqlCommand(query, con);

        //    cmd.Parameters.AddWithValue("@username", username);
        //    //String str = cmd.ExecuteReader().ToString();

        //    //lblUserProfile.Text = str.ToString();

        //    SqlDataReader drEmp = cmd.ExecuteReader();
        //    //string strDisplay = "";

        //    if (drEmp.HasRows)
        //    {
        //        while (drEmp.Read())
        //        {

        //            lblUsername.Text = drEmp["username"].ToString();
        //            lblName.Text = drEmp["name"].ToString();
        //            lblEmail.Text = drEmp["email"].ToString();
        //            lblPhone.Text = drEmp["phone"].ToString();
        //            lblStreet.Text = drEmp["street"].ToString();
        //            lblZipcode.Text = drEmp["zipcode"].ToString();
        //        }
        //        //lblUserProfile.Text = strDisplay;
        //    }
        //    else
        //    {
        //        //lblUserProfile.Text = "No record found!";
        //        lblUsername.Text = "No record found!";
        //        lblName.Text = "No record found!";
        //        lblEmail.Text = "No record found!";
        //        lblPhone.Text = "No record found!";
        //        lblStreet.Text = "No record found!";
        //        lblZipcode.Text = "No record found!";
        //    }

        //}

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
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

        //        string query = "Select * from [Customer] WHERE username = @username";
        //        SqlCommand cmd = new SqlCommand(query, con);
        //        cmd.Parameters.AddWithValue("@username", username);

        //        SqlDataReader drEmp = cmd.ExecuteReader();

        //        if (drEmp.HasRows)
        //        {
        //            while (drEmp.Read())
        //            {
        //                lblUsername.Text = drEmp["username"].ToString();
        //                lblName.Text = drEmp["name"].ToString();
        //                lblEmail.Text = drEmp["email"].ToString();
        //                lblPhone.Text = drEmp["phone"].ToString();
        //                lblStreet.Text = drEmp["street"].ToString();
        //                lblZipcode.Text = drEmp["zipcode"].ToString();
        //            }
        //        }
        //        else
        //        {
        //            lblUsername.Text = "No record found!";
        //            lblName.Text = "No record found!";
        //            lblEmail.Text = "No record found!";
        //            lblPhone.Text = "No record found!";
        //            lblStreet.Text = "No record found!";
        //            lblZipcode.Text = "No record found!";
        //        }

        //        drEmp.Close();
        //        con.Close();
        //    }
        //}

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (User.Identity.IsAuthenticated)
        //    {
        //        string username = User.Identity.Name;

        //        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //        using (SqlConnection con = new SqlConnection(connectionString))
        //        {
        //            string query = "SELECT * FROM [Customer] WHERE username = @username";
        //            using (SqlCommand cmd = new SqlCommand(query, con))
        //            {
        //                cmd.Parameters.AddWithValue("@username", username);
        //                con.Open();
        //                SqlDataReader reader = cmd.ExecuteReader();
        //                if (reader.HasRows)
        //                {
        //                    while (reader.Read())
        //                    {
        //                        lblName.Text = reader["name"].ToString();
        //                        lblEmail.Text = reader["email"].ToString();
        //                        lblPhone.Text = reader["phone"].ToString();
        //                        lblStreet.Text = reader["street"].ToString();
        //                        lblZipcode.Text = reader["zipcode"].ToString();
        //                    }
        //                }
        //                else
        //                {
        //                    lblName.Text = "No record found!";
        //                    lblEmail.Text = "No record found!";
        //                    lblPhone.Text = "No record found!";
        //                    lblStreet.Text = "No record found!";
        //                    lblZipcode.Text = "No record found!";
        //                }
        //                reader.Close();
        //            }
        //        }
        //    }
        //    else
        //    {
        //        Response.Redirect("sb_login.aspx");
        //    }
        //}

    }
}