using System;
using System.Data.SqlClient;

namespace Emplyment
{
    public partial class responder : System.Web.UI.Page
    {
        //public const string connectionString = "Data Source = .; Initial Catalog = BookingSite; Integrated Security = True";
        public const string connectionString = "Data Source=www.keivanipchihagh.ir;Initial Catalog = xxxxxxxxxxxxxxxxxxxxx; Persist Security Info=True;User ID = xxxxxxxxxxxxxxxxxxxxx; Password=xxxxxxxxxxxxxxxxxxxxx";

        private SqlConnection sqlConnection;
        private SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Action"] == "submit")
            {
                try
                {
                    sqlConnection = new SqlConnection(connectionString);                    
                    sqlCommand = new SqlCommand("INSERT INTO Employment (FirstName, LastName, Gender, Marital_Status, Education, Favorite_Colors) VALUES (@firstname, @lastname, @gender, @maritalstatus, @education, @favColors)", sqlConnection);
                    sqlCommand.Parameters.Add(new SqlParameter("@firstname", Request.QueryString["FirstName"]));
                    sqlCommand.Parameters.Add(new SqlParameter("@lastname", Request.QueryString["LastName"]));
                    sqlCommand.Parameters.Add(new SqlParameter("@gender", Request.QueryString["Sex"]));
                    sqlCommand.Parameters.Add(new SqlParameter("@maritalstatus", (Request.QueryString["MaritalStatus"] == "") ? "Single" : "Married"));
                    sqlCommand.Parameters.Add(new SqlParameter("@education", Request.QueryString["Education"]));
                    sqlCommand.Parameters.Add(new SqlParameter("@favColors", Request.QueryString["FavColors"]));
                    sqlConnection.Open();    // Open Connection
                    sqlCommand.ExecuteNonQuery();   // Execute

                    Response.Write("true");

                } catch (Exception) { Response.Write("false"); }
                finally { sqlConnection.Close(); }  // Close Connection
            }
        }
    }
}