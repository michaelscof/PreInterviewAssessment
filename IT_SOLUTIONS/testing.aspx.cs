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
    public partial class testing : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Application["Userid"] = TextBox1.Text;
            string m=Application["Userid"].ToString();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Login_Logout", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", m);
            cmd.Parameters.AddWithValue("@Login_Status", 1);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("User_Home.aspx?id=" + m);
        }
    }
}