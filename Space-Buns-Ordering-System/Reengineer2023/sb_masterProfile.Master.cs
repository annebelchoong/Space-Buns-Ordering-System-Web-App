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

        //public Label lblUsername
        //{
        //    get
        //    {
        //        return this.lblUsername;
        //    }
        //}

        //public Image imgUser
        //{
        //    get
        //    {
        //        return this.imgUser;
        //    }
        //}

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (Session["Username"] != null)
        //    {

        //    }
        //}

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

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //SqlConnection conn;
            //SqlDataAdapter da;
            //DataSet ds;
            //SqlCommand cmd;
            //string conStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            //using (SqlConnection conn = new SqlConnection(conStr))
            //{
            //    string sql = "INSERT INTO Customer(profilePic) VALUES(@profilePic)";
            //    using (SqlCommand cmd = new SqlCommand(sql, conn))
            //    {
            //        cmd.Parameters.AddWithValue("@proficPic", Path.GetFileName(imgUpload.FileName));
            //        conn.Open();
            //        cmd.ExecuteNonQuery();
            //        conn.Close();
            //    }
            //}

            //int intimagesize;

            //string strimagetype;
            //Stream imagestream;
            //FileStream fs = File.OpenRead(Request.PhysicalApplicationPath + "/media/profile/profile_pic.jpg");
            //byte[] imagecontent;

            //if (imgUpload.PostedFile.ContentLength > 0)
            //{
            //    intimagesize = imgUpload.PostedFile.ContentLength;
            //    strimagetype = imgUpload.PostedFile.ContentType;
            //    imagestream = imgUpload.PostedFile.InputStream;

            //    imagecontent = new byte[intimagesize];
            //    int intstatus;
            //    intstatus = imagestream.Read(imagecontent, 0, intimagesize);
            //}
            //else
            //{
            //    strimagetype = "image/x-png";
            //    imagecontent = new byte[fs.Length];
            //    fs.Read(imagecontent, 0, imagecontent.Length);
            //}

            //SqlConnection objconn = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
            //SqlCommand objcmd;
            //string strcmd;

            //strcmd = "insert into customer (profilePic) values (@profilePic)";

            //objcmd = new SqlCommand(strcmd, objconn);

            //SqlParameter prmpersonimage = new SqlParameter("@profilePic", SqlDbType.Image);

            //prmpersonimage.Value = imagecontent;

            //objcmd.Parameters.Add(prmpersonimage);

            //lblMessage.Visible = true;

            //try
            //{
            //    objconn.Open();
            //    objcmd.ExecuteNonQuery();
            //    objconn.Close();
            //    //lblmessage.text = "imageadded!";
            //}
            //catch
            //{
            //    //lblmessage.text = "error occured the image has not been added to the database!";
            //}


            //    try
            //    {
            //        string filename = Path.GetFileName(imgUpload.PostedFile.FileName);
            //        imgUpload.SaveAs(Server.MapPath("~/Images/" + filename));
            //        con = new SqlConnection(connStr);
            //        con.Open();
            //        cmd = new SqlCommand("insert into Image_Details (ImageName,Image) values(@ImageName,@Image)", con);
            //        cmd.Parameters.AddWithValue("@ImageName", filename);
            //        cmd.Parameters.AddWithValue("@Image", "Images/" + filename);
            //        cmd.ExecuteNonQuery();
            //        ImageData();
            //    }
            //    catch (Exception ex)
            //    {
            //        btnUpload.Text = ex.Message;
            //    }
            //}
            //protected void ImageData()
            //{
            //    con = new SqlConnection(connStr);
            //    con.Open();
            //    da = new SqlDataAdapter("select * from Image_Details", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    //gvImage.DataSource = ds;
            //    //gvImage.DataBind();
            //}

            //string filename = (Server.MapPath(Master.imgUser.imageUrl));
            //string imgPath = filename;
            //FileInfo file = new FileInfo(imgPath);
            //if (file.Exists)
            //{
            //    file.Delete();
            //}

            //if (ImgUpload.PostedFile != null)
            //{
            //    string strpath = Path.GetExtension(ImgUpload.FileName);
            //    if (strpath != ".jpg" && strpath != ".jepg" && strpath != ".gif" && strpath != ".png")
            //    {
            //        lblEditImg.Text = "Only image files allowed (jpg, jpeg, gif, png) !";
            //        lblEditImg.ForeColor = System.Drawing.Color.Red;
            //    }

            //    string fileImg = Path.GetFileName(ImgUpload.PostedFile.FileName);
            //    ImgUpload.SaveAs(Server.MapPath("../Media/Profile/") + fileImg);

            //    string mainconn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            //    SqlConnection sqlconn = new SqlConnection(mainconn);
            //    string sqlQuery = "update [dbo].[Customer] set profilePic='" + "../Media/Profile/" + fileImg + "' where email = '" + LoginName1 + "'";
            //    sqlconn.Open();
            //    SqlCommand sqlCom = new SqlCommand(sqlQuery, sqlconn);
            //    sqlCom.Parameters.AddWithValue("@profilePic", "../Media/Profile/" + fileImg);
            //    sqlCom.ExecuteNonQuery();
            //    lblEditImg.Text = "User profile image is updated Successfully";
            //}
            //else
            //{
            //    lblEditImg.Text = "Failed to update User Image!";
            //}
        }
    }
}