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
    public partial class CartTestTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RblSetSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (rblSetSelection.SelectedItem.Value == "A Lar Carte")
                {
                    //Accordion1.Visible = false;
                    Pane2.Visible = false;
                    Pane3.Visible = false;
                    lblTest.Text = "A Lar Carte is selected";
                }
                else
                {
                    Pane2.Visible = true;
                    Pane3.Visible = true;
                }

            }
        }

        protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "Select")
            {
                string strId = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            }
        }

            protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string productName = "SELECT name FROM Product WHERE(name = @ProductName)";
            Label product = DataList1.FindControl("lblProduct") as Label;
            lblTestingg.Text = product.Text;
            string name = product.Text;
            SqlCommand cmdSearch = new SqlCommand(productName, con);
            cmdSearch.Parameters.AddWithValue("@ProductName", name);
            string productTitle = cmdSearch.ExecuteScalar().ToString();

            lblProductTitle.Text = productTitle.ToString();

            ////int count = DataList1.Items.Count;
            ////for (int i = 0; i < count; i++)
            ////{
            //    string productName = "SELECT name FROM Product WHERE(name = @ProductName)";
            //    Label product = DataList1.FindControl("lblProduct") as Label;
            //    //Label product = DataList1.Items[i].FindControl("lblProduct") as Label;
            //string name = product.Text;
            //    SqlCommand cmdSearch = new SqlCommand(productName, con);
            //    cmdSearch.Parameters.AddWithValue("@ProductName", name);
            //    string productTitle = cmdSearch.ExecuteScalar().ToString();

            //    lblProductTitle.Text = productTitle.ToString();

            //pnlCustomization.DataBind();
            ////}



            con.Close();
            //int count = DataList1.Items.Count;
            //for (int i = 0; i < count; i++)
            //{
            //string product = (DataList1.FindControl("lblProducts") as Label).Text;
            //lblProductTitle.Text = "HELLO";
            //}
        }

    }
}