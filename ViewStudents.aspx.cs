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
using Newtonsoft.Json;
using System.Web.Script.Serialization;

public partial class ViewStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 0 || !Session["email"].Equals("cse@ismdhanbad.ac.in"))
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
    [WebMethod]
    public static void DeleteStudent(string[] Students)
    {
        string[] a = Students;
        for (int i = 0; i < a.Length; i++)
        {
            string admissionNumber = a[i];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand deleteStudent = new MySqlCommand())
                {
                    deleteStudent.CommandType = CommandType.Text;
                    deleteStudent.Connection = conn;
                    deleteStudent.CommandText = "DELETE FROM validstudents WHERE admissionNumber = @admissionNumber ";

                    deleteStudent.Parameters.AddWithValue("@admissionNumber", admissionNumber);

                    conn.Open();
                    deleteStudent.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
    [WebMethod]
    public static void DeleteAnnual(string[] Students)
    {
        string[] a = Students;
        for (int i = 0; i < a.Length; i++)
        {
            string admissionNumber = a[i];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand deleteStudent = new MySqlCommand())
                {
                    deleteStudent.CommandType = CommandType.Text;
                    deleteStudent.Connection = conn;
                    deleteStudent.CommandText = "DELETE FROM annual_members WHERE admissionNumber = @admissionNumber ";

                    deleteStudent.Parameters.AddWithValue("@admissionNumber", admissionNumber);

                    conn.Open();
                    deleteStudent.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
    [WebMethod]
    public static void DeleteLifetime(string[] Students)
    {
        string[] a = Students;
        for (int i = 0; i < a.Length; i++)
        {
            string admissionNumber = a[i];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand deleteStudent = new MySqlCommand())
                {
                    deleteStudent.CommandType = CommandType.Text;
                    deleteStudent.Connection = conn;
                    deleteStudent.CommandText = "DELETE FROM lifetime_members WHERE admissionNumber = @admissionNumber ";

                    deleteStudent.Parameters.AddWithValue("@admissionNumber", admissionNumber);

                    conn.Open();
                    deleteStudent.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
    [WebMethod]
    public static void AddAnnual(string[] Students)
    {
        string[] a = Students;
        for (int i = 0; i < a.Length; i++)
        {
            bool found = false;
            string admissionNumber = a[i];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand getAnnualMembers = new MySqlCommand())
                {
                    getAnnualMembers.Connection = conn;
                    getAnnualMembers.CommandType = CommandType.Text;
                    getAnnualMembers.CommandText = "SELECT * FROM annual_members";

                    conn.Open();
                    MySqlDataReader reader = getAnnualMembers.ExecuteReader();
                    while (reader.Read())
                    {
                        string[] temp = new string[3];

                        temp[0] = reader[0].ToString();
                        temp[1] = reader[1].ToString();
                        temp[2] = reader[2].ToString();
                        if (temp[0].Equals(admissionNumber))
                            found = true ;
                    }
                }
            }
            if (found)
                continue;
            string[] temp1 = new string[3];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand getAnnualMembers = new MySqlCommand())
                {
                    getAnnualMembers.Connection = conn;
                    getAnnualMembers.CommandType = CommandType.Text;
                    getAnnualMembers.CommandText = "SELECT * FROM validstudents";

                    conn.Open();
                    MySqlDataReader reader = getAnnualMembers.ExecuteReader();
                    while (reader.Read())
                    {
                        temp1[0] = reader[0].ToString();
                        temp1[1] = reader[1].ToString();
                        temp1[2] = reader[2].ToString();
                        if (temp1[0].Equals(admissionNumber))
                            break;
                    }
                }
            }
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand addAnnual = new MySqlCommand())
                {
                    addAnnual.CommandType = CommandType.Text;
                    addAnnual.Connection = conn;
                    addAnnual.CommandText = "INSERT INTO annual_members VALUES (@AdmissionNumber, @Name, @Batch)";

                    addAnnual.Parameters.Add("@AdmissionNumber", MySqlDbType.VarChar);
                    addAnnual.Parameters.Add("@Name", MySqlDbType.VarChar);
                    addAnnual.Parameters.Add("@Batch", MySqlDbType.VarChar);

                    addAnnual.Parameters["@AdmissionNumber"].Value = temp1[0];
                    addAnnual.Parameters["@Name"].Value = temp1[1];
                    addAnnual.Parameters["@Batch"].Value = temp1[2];
                    conn.Open();
                    addAnnual.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
    [WebMethod]
    public static void AddLifetime(string[] Students)
    {
        string[] a = Students;
        for (int i = 0; i < a.Length; i++)
        {
            bool found = false;
            string admissionNumber = a[i];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand getLifetimeMembers = new MySqlCommand())
                {
                    getLifetimeMembers.Connection = conn;
                    getLifetimeMembers.CommandType = CommandType.Text;
                    getLifetimeMembers.CommandText = "SELECT * FROM lifetime_members";

                    conn.Open();
                    MySqlDataReader reader = getLifetimeMembers.ExecuteReader();
                    while (reader.Read())
                    {
                        string[] temp = new string[3];

                        temp[0] = reader[0].ToString();
                        temp[1] = reader[1].ToString();
                        temp[2] = reader[2].ToString();
                        if (temp[0].Equals(admissionNumber))
                            found = true;
                    }
                }
            }
            if (found)
                continue;
            string[] temp1 = new string[3];
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand getLifetimeMembers = new MySqlCommand())
                {
                    getLifetimeMembers.Connection = conn;
                    getLifetimeMembers.CommandType = CommandType.Text;
                    getLifetimeMembers.CommandText = "SELECT * FROM validstudents";

                    conn.Open();
                    MySqlDataReader reader = getLifetimeMembers.ExecuteReader();
                    while (reader.Read())
                    {
                        temp1[0] = reader[0].ToString();
                        temp1[1] = reader[1].ToString();
                        temp1[2] = reader[2].ToString();
                        if (temp1[0].Equals(admissionNumber))
                            break;
                    }
                }
            }
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                using (MySqlCommand addLifetime = new MySqlCommand())
                {
                    addLifetime.CommandType = CommandType.Text;
                    addLifetime.Connection = conn;
                    addLifetime.CommandText = "INSERT INTO lifetime_members VALUES (@AdmissionNumber, @Name, @Batch)";

                    addLifetime.Parameters.Add("@AdmissionNumber", MySqlDbType.VarChar);
                    addLifetime.Parameters.Add("@Name", MySqlDbType.VarChar);
                    addLifetime.Parameters.Add("@Batch", MySqlDbType.VarChar);

                    addLifetime.Parameters["@AdmissionNumber"].Value = temp1[0];
                    addLifetime.Parameters["@Name"].Value = temp1[1];
                    addLifetime.Parameters["@Batch"].Value = temp1[2];
                    conn.Open();
                    addLifetime.ExecuteNonQuery();
                    conn.Close();
                }
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

                for (int i = 0; i < userDataArray.Length; i++)
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
                while (reader.Read())
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
    [WebMethod]
    public static List<string[]> GetAnnual()
    {
        List<string[]> AnnualMembersList = new List<string[]>();
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand getAnnualMembers = new MySqlCommand())
            {
                getAnnualMembers.Connection = conn;
                getAnnualMembers.CommandType = CommandType.Text;
                getAnnualMembers.CommandText = "SELECT * FROM annual_members";

                conn.Open();
                MySqlDataReader reader = getAnnualMembers.ExecuteReader();
                while (reader.Read())
                {
                    string[] temp = new string[3];

                    temp[0] = reader[0].ToString();
                    temp[1] = reader[1].ToString();
                    temp[2] = reader[2].ToString();

                    AnnualMembersList.Add(temp);
                }
            }
        }
        return AnnualMembersList;
    }
    [WebMethod]
    public static List<string[]> GetLifetime()
    {
        List<string[]> LifetimeMembersList = new List<string[]>();
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand getLifetimeMembers = new MySqlCommand())
            {
                getLifetimeMembers.Connection = conn;
                getLifetimeMembers.CommandType = CommandType.Text;
                getLifetimeMembers.CommandText = "SELECT * FROM lifetime_members";

                conn.Open();
                MySqlDataReader reader = getLifetimeMembers.ExecuteReader();
                while (reader.Read())
                {
                    string[] temp = new string[3];

                    temp[0] = reader[0].ToString();
                    temp[1] = reader[1].ToString();
                    temp[2] = reader[2].ToString();

                    LifetimeMembersList.Add(temp);
                }
            }
        }
        return LifetimeMembersList;
    }
}