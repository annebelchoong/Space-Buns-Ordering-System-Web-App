using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Space_Buns_Ordering_System
{
    public partial class sb_masterProfile : System.Web.UI.MasterPage
    {
        public Label lblUsername
        {
            get
            {
                return this.lblUsername;
            }
        }

        public Image imgUser
        {
            get
            {
                return this.imgUser;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {

            }
        }

        

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //string filename = (Server.MapPath(Master.imgUser.imageUrl));
            //string imgPath = filename;
            //FileInfo file = new FileInfo(imgPath);
            //if (file.Exists)
            //{
            //    file.Delete();
            //}

            if (ImgUpload.PostedFile != null)
            {
                string strpath = Path.GetExtension(ImgUpload.FileName);
                if (strpath != ".jpg" && strpath != ".jepg" && strpath != ".gif" && strpath != ".png")
                {
                    lblEditImg.Text = "Only image files allowed (jpg, jpeg, gif, png) !";
                    lblEditImg.ForeColor = System.Drawing.Color.Red;
                }

                string fileImg = Path.GetFileName(ImgUpload.PostedFile.FileName);
                ImgUpload.SaveAs(Server.MapPath("../Media/Profile/") + fileImg);

                string mainconn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlQuery = "update [dbo].[Customer] set profilePic='" + "../Media/Profile/" + fileImg + "' where email = '" + LoginName1 + "'";
                sqlconn.Open();
                SqlCommand sqlCom = new SqlCommand(sqlQuery, sqlconn);
                sqlCom.Parameters.AddWithValue("@profilePic", "../Media/Profile/" + fileImg);
                sqlCom.ExecuteNonQuery();
                lblEditImg.Text = "User profile image is updated Successfully";
            }
            else
            {
                lblEditImg.Text = "Failed to update User Image!";
            }
        }
    }
}