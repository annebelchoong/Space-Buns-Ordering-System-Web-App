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
    public partial class adminBranches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void CreateNewBranch()
        {
            //Create connection
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            //open connection
            con.Open();

            string strInsert = "Insert into Branch (branchLocation, branchAddress, activeStatus)" +
                   " Values (@Location, @Address, @Status)";
            SqlCommand cmdInsert = new SqlCommand(strInsert, con);
            //cmdInsert.Parameters.AddWithValue("@empID", 12);
            cmdInsert.Parameters.AddWithValue("@Location", branchLocationInput.Text.ToString());
            cmdInsert.Parameters.AddWithValue("@Address", branchAddressInput.Text.ToString());
            cmdInsert.Parameters.AddWithValue("@Status", branchSetActive.Checked ? true : false);

            int intInsertStatus = cmdInsert.ExecuteNonQuery();
            //executenonquery = return noOfROws (records) that are affected in the database 

            if (intInsertStatus > 0)
            {
                lblDisplayMsg.Text = "Branch Created Successfully";
            }
            else
            {
                lblDisplayMsg.Text = "Something went wrong. Please try again.";
            }

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (branchLocationInput.Text.Length == 0 || branchAddressInput.Text.Length == 0)
            {
                lblError.Visible = true;
                lblError.Text = "Fields cannot be empty!";
            }
            else
            {
                CreateNewBranch();
                lblError.Visible = false;
                branchLocationInput.Text = null;
                branchAddressInput.Text = null;
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}