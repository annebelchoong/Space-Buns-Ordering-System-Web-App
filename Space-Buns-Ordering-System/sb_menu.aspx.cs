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
            if (!IsPostBack)
            {
                FilterDataList(null, null);
            }

        }

        protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Response.Redirect("sb_productDetails.aspx?name=" + e.CommandArgument.ToString());
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.ToLower();
            FilterDataList(searchTerm, null);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.ToLower();
            FilterDataList(searchTerm, null);
        }

        protected void lnkCategory_Click(object sender, EventArgs e)
        {
            LinkButton lnkButton = (LinkButton)sender;
            string category = lnkButton.Text;
            lblCategoryTitle.Text = category;
            FilterDataList(null, category);
        }

        //protected string GetIcon(string categoryName)
        //{
        //   switch (categoryName.ToLower())
        //    {
        //        case "chicken":
        //            return "chickenIcon.png";
        //        case "beef":
        //            return "beefIcon.png";
        //        case "fish":
        //            return "fishIcon.png";
        //        case "lamb":
        //            return "lambIcon.png";
        //        case "meatless":
        //            return "veganIcon.png";
        //        default:
        //            return "";
        //    }
        //}//

        private void FilterDataList(string searchTerm, string category)
        {
            string selectCommand = "SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID";

            if (!string.IsNullOrEmpty(searchTerm))
            {
                selectCommand += string.Format(" WHERE LOWER(Product.name) LIKE '%{0}%' OR LOWER(Product.description) LIKE '%{0}%'", searchTerm);
            }
            else if (!string.IsNullOrEmpty(category))
            {
                selectCommand += string.Format(" WHERE LOWER(Category.categoryName) = '{0}'", category.ToLower());
            }

            SqlDataSource1.SelectCommand = selectCommand;
            SqlDataSource1.DataBind();
        }
    }
}