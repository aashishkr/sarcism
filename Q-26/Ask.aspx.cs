using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Ask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   /* protected void FormSubmit(object sender , EventArgs e)
    {
        
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand UpdateNameInDataBase = new SqlCommand("UpdateTable", conn))
            {
                UpdateNameInDataBase.CommandType = System.Data.CommandType.Text;
                UpdateNameInDataBase.CommandText = "update Table set UserName = @user";
                UpdateNameInDataBase.CommandText = "update Table set Title = @title";
                UpdateNameInDataBase.CommandText = "update Table set Query = @query";
                UpdateNameInDataBase.CommandText = "update Table set Type = @type";
                UpdateNameInDataBase.Connection = conn;

                //UpdateNameInDataBase.Parameters.AddWithValue("@UserName", title.Text);
                UpdateNameInDataBase.Parameters.AddWithValue("@title", title.Text);
                UpdateNameInDataBase.Parameters.AddWithValue("@query", query.Text);
                //UpdateNameInDataBase.Parameters.AddWithValue("@type", title.Text);
                conn.Open();
                UpdateNameInDataBase.ExecuteNonQuery;
                conn.Close();

            }
        }
    }*/

}