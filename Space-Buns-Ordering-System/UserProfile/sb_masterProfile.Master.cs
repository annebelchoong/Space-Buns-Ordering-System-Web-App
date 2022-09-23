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
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
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
                Image2.ImageUrl = "profile_pic.jpg";
            }
            //int intImageSize;

            //String strImageType;
            //Stream ImageStream;
            //FileStream fs = File.OpenRead(Request.PhysicalApplicationPath + "/Media/Profile/profile_pic.jpg");
            //Byte[] ImageContent;

            //if (imgUpload.PostedFile.ContentLength > 0)
            //{
            //    intImageSize = imgUpload.PostedFile.ContentLength;
            //    strImageType = imgUpload.PostedFile.ContentType;
            //    ImageStream = imgUpload.PostedFile.InputStream;

            //    ImageContent = new Byte[intImageSize];
            //    int intStatus;
            //    intStatus = ImageStream.Read(ImageContent, 0, intImageSize);
            //}
            //else
            //{
            //    strImageType = "image/x-png";
            //    ImageContent = new Byte[fs.Length];
            //    fs.Read(ImageContent, 0, ImageContent.Length);
            //}

            //SqlConnection objConn = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
            //SqlCommand objCmd;
            //string strCmd;

            //strCmd = "INSERT INTO Customer (profilePic) VALUES (@profilePic)";

            //objCmd = new SqlCommand(strCmd, objConn);

            //SqlParameter prmPersonImage = new SqlParameter("@profilePic", SqlDbType.Image);

            //prmPersonImage.Value = ImageContent;

            //objCmd.Parameters.Add(prmPersonImage);

            //lblMessage.Visible = true;

            //try
            //{
            //    objConn.Open();
            //    objCmd.ExecuteNonQuery();
            //    objConn.Close();
            //    lblMessage.Text = "ImageAdded!";
            //}
            //catch
            //{
            //    lblMessage.Text = "Error occured the image has not been added to the database!";
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