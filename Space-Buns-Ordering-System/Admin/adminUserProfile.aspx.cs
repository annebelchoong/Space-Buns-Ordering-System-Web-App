using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System.Admin
{
    public partial class adminUserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = LoginName1.ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "Select * from [Customer] WHERE username = username";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@username", user);

            SqlDataReader drEmp = cmd.ExecuteReader();

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

            }
            else
            {

                lblName.Text = "No record found!";
                lblEmail.Text = "No record found!";
                lblPhone.Text = "No record found!";
                lblStreet.Text = "No record found!";
                lblZipcode.Text = "No record found!";
            }

        }
    }

}