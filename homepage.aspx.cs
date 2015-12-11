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

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.Count.Equals(null))
            Response.Redirect("MainPage.aspx");
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.Connection = conn;
                sample.CommandText = "select FirstName FROM data WHERE EmailId = @EmailId";

                sample.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();
                string FirstName = Session["email"].ToString();
                MySqlDataReader reader = sample.ExecuteReader();
                if(reader.Read())
                    u_name.Text = user_name.Text = user_name1.Text = reader["FirstName"].ToString();
                conn.Close();
            }
        }
    }
}