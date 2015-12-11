using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Web.UI.HtmlControls;

public partial class My : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count.Equals(null))
                Response.Redirect("MainPage.aspx");
       
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand sample = new MySqlCommand())
                {
                    sample.Connection = conn;
                    sample.CommandType = CommandType.Text;
                    sample.CommandText = "Select EmailID,Q_Title,Q_Description from querydata WHERE EmailID = @Email_Id";
                    sample.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());

                    conn.Open();
                    MySqlDataReader QueryTableReader = sample.ExecuteReader();
                    int count = 1;
                    while (QueryTableReader.Read())
                    {
                        string Email = QueryTableReader["EmailID"].ToString();
                        string Heading = QueryTableReader["Q_Title"].ToString();
                        string Description = QueryTableReader["Q_Description"].ToString();
                        AddDataToPanel(Heading, Description, count++);
                    }
                }
                conn.Close();
            }
        }
    }
    private void AddDataToPanel(string Heading, string Description, int count)
    {
        Label HeadingLabel = new Label();
        Label DescriptionLabel = new Label();

        HeadingLabel.CssClass = "form-control";
        DescriptionLabel.CssClass = "form-control";

        HeadingLabel.Text = Heading;
        DescriptionLabel.Text = Description;

        HeadingLabel.ID = "HeadingLabel" + count.ToString();
        DescriptionLabel.ID = "DescriptionLabel" + count.ToString();

        HtmlGenericControl firstDiv = new HtmlGenericControl("div");
        HtmlGenericControl secondDiv = new HtmlGenericControl("div");
        HtmlGenericControl thirdDiv = new HtmlGenericControl("div");
        HtmlGenericControl fourthDiv = new HtmlGenericControl("div");
        HtmlGenericControl fifthDiv = new HtmlGenericControl("div");

        firstDiv.Attributes.Add("class", "row");
        secondDiv.Attributes.Add("class", "col-lg-10");
        thirdDiv.Attributes.Add("class", "ibox");
        fourthDiv.Attributes.Add("class", "ibox-title");
        fifthDiv.Attributes.Add("class", "ibox-content");
        MyQueryPanel.Controls.Add(firstDiv);
        firstDiv.Controls.Add(secondDiv);
        secondDiv.Controls.Add(thirdDiv);
        thirdDiv.Controls.Add(fourthDiv);
        thirdDiv.Controls.Add(fifthDiv);
        fourthDiv.Controls.Add(HeadingLabel);
        fifthDiv.Controls.Add(DescriptionLabel);

    }
    protected void company(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand sample = new MySqlCommand())
                {
                    sample.Connection = conn;
                    sample.CommandType = CommandType.Text;
                    sample.CommandText = "Select Q_Title , Q_Description,Q_Type from querydata WHERE Q_Type = @Type and EmailID = @Email_Id";
                    sample.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());
                    sample.Parameters.AddWithValue("@Type", "Company Related");
                    conn.Open();
                    MySqlDataReader QueryTableReader = sample.ExecuteReader();
                    int count = 1;
                    while (QueryTableReader.Read())
                    {
                        string Heading = QueryTableReader["Q_Title"].ToString();
                        string Description = QueryTableReader["Q_Description"].ToString();
                        AddDataToPanel(Heading, Description, count++);
                    }
                }
                conn.Close();
            }
        }
    }
    protected void general(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand sample = new MySqlCommand())
                {
                    sample.Connection = conn;
                    sample.CommandType = CommandType.Text;
                    sample.CommandText = "Select Q_Title , Q_Description,Q_Type from querydata WHERE Q_Type = @Type and EmailID = @Email_Id";
                    sample.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());
                    sample.Parameters.AddWithValue("@Type", "General Query");

                    conn.Open();
                    MySqlDataReader QueryTableReader = sample.ExecuteReader();
                    int count = 1;
                    while (QueryTableReader.Read())
                    {
                        string Heading = QueryTableReader["Q_Title"].ToString();
                        string Description = QueryTableReader["Q_Description"].ToString();
                        string Type = QueryTableReader["Q_Type"].ToString();
                        AddDataToPanel(Heading, Description, count++);
                    }
                }
                conn.Close();
            }
        }
    }
    protected void placements(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand sample = new MySqlCommand())
                {
                    sample.Connection = conn;
                    sample.CommandType = CommandType.Text;
                    sample.CommandText = "Select Q_Title , Q_Description,Q_Type from querydata WHERE Q_Type = @Type and EmailID = @Email_Id";
                    sample.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());
                    sample.Parameters.AddWithValue("@Type", "About Placements");

                    conn.Open();
                    MySqlDataReader QueryTableReader = sample.ExecuteReader();
                    int count = 1;
                    while (QueryTableReader.Read())
                    {
                        string Heading = QueryTableReader["Q_Title"].ToString();
                        string Description = QueryTableReader["Q_Description"].ToString();
                        string Type = QueryTableReader["Q_Type"].ToString();
                        AddDataToPanel(Heading, Description, count++);
                    }
                }
                conn.Close();
            }
        }
    }
    protected void technical(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand sample = new MySqlCommand())
                {
                    sample.Connection = conn;
                    sample.CommandType = CommandType.Text;
                    sample.CommandText = "Select Q_Title , Q_Description,Q_Type from querydata WHERE Q_Type = @Type and EmailID = @Email_Id";
                    sample.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());
                    sample.Parameters.AddWithValue("@Type", "Technical Query");
                    conn.Open();
                    MySqlDataReader QueryTableReader = sample.ExecuteReader();
                    int count = 1;
                    while (QueryTableReader.Read())
                    {
                        string Heading = QueryTableReader["Q_Title"].ToString();
                        string Description = QueryTableReader["Q_Description"].ToString();
                        string Type = QueryTableReader["Q_Type"].ToString();
                        AddDataToPanel(Heading, Description, count++);
                    }
                }
                conn.Close();
            }
        }
    }
}