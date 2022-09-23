using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System
{
    public partial class sb_editProfile : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calDoB_SelectionChanged(object sender, EventArgs e)
        {
            txtDoB.Text = calDoB.SelectedDate.ToString();

        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {

            //Session["username"] = txtUsername.Text;
            String user = LoginName1.ToString();
            //lblUsername1.Text = user;

            SqlConnection con;
            string sss = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(sss);
            con.Open();
            string query = "INSERT INTO Customer(email, phone, street, zipcode, name, password, username) VALUES(@email, @phone, @street, @zipcode, @name, @password, @username)";


            SqlCommand cmd = new SqlCommand(query, con);
            string state = ddlState.SelectedItem.Value;
            cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@username", user);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            //cmd.Parameters.AddWithValue("@username", "text");
            cmd.Parameters.AddWithValue("@password", "asdfasdf");
            //cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
            cmd.Parameters.AddWithValue("@street", txtAddress.Text);
            cmd.Parameters.AddWithValue("@dateofbirth", calDoB.SelectedDate.ToString());


            int insert = cmd.ExecuteNonQuery();
            con.Close();


            if (insert > 0)
            {
                //lblResults.Text = "Insert successfully";
                string script = "alert('Profile saved!');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                Response.Redirect("sb_userProfile.aspx");
            }
            else
            {
                lblResults.Text = "fail to insert";
            }
            //SqlCommand cmd = new SqlCommand("insert into dbo.Customer value" +
            //    "('" +txtFirstName.Text+"', '"+txtLastName.Text+"', '"+txtEmail.Text+ "', '" +txtPhoneNo.Text + "', '" + txtAddress.Text + "', '" + txtPostCode.Text + "', '" + ddlState.SelectedValue.ToString() + "', '" + txtDoB.Text + "')", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //lblEditProfile.Visible = true;
            //lblEditProfile.Text = "Your user profile save Succesfully!";
            //txtFirstName.Text = "";
            //txtLastName.Text = "";
            //txtEmail.Text = "";
            //txtPhoneNo.Text = "";
            //txtAddress.Text = "";
            //txtPostCode.Text = "";
            //ddlState.SelectedValue = "";
            //txtDoB.Text = "";

            //string fname = txtFirstName.Text;
            //string lname = txtLastName.Text;
            //string email = txtEmail.Text;
            //int phoneNo = Convert.ToInt32(txtPhoneNo.Text);
            //string address = txtAddress.Text;
            //int postcode = Convert.ToInt32(txtPostCode.Text);
            //string state = ddlState.SelectedValue.ToString();
            //string dob = txtDoB.Text;

            //string cs = "data source = .; database = SpaceBunsDB; Integrated security = true";
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //SqlConnection con = new SqlConnection(cs);
            //con.Open();

            //string query = string.Format("insert into Customer values ('{0}','{0}','{0@gmail.com}','{0}','{0}','{51400}','{Perak}','{0}' )"
            //    ,fname, lname,email,phoneNo,address,postcode,state, dob);
            //string query = "INSERT INTO Customer(email, phone, street, state, zipcode, firstName, lastName, dateOfBirth, customerId, username, password) VALUES(@email, @phone, @street, @state, @zipcode, @firstname, @lastname, @dateofbirth, @customerid, @username, @password)";


            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text); 
            //cmd.Parameters.AddWithValue("@lastname", txtLastName.Text); 
            //cmd.Parameters.AddWithValue("@email", txtEmail.Text); 
            //cmd.Parameters.AddWithValue("@username", "text"); 
            //cmd.Parameters.AddWithValue("@password", "asdfasdf"); 
            //cmd.Parameters.AddWithValue("@customerid", txtCustomerId.Text); 
            //cmd.Parameters.AddWithValue("@state", ddlState.SelectedItem.Value);
            //cmd.Parameters.AddWithValue("@zipcode", txtPostCode.Text);
            //cmd.Parameters.AddWithValue("@phone", txtPhoneNo.Text);
            //cmd.Parameters.AddWithValue("@street", txtAddress.Text);
            //cmd.Parameters.AddWithValue("@dateofbirthh", txtDoB.Text);
            //cmd.Parameters.AddWithValue("@firstname", "Asdf");
            //cmd.Parameters.AddWithValue("@lastname", "Asdf");
            //cmd.Parameters.AddWithValue("@email", "asdf@gmail.com");
            //cmd.Parameters.AddWithValue("@username", "text");
            //cmd.Parameters.AddWithValue("@password", "asdfasdf");
            //cmd.Parameters.AddWithValue("@customerid", 2);
            //cmd.Parameters.AddWithValue("@state", "Asdf");
            //cmd.Parameters.AddWithValue("@zipcode", 65462);
            //cmd.Parameters.AddWithValue("@phone", 0123456789);
            //cmd.Parameters.AddWithValue("@street", "Asdf");
            //cmd.Parameters.AddWithValue("@dateofbirth", DateTime.Now);


            //int insert = cmd.ExecuteNonQuery();
            //con.Close();


            //if (insert > 0)
            //{
            //    lblResults.Text = "Insert successfully";
            //}
            //else
            //{
            //    lblResults.Text = "Ifail to insert";
            //}
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Save!)", true);

            //txtFirstName.Text = "";
            //txtLastName.Text = "";
            //txtEmail.Text = "";
            //txtPhoneNo.Text = "";
            //txtAddress.Text = "";
            //txtPostCode.Text = "";
            //ddlState.SelectedValue = "";
            //txtDoB.Text = "";
        }


    }
}