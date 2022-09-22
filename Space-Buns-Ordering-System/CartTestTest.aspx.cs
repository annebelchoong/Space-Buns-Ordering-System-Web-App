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
            if (e.CommandName == "Select")
            {
                string strId = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            }
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //con = new SqlConnection(strCon);
            //con.Open();

            //string productName = "SELECT name FROM Product";
            //Label product = DataList1.FindControl("lblProduct") as Label;
            ////lblTestingg.Text = product.Text;
            ////string name = product.Text;
            //SqlCommand cmdSearch = new SqlCommand(productName, con);
            ////cmdSearch.Parameters.AddWithValue("@ProductName", name);
            //string productTitle = cmdSearch.ExecuteScalar().ToString();

            //lblProductTitle.Text = productTitle.ToString();

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



            //con.Close();
            //int count = DataList1.Items.Count;
            //for (int i = 0; i < count; i++)
            //{
            //string product = (DataList1.FindControl("lblProducts") as Label).Text;
            //lblProductTitle.Text = "HELLO";
            //}
        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //con = new SqlConnection(strCon);
            //con.Open();

            //string productName = "SELECT name FROM Product WHERE(name = @ProductName)";
            //string product = (Repeater2.FindControl("lblProduct") as Label).Text;
            //SqlCommand cmdSearch = new SqlCommand(productName, con);
            //cmdSearch.Parameters.AddWithValue("@ProductName", product);
            //string productTitle = cmdSearch.ExecuteScalar().ToString();

            //lblProductTitle.Text = productTitle.ToString();


            lblProductTitle.Visible = true;


        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                if (e.Item.ItemIndex == 0)
                {
                    lblProductTitle.Text = "The email id for the customer is Goyal2@yahoo.com";
                }
                if (e.Item.ItemIndex == 1)
                {
                    lblProductTitle.Text = "The email id for the customer id meesha@gmail.com";
                }
                if (e.Item.ItemIndex == 2)
                {
                    lblProductTitle.Text = "The email id for the customer id  rahul@gmail.com";
                }
                if (e.Item.ItemIndex == 3)
                {
                    lblProductTitle.Text = "The email id for the customer id sonia@gmail.com";
                }
            }
        }

    }
}


