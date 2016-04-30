using System;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI;

public partial class profile : System.Web.UI.Page
{
    private static int numberOfFeeds = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.Count == 0)
            Response.Redirect("MainPage.aspx");

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand fillPageEntries = new MySqlCommand())
            {
                fillPageEntries.CommandType = CommandType.Text;
                fillPageEntries.Connection = conn;
                fillPageEntries.CommandText = "select FirstName FROM data WHERE EmailId = @EmailId";

                fillPageEntries.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();

                MySqlDataReader reader = fillPageEntries.ExecuteReader();

                if (reader.Read())
                {
                    u_name.Text = user_name.Text = user_name1.Text = reader["FirstName"].ToString();
                    Session.Add("firstName", u_name.Text);
                }
                conn.Close();
            }
            using (MySqlCommand getAllFeeds = new MySqlCommand())
            {
                getAllFeeds.CommandType = CommandType.Text;
                getAllFeeds.Connection = conn;
                getAllFeeds.CommandText = "SELECT FirstName, LastName, FeedText, ImageLink, TimeStamp FROM newsfeed, data where newsfeed.EmailId = data.EmailId";

                conn.Open();
                MySqlDataReader reader = getAllFeeds.ExecuteReader();
                while(reader.Read())
                {
                    AddFeedToPage(reader["FirstName"] + " " + reader["LastName"].ToString(), reader["FeedText"].ToString(), reader["ImageLink"].ToString(), reader["TimeStamp"].ToString(), feedsPanel);
                }
            }
        }
    }

    protected void SubmitPost_Click(object sender, EventArgs e)
    {
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
            using (MySqlCommand getImageLink = new MySqlCommand())
            {
                getImageLink.CommandType = CommandType.Text;
                getImageLink.Connection = conn;
                getImageLink.CommandText = "select ImageLink from data where EmailId = @EmailId";

                getImageLink.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
            }
            AddFeedToPage(Session["FullName"].ToString(), NewFeed.Text, "", timeStamp, feedsPanel);
            NewFeed.Text = null;
        }
    }
    private static void AddFeedToPage(string FullName, string FeedText, string imageLink, string timeStamp, UpdatePanel feedsPanel)
    {
        numberOfFeeds++;
        Image postOwnerImage = new Image();
        Panel feedElement = new Panel();
        Panel mediaBodyPanel = new Panel();
        Panel feedText = new Panel();
        Panel commentButtonPanel = new Panel();
        Button commentButton = new Button();
        HtmlGenericControl strongTag = new HtmlGenericControl("strong");
        
        mediaBodyPanel.CssClass = "media-body";
        feedElement.CssClass = "feed-element";
        feedText.CssClass = "well";
        commentButtonPanel.CssClass = "pull-right";
        commentButton.CssClass = "btn btn-primary btn-outline btn-sm pull-right";

        strongTag.InnerText = FullName;
        postOwnerImage.ImageUrl = imageLink;
        commentButton.Text = "Comment";
        feedText.Controls.Add(new LiteralControl(FeedText));
        commentButton.Click += CommentButton_Click;

        feedsPanel.ContentTemplateContainer.Controls.AddAt(0, feedElement);
        feedElement.Controls.Add(postOwnerImage);
        feedElement.Controls.Add(mediaBodyPanel);
        
        mediaBodyPanel.Controls.Add(strongTag);
        mediaBodyPanel.Controls.Add(new LiteralControl(" posted on " + timeStamp));
        mediaBodyPanel.Controls.Add(feedText);
        mediaBodyPanel.Controls.Add(commentButton);

    }

    private static void CommentButton_Click(object sender, EventArgs e)
    {
        Button commentButton = (Button)sender;
    }
}