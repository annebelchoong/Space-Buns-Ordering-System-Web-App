using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty((string)Session["SuccessMessage"]))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", $"alert('{Session["SuccessMessage"].ToString()}');", true);
                Session["SuccessMessage"] = null;
            }
        }
    }
}