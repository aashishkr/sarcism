using System;
using System.Web.UI;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.Services;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.IO;


public partial class EDIT : System.Web.UI.Page
{
    [WebMethod]
    public static void UpdateDetails(string firstName, string lastName, string gender, string dateOfBirth, string mobileNo, string fatherName, string motherName, string addressLine1, string addressLine2, string city, string state, string pincode, string country, List<List<string>> workExperienceArray,string sj,string sg,string st)
    {
        HttpContext.Current.Session["FullName"] = firstName + " " + lastName;

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand updatePersonalDetails = new MySqlCommand())
            {
                updatePersonalDetails.CommandType = CommandType.Text;
                updatePersonalDetails.Connection = conn;
                updatePersonalDetails.CommandText = "UPDATE data SET FirstName = @firstName, LastName = @lastName, FatherName = @fatherName, MotherName = @motherName, Gender = @gender, DOB = @dateOfBirth, AddLine1 = @addressLine1, AddLine2 = @addressLine2, City = @city, State = @state, Country = @country, Pin = @pincode, Contact = @mobileNo ,SubscriptionGeneral= @sg , SubscriptionTechnical= @st, SubscriptionJob= @sj Where EmailId = @EmailId";

                updatePersonalDetails.Parameters.AddWithValue("@firstName", firstName);
                updatePersonalDetails.Parameters.AddWithValue("@lastName", lastName);
                updatePersonalDetails.Parameters.AddWithValue("@FatherName", fatherName);
                updatePersonalDetails.Parameters.AddWithValue("@motherName", motherName);
                updatePersonalDetails.Parameters.AddWithValue("@gender", gender);
                updatePersonalDetails.Parameters.AddWithValue("@dateOfBirth", dateOfBirth);
                updatePersonalDetails.Parameters.AddWithValue("@addressLine1", addressLine1);
                updatePersonalDetails.Parameters.AddWithValue("@addressLine2", addressLine2);
                updatePersonalDetails.Parameters.AddWithValue("@city", city);
                updatePersonalDetails.Parameters.AddWithValue("@state", state);
                updatePersonalDetails.Parameters.AddWithValue("@country", country);
                updatePersonalDetails.Parameters.AddWithValue("@pincode", pincode);
                updatePersonalDetails.Parameters.AddWithValue("@mobileNo", mobileNo);
                updatePersonalDetails.Parameters.AddWithValue("@sj", sj);
                updatePersonalDetails.Parameters.AddWithValue("@sg", sg);
                updatePersonalDetails.Parameters.AddWithValue("@st", st);
                updatePersonalDetails.Parameters.AddWithValue("@EmailId", HttpContext.Current.Session["email"].ToString());
                conn.Open();
                updatePersonalDetails.ExecuteNonQuery();
                conn.Close();
            }
            using (MySqlCommand deleteWorkExperience = new MySqlCommand())
            {
                deleteWorkExperience.CommandType = CommandType.Text;
                deleteWorkExperience.Connection = conn;
                deleteWorkExperience.CommandText = "DELETE FROM qualification WHERE EmailId = @EmailId";

                deleteWorkExperience.Parameters.AddWithValue("@EmailId", HttpContext.Current.Session["email"].ToString());

                conn.Open();
                deleteWorkExperience.ExecuteNonQuery();
                conn.Close();
            }
            using (MySqlCommand updateWorkExperience = new MySqlCommand())
            {
                updateWorkExperience.CommandType = CommandType.Text;
                updateWorkExperience.Connection = conn;
                updateWorkExperience.CommandText = "INSERT INTO qualification(EmailId, Company, Position, fromDate, toDate) VALUES (@EmailId, @company, @position, @fromDate, @toDate)";

          
                conn.Open();

                updateWorkExperience.Parameters.Add("@company", MySqlDbType.VarChar);
                updateWorkExperience.Parameters.Add("@position", MySqlDbType.VarChar);
                updateWorkExperience.Parameters.Add("@fromDate", MySqlDbType.VarChar);
                updateWorkExperience.Parameters.Add("@toDate", MySqlDbType.VarChar);
                updateWorkExperience.Parameters.AddWithValue("@EmailId", HttpContext.Current.Session["email"].ToString());

                for (int i = 0; i < workExperienceArray.Count; i++)
                {
                    updateWorkExperience.Parameters["@company"].Value = workExperienceArray[i][0];
                    updateWorkExperience.Parameters["@position"].Value = workExperienceArray[i][1];
                    updateWorkExperience.Parameters["@fromDate"].Value = workExperienceArray[i][2];
                    updateWorkExperience.Parameters["@toDate"].Value = workExperienceArray[i][3];

                    updateWorkExperience.ExecuteNonQuery();
                }
                conn.Close();
            }
        }
    }

    [WebMethod]
    public static List<string[]> GetExperienceData(string emailId)
    {
        if (emailId == null)
            emailId = HttpContext.Current.Session["email"].ToString();

        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            List<string[]> workExperienceArray = new List<string[]>();
            
            using (MySqlCommand getQualification = new MySqlCommand())
            {
                getQualification.CommandType = CommandType.Text;
                getQualification.Connection = conn;
                getQualification.CommandText = "Select * from qualification WHERE EmailID = @EmailId";

                getQualification.Parameters.AddWithValue("@EmailId", emailId);

                conn.Open();
                MySqlDataReader reader = getQualification.ExecuteReader();
                while (reader.Read())
                {
                    string[] temp = new string[4];
                    temp[0] = reader["Company"].ToString();
                    temp[1] = reader["Position"].ToString();
                    temp[2] = reader["fromDate"].ToString();
                    temp[3] = reader["toDate"].ToString();
                    workExperienceArray.Add(temp);
                }
                conn.Close();
            }
            return workExperienceArray;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 0)
        {
            Response.Redirect("index.aspx");
        }

        if (!Page.IsPostBack)
        {
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
                        add_l1.Text = reader["AddLine1"].ToString();
                        add_l2.Text = reader["AddLine2"].ToString();
                        add_city.Text = reader["City"].ToString();
                        add_state.Text = reader["State"].ToString();
                        add_pin.Text = reader["Pin"].ToString();
                        add_country.Text = reader["Country"].ToString();
                        userImageThumbnail.ImageUrl = reader["ImageLink"].ToString();
                        string x=reader["SubscriptionTechnical"].ToString();
                        if (x == "1")
                        {
                            SubTech.Checked = true;
                        }
                        else
                            SubTech.Checked = false;
                        x = reader["SubscriptionGeneral"].ToString();
                        if (x == "1")
                        {
                            SubGen.Checked = true;
                        }
                        else
                            SubGen.Checked = false;
                        x = reader["SubscriptionJob"].ToString();
                        if (x == "1")
                        {
                            SubJob.Checked = true;
                        }
                        else
                            SubJob.Checked = false;
                        conn.Close();
                    }
                }
            }
        }
    }
    protected void onchng(object sender, EventArgs e)
    {
       
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