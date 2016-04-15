using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
public partial class EDIT : System.Web.UI.Page
{
    private void SetInitialRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("qualificationId", typeof(int)));
        dt.Columns.Add(new DataColumn("company", typeof(string)));
        dt.Columns.Add(new DataColumn("position", typeof(string)));
        dt.Columns.Add(new DataColumn("from", typeof(string)));
        dt.Columns.Add(new DataColumn("to", typeof(string)));
        dr = dt.NewRow();
        dr["qualificationId"] = 1;
        dr["company"] = string.Empty;
        dr["position"] = string.Empty;
        dr["from"] = string.Empty;
        dr["to"] = string.Empty;
        dt.Rows.Add(dr);

        //Store the DataTable in ViewState
        ViewState["CurrentTable"] = dt;

        qualification.DataSource = dt;
        qualification.DataBind();
    }
    private void AddNewRowToGrid()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox box1 = (TextBox)qualification.Rows[rowIndex].Cells[1].FindControl("company");
                    TextBox box2 = (TextBox)qualification.Rows[rowIndex].Cells[2].FindControl("position");
                    TextBox box3 = (TextBox)qualification.Rows[rowIndex].Cells[3].FindControl("from");
                    TextBox box4 = (TextBox)qualification.Rows[rowIndex].Cells[4].FindControl("to");
                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["qualificationId"] = i + 1;

                    dtCurrentTable.Rows[i - 1]["company"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["position"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["from"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["to"] = box4.Text;

                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                qualification.DataSource = dtCurrentTable;
                qualification.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }

        //Set Previous Data on Postbacks
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)qualification.Rows[rowIndex].Cells[1].FindControl("company");
                    TextBox box2 = (TextBox)qualification.Rows[rowIndex].Cells[2].FindControl("position");
                    TextBox box3 = (TextBox)qualification.Rows[rowIndex].Cells[3].FindControl("from");
                    TextBox box4 = (TextBox)qualification.Rows[rowIndex].Cells[4].FindControl("to");

                    box1.Text = dt.Rows[i]["company"].ToString();
                    box2.Text = dt.Rows[i]["position"].ToString();
                    box3.Text = dt.Rows[i]["from"].ToString();
                    box4.Text = dt.Rows[i]["to"].ToString();
                    rowIndex++;
                }
            }
        }
    }
  
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRowToGrid();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetInitialRow();
        }

        if (Session.Count.Equals(null))
            Response.Redirect("MainPage.aspx");
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
                    add_city.Text = reader["AddCity"].ToString();
                    add_state.Text = reader["AddState"].ToString();
                    add_pin.Text = reader["AddPin"].ToString();
                    add_country.Text = reader["AddCountry"].ToString();

                    conn.Close();
                }
                using (MySqlCommand edu = new MySqlCommand())
                {
                    edu.Connection = conn;
                    edu.CommandType = CommandType.Text;
                    edu.CommandText = "Select EmailID,Company,position,fromDate,toDate from qualification WHERE EmailID = @Email_Id";
                    edu.Parameters.AddWithValue("@Email_Id", Session["email"].ToString());

                    conn.Open();
                    MySqlDataReader QualificationTableReader = edu.ExecuteReader();
                    DataTable dt = new DataTable();
                    DataRow dr = null;
                    dt.Columns.Add(new DataColumn("qualificationId", typeof(int)));
                    dt.Columns.Add(new DataColumn("company", typeof(string)));
                    dt.Columns.Add(new DataColumn("position", typeof(string)));
                    dt.Columns.Add(new DataColumn("from", typeof(string)));
                    dt.Columns.Add(new DataColumn("to", typeof(string)));
                    dr = dt.NewRow();
                    dr["qualificationId"] = 1;
                    dr["company"] = string.Empty;
                    dr["position"] = string.Empty;
                    dr["from"] = string.Empty;
                    dr["to"] = string.Empty;
                    dt.Rows.Add(dr);

                    //Store the DataTable in ViewState
                    ViewState["CurrentTable"] = dt;
                    int rowIndex = 0;
                    int i = 1;
                    qualification.DataSource = dt;
                    qualification.DataBind();
                    while (QualificationTableReader.NextResult())
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)qualification.Rows[rowIndex].Cells[1].FindControl("company");
                        TextBox box2 = (TextBox)qualification.Rows[rowIndex].Cells[2].FindControl("position");
                        TextBox box3 = (TextBox)qualification.Rows[rowIndex].Cells[3].FindControl("from");
                        TextBox box4 = (TextBox)qualification.Rows[rowIndex].Cells[4].FindControl("to");
                        dr = dt.NewRow();
                        dr["qualificationId"] = i + 1;

                        dt.Rows[i - 1]["company"] = box1.Text;
                        dt.Rows[i - 1]["position"] = box2.Text;
                        dt.Rows[i - 1]["from"] = box3.Text;
                        dt.Rows[i - 1]["to"] = box4.Text;

                        rowIndex++;
                        i++;
                    }
                    //dt.Rows.Add(dr);
                    ViewState["CurrentTable"] = dt;

                    qualification.DataSource = dt;
                    qualification.DataBind();
                    conn.Close();
                    conn.Open();
                    QualificationTableReader = edu.ExecuteReader();
                    while (QualificationTableReader.Read())
                    {
                        string Company = QualificationTableReader["Company"].ToString();
                        string Position = QualificationTableReader["position"].ToString();
                        string From = QualificationTableReader["fromDate"].ToString();
                        string to = QualificationTableReader["toDate"].ToString();

                        TextBox box1 = (TextBox)qualification.Rows[rowIndex].Cells[1].FindControl("company");
                        TextBox box2 = (TextBox)qualification.Rows[rowIndex].Cells[2].FindControl("position");
                        TextBox box3 = (TextBox)qualification.Rows[rowIndex].Cells[3].FindControl("from");
                        TextBox box4 = (TextBox)qualification.Rows[rowIndex].Cells[4].FindControl("to");

                        box1.Text = Company;
                        box2.Text = Position;
                        box3.Text = From;
                        box4.Text = to;
                    }
                    conn.Close();

                }
                            }
                        }
                    }
    
    protected void btn_submit(object sender, EventArgs e)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
        {
            using (MySqlCommand sample = new MySqlCommand())
            {
                sample.CommandType = CommandType.Text;
                sample.Connection = conn;
                sample.CommandText = "UPDATE data SET FirstName=@FirstName, LastName=@LastName, EmailId=@EmailId, FatherName=@FatherName, Contact=@Contact, Gender=@Gender, MotherName=@MotherName, DOB=@DOB, AddLine1=@AddLine1, AddLine2=@AddLine2, AddCity=@AddCity, AddState=@AddState, AddCountry=@AddCountry, AddPin=@AddPin WHERE EmailId=@EmailId";
                sample.Parameters.AddWithValue("@EmailId", Session["email"].ToString());

                sample.Parameters.AddWithValue("@FirstName", Request.Form["user_name1"].ToString());
                sample.Parameters.AddWithValue("@LastName", Request.Form["user_name2"].ToString());
                sample.Parameters.AddWithValue("@FatherName", Request.Form["user_father"].ToString());
                sample.Parameters.AddWithValue("@Contact", Request.Form["user_contact"].ToString());
                sample.Parameters.AddWithValue("@Gender", user_gender.SelectedValue);
                sample.Parameters.AddWithValue("@MotherName", Request.Form["user_mother"].ToString());
                sample.Parameters.AddWithValue("@DOB", Request.Form["user_dob"].ToString());
                sample.Parameters.AddWithValue("@AddLine1", Request.Form["add_l1"].ToString());
                sample.Parameters.AddWithValue("@AddLine2", Request.Form["add_l2"].ToString());
                sample.Parameters.AddWithValue("@AddCity", Request.Form["add_city"].ToString());
                sample.Parameters.AddWithValue("@AddState", Request.Form["add_state"].ToString());
                sample.Parameters.AddWithValue("@AddCountry", Request.Form["add_country"].ToString());
                sample.Parameters.AddWithValue("@AddPin", Request.Form["add_pin"].ToString());

                conn.Open();
                sample.ExecuteNonQuery();
                conn.Close();
            }


            using (MySqlCommand edu = new MySqlCommand())
            {
                edu.CommandType = CommandType.Text;
                edu.Connection = conn;
                edu.CommandText = "delete from qualification where EmailId=@EmailId";
                edu.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                conn.Open();
                MySqlDataReader QueryTableReader = edu.ExecuteReader();
                
                while (QueryTableReader.Read())
                {
                    edu.ExecuteNonQuery();
                }
               

                
                conn.Close();

                edu.CommandText = "INSERT into qualification  (Company,position,EmailId,fromDate,toDate) values (@Company,@position,@EmailId,@fromDate,@toDate)";
                conn.Open();
                //edu.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                int rowIndex = 0;
                if (ViewState["CurrentTable"] != null)
                {
                    DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                    DataRow drCurrentRow = null;
                    if (dtCurrentTable.Rows.Count > 0)
                    {
                        for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                        {
                            edu.Parameters.Clear();
                            //extract the TextBox values
                            TextBox box1 = (TextBox)qualification.Rows[rowIndex].Cells[1].FindControl("company");
                            TextBox box2 = (TextBox)qualification.Rows[rowIndex].Cells[2].FindControl("position");
                            TextBox box3 = (TextBox)qualification.Rows[rowIndex].Cells[3].FindControl("from");
                            TextBox box4 = (TextBox)qualification.Rows[rowIndex].Cells[4].FindControl("to");
                            edu.Parameters.AddWithValue("@EmailId", Session["email"].ToString());
                            edu.Parameters.AddWithValue("@Company", box1.Text.ToString());
                            edu.Parameters.AddWithValue("@position", box2.Text.ToString());
                            edu.Parameters.AddWithValue("@fromDate", box3.Text.ToString());
                            edu.Parameters.AddWithValue("@toDate", box4.Text.ToString());
                            edu.ExecuteNonQuery();
                            rowIndex++;
                        }

                    }
                }
               
                Response.Redirect("homepage.aspx");
                conn.Close();
            }
          
        }
    }
}