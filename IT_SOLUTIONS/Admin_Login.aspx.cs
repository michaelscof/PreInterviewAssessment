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
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void EmptyControls()
        {
            AdminName.Text = "";
            AdminPassword.Text = "";
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CheckAdmin();
            }
        }
        protected void CheckAdmin()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Admin_Login_Check", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string a = dr[0].ToString();
                    string b = dr[1].ToString();
                    if (AdminName.Text.CompareTo(a) == 0 && AdminPassword.Text.CompareTo(b) == 0)
                        Response.Redirect("Admin_Dashboard.aspx");
                   /* else
                        Response.Redirect("Hack_Attempt.aspx");*/
                }
            con.Close();
        }
    }
}