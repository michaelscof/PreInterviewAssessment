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
    public partial class Manage_Users : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        static string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("SelectionDistinct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        DropDownListSelect.Items.Add(dr["College"].ToString());
                    }
                }
                con.Close();
            }
        }

        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void LbtnSendMail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Send_Mail.aspx");
        }

        protected void LbtnManageChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Challenges.aspx");
        }

        protected void LbtnOtherActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
        }

        protected void LbtnManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }

        protected void LbtnManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Users.aspx");
        }

        protected void DropDownListSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSourceList";
        }
        protected void lbtnName_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Details.aspx?Name=" + ((LinkButton)sender).Text);
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSourceSearch";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSourceList";
        }


       

    }
}