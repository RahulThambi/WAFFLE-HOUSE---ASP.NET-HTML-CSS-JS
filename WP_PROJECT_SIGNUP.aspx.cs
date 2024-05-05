using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWP_PROJECT_WAFFLE_HOUSE
{
    public partial class WP_PROJECT_SIGNUP : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into emp values('" + txtEmail.Text + "','" + txtPassword.Text + "')", con);


            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Label1.Visible = true;

            txtEmail.Text = "";
            txtPassword.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("WP_PROJECT_LOGIN.aspx");
        }
    }
}