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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Media/Profile/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            imgUpload.SaveAs(folderPath + Path.GetFileName(imgUpload.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Media/Profile/" + Path.GetFileName(imgUpload.FileName);


            if (imgUpload.FileName != null)
            {
                Image2.ImageUrl = Image1.ImageUrl;
            }
            else
            {
                Image2.ImageUrl = "../Media/Profile/profile_pic.jpg";
            }
        }
    }
    
}