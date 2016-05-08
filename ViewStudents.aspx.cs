using System;
using System.Web.Services;
using System.Web.UI;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Web.Script.Services;
using System.IO;

public partial class ViewStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.Count == 0 || !Session["email"].Equals("cse@ismdhanbad.ac.in"))
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
    [WebMethod]
    public static void DeleteStudent(string admissionNumber, string fullName, string batch)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand deleteStudent = new MySqlCommand())
            {
                deleteStudent.CommandType = CommandType.Text;
                deleteStudent.Connection = conn;
                deleteStudent.CommandText = "DELETE FROM validstudents WHERE admissionNumber = @admissionNumber AND Batch = @Batch";

                deleteStudent.Parameters.AddWithValue("@admissionNumber", admissionNumber);
                deleteStudent.Parameters.AddWithValue("@Batch", batch);

                conn.Open();
                deleteStudent.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
    [WebMethod]
    public static void UpdateDetails(string userData)
    {
        string[] userDataArray = Regex.Split(userData, "\n");

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand addStudent = new MySqlCommand())
            {
                addStudent.Connection = conn;
                addStudent.CommandType = CommandType.Text;
                addStudent.CommandText = "INSERT INTO validstudents VALUES (@AdmissionNumber, @FullName, @Batch)";

                addStudent.Parameters.Add("@AdmissionNumber", MySqlDbType.VarChar);
                addStudent.Parameters.Add("@FullName", MySqlDbType.VarChar);
                addStudent.Parameters.Add("@Batch", MySqlDbType.VarChar);

                conn.Open();

                for(int i = 0;i < userDataArray.Length; i++)
                {
                    string[] temp = userDataArray[i].Split(',');
                    addStudent.Parameters["@AdmissionNumber"].Value = temp[0].ToLower();
                    addStudent.Parameters["@FullName"].Value = temp[1];
                    addStudent.Parameters["@Batch"].Value = temp[2];

                    addStudent.ExecuteNonQuery();
                }
            }
        }
    }

    [WebMethod]
    public static List<string[]> GetAllStudents()
    {
        List<string[]> StudentList = new List<string[]>();
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand getAllStudents = new MySqlCommand())
            {
                getAllStudents.Connection = conn;
                getAllStudents.CommandType = CommandType.Text;
                getAllStudents.CommandText = "SELECT * FROM validstudents";

                conn.Open();
                MySqlDataReader reader = getAllStudents.ExecuteReader();
                while(reader.Read())
                {
                    string[] temp = new string[3];

                    temp[0] = reader[0].ToString();
                    temp[1] = reader[1].ToString();
                    temp[2] = reader[2].ToString();

                    StudentList.Add(temp);
                }
            }
        }
        return StudentList;
    }
}