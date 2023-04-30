using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool IsUserAuthenticated()
        {
            string mainConn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(mainConn);
            string sqlQuery = "select * from [dbo].[Customer] where username=@username and password=@password";
            SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn);
            sqlComm.Parameters.AddWithValue("@username", txtUsername.Text);
            sqlComm.Parameters.AddWithValue("@password", txtPassword.Text);
            sqlConn.Open();
            SqlDataReader sqlReader = sqlComm.ExecuteReader();
            bool isAuthenticated = sqlReader.HasRows;
            sqlReader.Close();
            sqlConn.Close();
            return isAuthenticated;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsUserAuthenticated())
            {
                Session["SuccessMessage"] = "Successfully logged in.";
                Response.Redirect("~/Reengineer2023/sb_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Invalid username or password.');", true);
            }

        }


        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    string mainConn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
        //    SqlConnection sqlConn = new SqlConnection(mainConn);
        //    string sqlQuery = "select * from [dbo].[Customer] where username=@username and password=@password";
        //    SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn);
        //    sqlComm.Parameters.AddWithValue("@username", txtUsername.Text);
        //    sqlComm.Parameters.AddWithValue("@password", txtPassword.Text);
        //    sqlConn.Open();
        //    SqlDataReader sqlReader = sqlComm.ExecuteReader();
        //    if (sqlReader.HasRows)
        //    {
        //        // Login successful, redirect to main page
        //        Response.Redirect("sb_index.aspx");
        //    }
        //    else
        //    {
        //        // Login unsuccessful, display alert message
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Invalid username or password.');", true);
        //    }
        //    sqlReader.Close();
        //    sqlConn.Close();
        //}
    }
}