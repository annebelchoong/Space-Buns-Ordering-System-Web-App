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
    public partial class adminCategories : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CategoryConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CategoryConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into Category values('" + txtCatName.Text + "','" + txtCatItemAmount.Text + "','"+ddlStatus.SelectedValue+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCatName.Text = "";
            txtCatItemAmount.Text = "";
            ddlStatus.SelectedValue = "Available";
        }

    }
}