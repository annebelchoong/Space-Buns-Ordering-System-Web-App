using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System
{
    public partial class sb_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      



        }

        protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Response.Redirect("sb_productDetails.aspx?name=" + e.CommandArgument.ToString());
            }

        }

        protected void DataList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //    protected void RblSetSelection_SelectedIndexChanged(object sender, EventArgs e)
        //    {
        //        //if (IsPostBack)
        //        //{
        //        if (rblSetSelection.SelectedItem.Value == "A Lar Carte")
        //        {
        //            //Accordion1.Visible = false;
        //            Pane2.Visible = false;
        //            Pane3.Visible = false;
        //            lblTest.Text = "A Lar Carte is selected";
        //        }
        //        else
        //        {
        //            Pane2.Visible = true;
        //            Pane3.Visible = true;
        //        }

        //        //}
        //    }
    }
}