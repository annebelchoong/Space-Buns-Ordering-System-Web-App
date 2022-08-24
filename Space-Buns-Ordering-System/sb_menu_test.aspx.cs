using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RblSetSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
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

            //}
        }
    }
}