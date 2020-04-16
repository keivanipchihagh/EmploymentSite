using System;
using System.Data.SqlClient;

namespace Emplyment
{
    public partial class display : System.Web.UI.Page
    {
        private SqlConnection sqlConnection;
        private SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlConnection = new SqlConnection(responder.connectionString);
                sqlCommand = new SqlCommand("SELECT * FROM Employment", sqlConnection);
                sqlConnection.Open();
                SqlDataReader dataReader = sqlCommand.ExecuteReader();

                string data = "<table id=\"header\"><tr><th>ID</th><th>FirstName</th><th>LastName</th><th>Gender</th><th>Marital Status</th><th>Education Degree</th><th>Favorite Colors</th></tr>";
                while (dataReader.Read())
                {
                    data += "<tr><th>" + dataReader["ID"] + "</th>" + "<th>" + dataReader["FirstName"] + "</th>" + "<th>" + dataReader["LastName"] + "<th>" + dataReader["Gender"] + "</th>" + "<th>" + dataReader["Marital_Status"] + "</th>" + "<th>" + dataReader["Education"] + "</th>" + "<th>";
                    string[] colors = dataReader["Favorite_Colors"].ToString().Split(',');
                    foreach (string color in colors)
                        data += ("<div style=\"background-color: " + color.ToLower() + "; width: 20px; height: 20px; margin: 1px; float: left\"></div>");
                    data += ("</th>" + "</th></tr>");
                }                    
                display_table.InnerHtml =  data + "</table>";
            }
            catch { display_table.InnerHtml = "Error"; }
            finally { sqlConnection.Close(); }  // Close Connection
        }
    }
}