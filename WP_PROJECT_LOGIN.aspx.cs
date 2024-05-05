using System;
using System.Configuration;
using System.Data.SqlClient;

namespace AWP_PROJECT_WAFFLE_HOUSE
{
    public partial class WP_PROJECT_LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // Check if the email and password exist in the database
            if (CheckCredentials(email, password))
            {
                // Redirect to the new page upon successful login
                Response.Redirect("LANDING_PAGE.aspx");
            }
            else
            {
                // Display an error message if login fails
                Response.Write("<script>alert('Invalid email or password. Please try again.');</script>");
            }
        }

        private bool CheckCredentials(string email, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM emp WHERE email = @Email AND password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("WP_PROJECT_SIGNUP.aspx");
        }
    }
}
