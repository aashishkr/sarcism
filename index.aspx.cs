using System;
using System.Web.UI;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Services;
using System.Text;
using System.Security.Cryptography;
using System.Web;

public partial class MainPage : System.Web.UI.Page
{
    private static string ComputeSHA(string input)
    {
        byte[] byteArray = Encoding.ASCII.GetBytes(input);

        SHA1 sha = new SHA1CryptoServiceProvider();
        byte[] result = sha.ComputeHash(byteArray);

        return Encoding.ASCII.GetString(result);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string CreateNewUser(string emailId, string password, string firstName, string lastName, string batch, string contact, string gender, string admissionNumber)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand checkUserExists = new MySqlCommand())
            {
                checkUserExists.CommandType = CommandType.Text;
                checkUserExists.Connection = conn;
                checkUserExists.CommandText = "SELECT * FROM data WHERE EmailId = @EmailId";

                checkUserExists.Parameters.AddWithValue("@EmailId", emailId);
                conn.Open();
                MySqlDataReader reader = checkUserExists.ExecuteReader();
                if(reader.Read())
                {
                    return "User Already Registered";
                }
                conn.Close();
            }
            using (MySqlCommand checkValidUser = new MySqlCommand())
            {
                checkValidUser.CommandType = CommandType.Text;
                checkValidUser.Connection = conn;
                checkValidUser.CommandText = "SELECT * FROM validstudents WHERE AdmissionNumber = @AdmissionNumber AND Batch = @Batch";

                checkValidUser.Parameters.AddWithValue("@AdmissionNumber", admissionNumber.ToLower());
                checkValidUser.Parameters.AddWithValue("@Batch", batch);
                conn.Open();
                MySqlDataReader reader = checkValidUser.ExecuteReader();
                if(!reader.Read())
                {
                    return "Invalid User";
                }
                conn.Close();
            }
            using (MySqlCommand insertNewUserDetails = new MySqlCommand())
            {
                insertNewUserDetails.CommandType = CommandType.Text;
                insertNewUserDetails.CommandText = "insert into data (EmailId, Password, FirstName, LastName, Batch, Contact, Gender, AdmissionNumber) values(@EmailId, @Password, @FirstName, @LastName, @Batch, @Contact, @Gender, @AdmissionNumber)";
                insertNewUserDetails.Connection = conn;

                insertNewUserDetails.Parameters.AddWithValue("@EmailId", emailId);
                insertNewUserDetails.Parameters.AddWithValue("@Password", ComputeSHA(password));
                insertNewUserDetails.Parameters.AddWithValue("@FirstName", firstName);
                insertNewUserDetails.Parameters.AddWithValue("@LastName", lastName);
                insertNewUserDetails.Parameters.AddWithValue("@Batch", batch);
                insertNewUserDetails.Parameters.AddWithValue("@Contact", contact);
                insertNewUserDetails.Parameters.AddWithValue("@Gender", gender);
                insertNewUserDetails.Parameters.AddWithValue("@AdmissionNumber", admissionNumber.ToLower());

                conn.Open();
                insertNewUserDetails.ExecuteNonQuery();
                HttpContext.Current.Session.Add("email", emailId);
                HttpContext.Current.Session.Add("FullName", firstName + " " + lastName);
                conn.Close();
            }
        }
        return "true"; 
    }
    protected void btn_login(object sender, EventArgs e)
    {
        if(email.Text.Equals("cse@ismdhanbad.ac.in") && pass.Text.Equals("qwertyuiop"))
        {
            Session.Add("email", "cse@ismdhanbad.ac.in");
            Response.Redirect("ViewStudents.aspx");
        }
        else
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT EmailId, Password, FirstName, LastName FROM data WHERE EmailId = @EmailId and Password = @Password";
                    cmd.Connection = conn;

                    cmd.Parameters.AddWithValue("@EmailId", email.Text);
                    cmd.Parameters.AddWithValue("@Password", ComputeSHA(pass.Text));

                    conn.Open();

                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Session.Add("email", reader["EmailId"].ToString());
                        Session.Add("FullName", reader["FirstName"].ToString() + " " + reader["LastName"].ToString());
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
}