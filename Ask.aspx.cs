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

public partial class Ask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_submit(object sender, EventArgs e)
    {
        if (Session.Count.Equals(null))
            Response.Redirect("MainPage.aspx");
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.Connection = conn;
                conn.Open();
                sample.CommandText = "insert into querydata (EmailId,Q_Title,Q_Description,Q_Type)values(@EmailId,@Q_Title,@Q_Description,@Q_Type)";

                sample.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                sample.Parameters.AddWithValue("@Q_Title", q_title.Text);
                sample.Parameters.AddWithValue("@Q_Description", q_description.Text);
                sample.Parameters.AddWithValue("@Q_Type", q_type.SelectedValue);
                
                sample.ExecuteNonQuery();
                Response.Redirect("All.aspx");
                conn.Close();
            }
        }
    }
}