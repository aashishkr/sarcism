using System;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Services;
using System.Web;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 0)
        {
            Response.Redirect("index.aspx");
        }

        string emailId = Request.QueryString["id"];

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.Connection = conn;
                sample.CommandText = "select * FROM data WHERE EmailId = @EmailId";
                sample.Parameters.AddWithValue("@EmailId", emailId);
                conn.Open();

                MySqlDataReader reader = sample.ExecuteReader();
                if (reader.Read())
                {
                    user_name.Text = user_name1.Text = reader["FirstName"].ToString();
                    user_name2.Text = reader["LastName"].ToString();
                    user_email.Text = reader["EmailId"].ToString();
                    user_gender.Text = reader["Gender"].ToString();
                    user_dob.Text = reader["DOB"].ToString();
                    user_contact.Text = reader["Contact"].ToString();
                    user_father.Text = reader["FatherName"].ToString();
                    user_mother.Text = reader["MotherName"].ToString();
                    AddAddress(reader["AddLine1"].ToString(), reader["AddLine2"].ToString(), reader["City"].ToString(), reader["State"].ToString(), reader["Country"].ToString(), reader["Pin"].ToString(), addressLabel);
                   /* add_l1.Text = reader["AddLine1"].ToString() + ", ";
                    add_l2.Text = reader["AddLine2"].ToString() + ", ";
                    add_city.Text = reader["City"].ToString() + ", ";
                    add_state.Text = reader["State"].ToString() + " - ";
                    add_pin.Text = reader["Pin"].ToString() + ",";
                    add_country.Text = reader["Country"].ToString(); */
                    userImageThumbnail.ImageUrl = userImage.ImageUrl = reader["ImageLink"].ToString();
                }
                conn.Close();
            }
        }
    }
    private static void AddAddress(string addLine1, string addLine2, string city, string state, string country, string pinCode, Label addressLable)
    {
        string finalAddress = "";
        if (addLine1.Trim() != null)
            finalAddress += addLine1 + ",<br>";

        if (addLine2.Trim() != null)
            finalAddress += addLine2 + ",<br>";

        if (city.Trim() != null)
            finalAddress += city + ", ";

        if (state.Trim() != null)
            finalAddress += state + ",<br>";

        if (country.Trim() != null)
            finalAddress += country + "<br>";

        if (pinCode.Trim() != null)
            finalAddress += "<strong>Zip Code</strong> - " + pinCode;

        addressLable.Text = finalAddress;
    }
    protected void ClearSessionVariables(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("index.aspx");
    }

    protected void GoToProfilePage(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx?id=" + Session["email"].ToString());
    }
}