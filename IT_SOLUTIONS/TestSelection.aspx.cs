using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace IT_SOLUTIONS
{
    public partial class TestSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnAptitude_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aptitude_Selection.aspx");
        }
        protected void btnEnglish_Click(object sender, EventArgs e)
        {
            Response.Redirect("English_Selection.aspx");
        }
    }
}