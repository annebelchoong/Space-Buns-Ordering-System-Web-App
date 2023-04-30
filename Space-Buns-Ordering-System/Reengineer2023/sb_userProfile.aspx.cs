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
            String user = LoginName1.ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //string query = "Select * from [Customer] WHERE username = @username";
            string query = "Select * from [Customer] WHERE username = username";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@username", user);
            //String str = cmd.ExecuteReader().ToString();

            //lblUserProfile.Text = str.ToString();

            SqlDataReader drEmp = cmd.ExecuteReader();
            //string strDisplay = "";

            if (drEmp.HasRows)
            {
                while (drEmp.Read())
                {

                    lblName.Text = drEmp["name"].ToString();
                    lblEmail.Text = drEmp["email"].ToString();
                    lblPhone.Text = drEmp["phone"].ToString();
                    lblStreet.Text = drEmp["street"].ToString();
                    lblZipcode.Text = drEmp["zipcode"].ToString();
                }
                //lblUserProfile.Text = strDisplay;
            }
            else
            {
                //lblUserProfile.Text = "No record found!";
                lblName.Text = "No record found!";
                lblEmail.Text = "No record found!";
                lblPhone.Text = "No record found!";
                lblStreet.Text = "No record found!";
                lblZipcode.Text = "No record found!";
            }

        }
    
    }
}