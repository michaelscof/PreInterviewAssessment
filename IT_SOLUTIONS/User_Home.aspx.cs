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
    public partial class User_Home : System.Web.UI.Page
    {
        SqlCommand cmd=new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        string email;
        int m;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("GetUserName", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                con.Open();
                dr=cmd.ExecuteReader();
                while(dr.Read())
                {
                    lbtnUserName.Text=dr["Name"].ToString();
                    imgUser.ImageUrl = "~/uploaded pics/" + dr["Profile_Image"].ToString();
                }
                con.Close();
            }
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetUserActivity", con);
            email = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                m = Convert.ToInt32(dr["Surveys_answered"].ToString()) * 100 / 6;
                progressBarSurveys.Style.Add("width", m + "%");
                if (m < 100)
                    lblpercentSurveys.Text = m + "%";
                else
                    lblpercentSurveys.Text = "100%";
                m = Convert.ToInt32(dr["Tests_given"].ToString()) * 100 / 2;
                progressBarTests.Style.Add("width", m + "%");
                if(m<100)
                    lblpercentTests.Text = m + "%";
                else
                    lblpercentTests.Text = "100%";
                m = Convert.ToInt32(dr["Challenges_completed"].ToString()) * 100 / 4;
                progressBarChallenges.Style.Add("width", m + "%");
                if(m<100)
                    lblpercentChallenges.Text = m + "%";
                else
                    lblpercentChallenges.Text = "100%";
            }
            con.Close();
        }
        protected void lbtnUserName_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Profile.aspx");
        }

        protected void btnChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Challenges.aspx");
        }

        protected void btnSurveys_Click(object sender, EventArgs e)
        {
            Response.Redirect("survey_dashboard.aspx");
        }

        protected void btnTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestSelection.aspx");
        }
    }
}