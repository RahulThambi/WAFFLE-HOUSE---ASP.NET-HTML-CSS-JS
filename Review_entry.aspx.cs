using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWP_proj2
{
    public partial class Review_Entry_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string suggestion = msg.Text;

            Session["Suggestion"] = suggestion;

            Response.Redirect("Review_Page.aspx");
        }
    }
}