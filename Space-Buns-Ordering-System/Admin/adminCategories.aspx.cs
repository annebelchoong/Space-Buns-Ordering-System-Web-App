using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Space_Buns_Ordering_System
{
    public partial class adminCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //con = new SqlConnection(strCon);
            //con.Open();

            //string strSearch = "SELECT * FROM [Category] WHERE ([categoryName] LIKE '%' + @categoryName + '%')";
            //string strsearch = txtSearchCategory.Text;
            //SqlCommand cmdSearch = new SqlCommand(strSearch, con);
            //cmdSearch.Parameters.AddWithValue("@categoryName", strsearch);
            //int intCOUNT = (int)cmdSearch.ExecuteScalar(); //return only one column one value 
            //GridView1.DataSource = intCOUNT.ToString();
            //GridView1.DataBind();
            ////lblTest.Text = intCOUNT.ToString();


            //con.Close();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();

                string strInsert = "INSERT INTO Category(categoryName, isAvailable) VALUES( "+ txtCatName0.Text + "','" + ddlStatus.SelectedItem.Value +")";
                SqlCommand cmdInsert = new SqlCommand(strInsert, con);
                //SqlParameter categoryName = new SqlParameter("@categoryName", "Fish");
                //SqlParameter isAvailable = new SqlParameter("@categoryName", ddlStatus.SelectedItem.Value);
                //cmdInsert.Parameters.Add(categoryName);
                //cmdInsert.Parameters.Add(isAvailable);
                cmdInsert.ExecuteNonQuery();

         


                con.Close();
            }
            


           

           


        }
    }
}