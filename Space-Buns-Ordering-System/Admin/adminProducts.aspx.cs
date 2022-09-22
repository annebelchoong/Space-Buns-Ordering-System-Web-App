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
    public partial class adminProducts : System.Web.UI.Page
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
            cmd.CommandText = "insert into Product values('" + ddlProdStatus.SelectedValue + "','" + txtProdName.Text + "','" + FileUpload1.FileName + "','" + txtProdQuantity.Text + "','" + txtProdPrice.Text + "','" + txtProdDesc.Text + "')";
            DataBind();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtProdName.Text = "";
            txtProdDesc.Text = "";
            txtProdPrice.Text = "";
            txtProdQuantity.Text = "";
            FileUpload1.Attributes.Clear();
            ddlProdStatus.SelectedValue = "Chicken";
            ddlStatus.SelectedValue = "Available";
        }
    }
}