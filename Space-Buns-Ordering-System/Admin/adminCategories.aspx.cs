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
    public partial class adminCategories : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Category values('" + txtCatName.Text + "','" + ddlStatus.SelectedValue + "','" + txtCatItemAmount.Text + "')";
                DataBind();
                cmd.ExecuteNonQuery();
                con.Close();
            

        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {
            txtCatName.Text = "";
            txtCatItemAmount.Text = "";
            ddlStatus.SelectedValue = "Available";
        }
    }
}