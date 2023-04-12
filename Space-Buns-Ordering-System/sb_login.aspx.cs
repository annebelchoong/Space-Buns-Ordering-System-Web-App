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
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            //string mainConn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            //SqlConnection sqlConn = new SqlConnection(mainConn);
            //string sqlQuery = "select * from [dbo].[Customer] where email=@email and password=@password";
            //SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn);
            //sqlConn.Open();
            //sqlComm.Parameters.AddWithValue("@email", );
        }
    }
}