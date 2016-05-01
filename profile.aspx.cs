using System;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Services;
using System.Collections.Generic;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 0)
        {
            Response.Redirect("index.aspx");
        }

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.Connection = conn;
                sample.CommandText = "select * FROM data WHERE EmailId = @EmailId";
                sample.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();

                string FirstName = Session["email"].ToString();
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
                    add_l1.Text = reader["AddLine1"].ToString() + ", ";
                    add_l2.Text = reader["AddLine2"].ToString() + ", ";
                    add_city.Text = reader["City"].ToString() + ", ";
                    add_state.Text = reader["State"].ToString() + " - ";
                    add_pin.Text = reader["Pin"].ToString() + ",";
                    add_country.Text = reader["Country"].ToString();
                    userImageThumbnail.ImageUrl = userImage.ImageUrl = reader["ImageLink"].ToString();
                }
                conn.Close();
            }
        }
    }

}