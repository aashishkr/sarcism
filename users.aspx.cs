using System;
using System.IO;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Net;
using System.Net.Mail;
using System.Collections.Generic;
using System.Web.Services;

public partial class users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 0)
            Response.Redirect("index.aspx");

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand fillPageEntries = new MySqlCommand())
            {
                fillPageEntries.CommandType = CommandType.Text;
                fillPageEntries.Connection = conn;
                fillPageEntries.CommandText = "select FirstName, ImageLink FROM data WHERE EmailId = @EmailId";

                fillPageEntries.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();

                MySqlDataReader reader = fillPageEntries.ExecuteReader();

                if (reader.Read())
                {
                    user_name.Text = reader["FirstName"].ToString();
                    userImageThumbnail.ImageUrl = reader["ImageLink"].ToString();
                }
                conn.Close();
            }
        }
    }

    protected void ClearSessionVariables(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("index.aspx");
    }

    private static void CommentButton_Click(object sender, EventArgs e)
    {
        Button commentButton = (Button)sender;
    }

    protected void GoToProfilePage(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx?id=" + Session["email"].ToString());
    }
    [WebMethod]
    public static List<string[]> AllReg()
    {
        List<string[]> RegList = new List<string[]>();
        using (MySqlConnection exmp = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand getAllItems = new MySqlCommand())
            {
                getAllItems.Connection = exmp;
                getAllItems.CommandType = CommandType.Text;
                getAllItems.CommandText = "SELECT * FROM data";

                exmp.Open();
                MySqlDataReader reader = getAllItems.ExecuteReader();
                while (reader.Read())
                {
                    string[] temp = new string[8];
                    //Name
                    temp[0] = reader[2].ToString();
                    //Last Name
                    temp[1] = reader[3].ToString();
                    //Batch
                    temp[2] = reader[6].ToString();
                    //Image URl
                    temp[3] = reader[16].ToString();
                    //Location
                    temp[4] = reader[12].ToString();
                    temp[5] = reader[13].ToString();
                    temp[6] = reader[14].ToString();
                    //UserID
                    temp[7] = reader[0].ToString();

                    RegList.Add(temp);
                }
            }
        }
        return RegList;
    }
       
}