using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class sb_productDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                Response.Redirect("sb_cart.aspx?name=" + e.CommandArgument.ToString());
            }
        }

        protected void btnDecrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity > 1)
            {
                (DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity - 1).ToString();

            }

        }

        protected void btnIncrement_onClick(object sender, EventArgs e)
        {

            int quantity = Convert.ToInt32((DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text);
            if (quantity < 99)
            {

                (DataList1.Items[0].FindControl("txtQuantity") as TextBox).Text = (quantity + 1).ToString();
            }


        }

    }
}