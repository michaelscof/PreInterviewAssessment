using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace IT_SOLUTIONS
{
    public partial class User_Header : System.Web.UI.MasterPage
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s=Session["Userid"].ToString();
            if (!IsPostBack)
            {
                if (s != "0")
                    lblUser.Text = Session["Userid"].ToString();
                else
                    Response.Redirect("User_Login.aspx");
            }
            if (s == "0")
                Response.Redirect("User_Login.aspx");
        }
        protected void LbtnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Profile.aspx?id=" + lblUser.Text);
        }
        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            UserSignOut();
        }
        private void UserSignOut()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Login_Logout", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", lblUser.Text.ToString());
            cmd.Parameters.AddWithValue("@Login_Status", 0);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Userid"] = 0;
            Response.Redirect("User_Login.aspx");
            Session.Abandon();
        }
        protected void linkLogo_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Home.aspx");
        }
        protected void lbtnVProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Profile.aspx?id=" + lblUser.Text);
        }
    }
}