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

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit(object sender, EventArgs e)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.CommandText = "insert into data (EmailId,Password,FirstName,LastName,FatherName,Batch,Contact,Gender)values(@EmailId,@Password,@FirstName,@LastName,@FatherName,@Batch,@Contact,@Gender)";
                sample.Connection = conn;

                sample.Parameters.AddWithValue("@EmailId", u_email.Text);
                sample.Parameters.AddWithValue("@Password", u_password.Text);
                sample.Parameters.AddWithValue("@FirstName", u_name1.Text);
                sample.Parameters.AddWithValue("@LastName", u_name2.Text);
                sample.Parameters.AddWithValue("@FatherName", f_name.Text);
                sample.Parameters.AddWithValue("@Batch", u_batch.Text);
                sample.Parameters.AddWithValue("@Contact", u_contact.Text);
                sample.Parameters.AddWithValue("@Gender", u_gender.SelectedValue);

                conn.Open();
                sample.ExecuteNonQuery();
                Session.Add("email", u_email.Text);
                string s = (string)Session["email"];
                Response.Redirect("homepage.aspx");
                conn.Close();
                
            }
        }
    }
    protected void btn_login(object sender, EventArgs e)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand cmd = new MySqlCommand())
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select EmailId, Password FROM data WHERE EmailId=@EmailId and Password=@Password";
                cmd.Connection = conn;

                cmd.Parameters.AddWithValue("@EmailId", email.Text);
                cmd.Parameters.AddWithValue("@Password", pass.Text);

                conn.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session.Add("email", email.Text);
                    string s = (string)Session["email"];
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }
                conn.Close();
            }
        }
    }
}