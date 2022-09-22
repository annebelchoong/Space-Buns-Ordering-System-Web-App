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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (PreviousPage.IsCrossPagePostBack)
            //{
            //    Label dateSelected = PreviousPage.FindControl("lblProduct") as Label;

            //    lbltest= dateSelected;
            //}


            string v = Request.QueryString["product"];
            string g = Request.QueryString["name"];
            if(v == null)
            {
                lbltest.Text = "fail";
            }
            else
            {
                lbltest.Text = "tesinnnnnnnnng" + v + g;
            }
            
        }

       
    }
}