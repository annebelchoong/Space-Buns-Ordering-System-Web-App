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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void calDoB_SelectionChanged(object sender, EventArgs e)
        {
            txtDoB.Text = calDoB.SelectedDate.ToString();

        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into dbo.Customer value" +
                "('" +txtFirstName.Text+"', '"+txtLastName.Text+"', '"+txtEmail.Text+ "', '" +txtPhoneNo.Text + "', '" + txtAddress.Text + "', '" + txtPostCode.Text + "', '" + ddlState.SelectedValue.ToString() + "', '" + txtDoB.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblEditProfile.Visible = true;
            lblEditProfile.Text = "Your user profile save Succesfully!";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text = "";
            txtAddress.Text = "";
            txtPostCode.Text = "";
            ddlState.SelectedValue = "";
            txtDoB.Text = "";
        }
    }
}