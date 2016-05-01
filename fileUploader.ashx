<%@ WebHandler Language="C#" Class="fileUploader" %>

using System;
using System.Web;
using System.IO;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Web.SessionState;

public class fileUploader : IHttpHandler, IRequiresSessionState
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string pathToSave = "MediaUploader/";
        try
        {
            string dirFullPath = HttpContext.Current.Server.MapPath("~/MediaUploader/");
            string[] files;
            int numFiles;
            files = Directory.GetFiles(dirFullPath);
            numFiles = files.Length;
            numFiles = numFiles + 1;
            string str_image = "";

            foreach (string s in context.Request.Files)
            {
                HttpPostedFile file = context.Request.Files[s];
                string fileName = file.FileName;
                string fileExtension = file.ContentType;

                if (!string.IsNullOrEmpty(fileName))
                {
                    fileExtension = Path.GetExtension(fileName);
                    str_image = "MyPHOTO_" + numFiles.ToString() + fileExtension;
                    string pathToSave_100 = HttpContext.Current.Server.MapPath("~/MediaUploader/") + str_image;
                    pathToSave += str_image;
                    file.SaveAs(pathToSave_100);
                }
            }

            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand updateImageLink = new MySqlCommand())
                {
                    updateImageLink.CommandType = CommandType.Text;
                    updateImageLink.Connection = conn;
                    updateImageLink.CommandText = "UPDATE data SET ImageLink = @ImageLink WHERE EmailId = @EmailId";

                    updateImageLink.Parameters.AddWithValue("@ImageLink", pathToSave);
                    updateImageLink.Parameters.AddWithValue("@EmailId", HttpContext.Current.Session["email"].ToString());

                    conn.Open();
                    updateImageLink.ExecuteNonQuery();
                    conn.Close();
                }
            }

            context.Response.Write(str_image);
        }
        catch (Exception ac)
        {

        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}