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

public partial class profile : System.Web.UI.Page
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
                    u_name.Text = user_name.Text = user_name1.Text = reader["FirstName"].ToString();
                    Session.Add("firstName", u_name.Text);
                    userImageThumbnail.ImageUrl = reader["ImageLink"].ToString();
                }
                conn.Close();
            }
            using (MySqlCommand mAIL = new MySqlCommand())
            {
                mAIL.CommandType = CommandType.Text;
                mAIL.Connection = conn;
                mAIL.CommandText = "SELECT FirstName, LastName, FeedText, ImageLink, TimeStamp, data.EmailId FROM newsfeed, data where newsfeed.EmailId = data.EmailId";

                conn.Open();
                MySqlDataReader reader = mAIL.ExecuteReader();
                while (reader.Read())
                {
                    AddFeedToPage(reader["EmailId"].ToString(), reader["FirstName"].ToString() + " " + reader["LastName"].ToString(), reader["FeedText"].ToString(), reader["ImageLink"].ToString(), reader["TimeStamp"].ToString(), feedsPanel);
                }
            }
        }
    }

    protected void SubmitPost_Click(object sender, EventArgs e)
    {
        if (NewFeed.Text == null || NewFeed.Text == "")
            return;
        string val = postType.SelectedItem.Text;
        string m2 = mailTo.SelectedItem.Text;
        if (val == "--Select type of Post--" && m2 == "--Select Recipients--")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select PostType and Reciepients')", true);
            return;
        }
        else if (val == "--Select type of Post--")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select PostType')", true);
            return;
        }
        else if (m2 == "--Select Recipients--")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select Reciepients')", true);
            return;
        }
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand mAIL = new MySqlCommand())
            {
                
                if (m2 == "Do not mail")
                {

                }
                else if (m2 == "Email a Batch")
                {
                    mAIL.CommandType = CommandType.Text;
                    mAIL.Connection = conn;
                    mAIL.CommandText = "SELECT FirstName, LastName, EmailId,Technical,General,Openings,Batch FROM data";
                    string m3 = batchYr.Text;
                    conn.Open();
                    MySqlDataReader reader = mAIL.ExecuteReader();
                    while (reader.Read())
                    {
                        if (reader[val].ToString() == "1" && m3.Equals(reader["Batch"].ToString()))
                        {
                            SendEmailToMe(reader["EmailId"].ToString(), reader["FirstName"].ToString() + " " + reader["LastName"].ToString(), NewFeed.Text);
                        }
                    }
                }
                else if (m2 == "Email Everyone")
                {
                    mAIL.CommandType = CommandType.Text;
                    mAIL.Connection = conn;
                    mAIL.CommandText = "SELECT FirstName, LastName, EmailId,Technical,General,Openings FROM data";

                    conn.Open();
                    MySqlDataReader reader = mAIL.ExecuteReader();
                    while (reader.Read())
                    {
                        if (reader[val].ToString() == "1")
                        {
                            SendEmailToMe(reader["EmailId"].ToString(), reader["FirstName"].ToString() + " " + reader["LastName"].ToString(), NewFeed.Text);
                        }
                    }
                }
            }
        }
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            string timeStamp = DateTime.Now.ToString();
            using (MySqlCommand insertFeed = new MySqlCommand())
            {
                insertFeed.CommandType = CommandType.Text;
                insertFeed.Connection = conn;
                insertFeed.CommandText = "INSERT INTO newsfeed(EmailId, FeedText, TimeStamp) values(@EmailId, @FeedText, @TimeStamp)";


                insertFeed.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                insertFeed.Parameters.AddWithValue("@FeedText", NewFeed.Text);
                insertFeed.Parameters.AddWithValue("@TimeStamp", timeStamp);

                conn.Open();
                insertFeed.ExecuteNonQuery();
                conn.Close();
            }
            string userImageLink = null;
            using (MySqlCommand getImageLink = new MySqlCommand())
            {
                getImageLink.CommandType = CommandType.Text;
                getImageLink.Connection = conn;
                getImageLink.CommandText = "select ImageLink from data where EmailId = @EmailId";

                getImageLink.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();

                MySqlDataReader reader = getImageLink.ExecuteReader();
                if (reader.Read())
                    userImageLink = reader["ImageLink"].ToString();

            }
            AddFeedToPage(Session["email"].ToString(), Session["FullName"].ToString(), NewFeed.Text, userImageLink, timeStamp, feedsPanel);
        }
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Query has been posted.')", true);
        NewFeed.Text = null;
        
    }
    protected void SendEmailToMe(string email, string name, string txt)
    {
        MailMessage message = new MailMessage();

        message.From = new MailAddress("no-reply@csesociety.in");

        message.To.Add(email);

        message.Subject = name; // Add subject of the email
        message.Body = txt; // Add body of the message
        message.Priority = MailPriority.High;

        SmtpClient mailClient = new SmtpClient("relay-hosting.secureserver.net");
        mailClient.Credentials = CredentialCache.DefaultNetworkCredentials;

        try
        {
            mailClient.Send(message);
        }
        catch (Exception e)
        {
            //  Add the exception to some log file, or email them to some person who can review what was wrong.
        }
    }
    private static void AddFeedToPage(string emailId, string FullName, string FeedText, string imageLink, string timeStamp, UpdatePanel feedsPanel)
    {
        Image postOwnerImage = new Image();
        Panel feedElement = new Panel();
        Panel mediaBodyPanel = new Panel();
        Panel feedText = new Panel();
        Button commentButton = new Button();
        HtmlGenericControl aTag = new HtmlGenericControl("a");

        mediaBodyPanel.CssClass = "media-body";
        feedElement.CssClass = "feed-element";
        feedText.CssClass = "well";
        commentButton.CssClass = "btn btn-primary btn-outline btn-sm pull-right";

        aTag.InnerText = " " + FullName;
        aTag.Attributes.Add("href", "profile.aspx?id=" + emailId);
        postOwnerImage.ImageUrl = imageLink;
        //postOwnerImage.Height = 25;
        postOwnerImage.CssClass = "img-circle";

        commentButton.Text = "Comment";
        feedText.Controls.Add(new LiteralControl(FeedText));
        commentButton.Click += CommentButton_Click;

        feedsPanel.ContentTemplateContainer.Controls.AddAt(0, feedElement);
        feedElement.Controls.Add(mediaBodyPanel);
        mediaBodyPanel.Controls.Add(postOwnerImage);

        mediaBodyPanel.Controls.Add(aTag);
        mediaBodyPanel.Controls.Add(new LiteralControl(" posted on " + timeStamp));
        mediaBodyPanel.Controls.Add(feedText);
        mediaBodyPanel.Controls.Add(commentButton);

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
}