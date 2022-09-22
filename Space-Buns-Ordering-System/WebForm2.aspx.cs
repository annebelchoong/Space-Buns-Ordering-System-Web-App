using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();
            string query = "INSERT INTO Customer(email, phone, street, state, zipcode, firstName, lastName, dateOfBirth, customerId, username, password) VALUES(@email, @phone, @street, @state, @zipcode, @firstname, @lastname, @dateofbirth, @customerid, @username, @password)";


            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@firstname", "Asdf");
            cmd.Parameters.AddWithValue("@lastname", "Asdf");
            cmd.Parameters.AddWithValue("@email", "asdf@gmail.com");
            cmd.Parameters.AddWithValue("@username", "text");
            cmd.Parameters.AddWithValue("@password", "asdfasdf");
            cmd.Parameters.AddWithValue("@customerid", 90);
            cmd.Parameters.AddWithValue("@state", "Asdf");
            cmd.Parameters.AddWithValue("@zipcode", 65462);
            cmd.Parameters.AddWithValue("@phone", 0123456789);
            cmd.Parameters.AddWithValue("@street", "Asdf");
            cmd.Parameters.AddWithValue("@dateofbirth", DateTime.Now);


            int insert = cmd.ExecuteNonQuery();
            con.Close();


            if (insert > 0)
            {
                lblResults.Text = "Insert successfully";
            }
            else
            {
                lblResults.Text = "fail to insert";
            }
        }
    }
}