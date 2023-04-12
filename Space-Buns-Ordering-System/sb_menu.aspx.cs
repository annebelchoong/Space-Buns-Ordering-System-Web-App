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
    }
}