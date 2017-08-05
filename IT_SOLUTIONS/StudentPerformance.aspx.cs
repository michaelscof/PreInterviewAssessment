using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;
using System.Configuration;
namespace IT_SOLUTIONS
{
    public partial class StudentPerformance : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;
        static string email;
        int m, n;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            email = Request.QueryString["email"];
            lblEmail.Text = email;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetUserActivity", con);
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
                if (m < 100)
                    lblpercentTests.Text = m + "%";
                else
                    lblpercentTests.Text = "100%";
                m = Convert.ToInt32(dr["Challenges_completed"].ToString()) * 100 / 4;
                progressBarChallenges.Style.Add("width", m + "%");
                if (m < 100)
                    lblpercentChallenges.Text = m + "%";
                else
                    lblpercentChallenges.Text = "100%";
            }
            con.Close();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetUserLoginCount", con);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                m = Convert.ToInt32(dr["Login_First"].ToString());
                n = Convert.ToInt32(dr["Login_Second"].ToString());
            }
            con.Close();
            GetChartData();
        }
        private void GetChartData()
        {
            Series sr = ChartActivity.Series["Series1"];
            sr.Points.AddXY("Days 1 to 15", m);
            sr.Points.AddXY("Remaining Days", n);
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

        protected void lbtnTestAptitude_Click(object sender, EventArgs e)
        {
            lblTestNo.Text = ((LinkButton)sender).Text;
            GridView2.Visible = true;
            GridView2.DataSourceID = "SqlDataSourceTestResult";
        }
        protected void lbtnTestEnglish_Click(object sender, EventArgs e)
        {
            lblTestNo2.Text = ((LinkButton)sender).Text;
            GridView4.Visible = true;
            GridView4.DataSourceID = "SqlDataSourceTestResult2";
        }
        protected void lbtnTests_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView3.Visible = true;
            GridViewChallenges.Visible = false;
            lblAptitude.Visible = true;
            lblEnglish.Visible = true;
            GridView1.DataSourceID = "SqlDataSourceTests";
            GridView3.DataSourceID = "SqlDataSourceTestEnglish";
        }

        protected void lbtnChallenges_Click(object sender, EventArgs e)
        {
            GridViewChallenges.Visible = true;
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            lblAptitude.Visible = false;
            lblEnglish.Visible = false;
            FillData();
        }

        protected void lbtnSurveys_Click(object sender, EventArgs e)
        {
            Session["Userid"] = email;
            lblAptitude.Visible = false;
            lblEnglish.Visible = false;
            Response.Redirect("ViewSurveys.aspx");
        }
        private void FillData()
        {
            DataTable dt = new DataTable();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("ShowSubmittedChallenges", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", email);
            con.Open();
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                GridViewChallenges.DataSource = dt;
                GridViewChallenges.DataBind();
            }
            else
            {
                GridViewChallenges.EmptyDataText = "<center>The User has not submitted any challenges</center>";
                con.Close();
            }
        }
        protected void DownloadOwnDoc(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lb.NamingContainer;
            int k = gr.RowIndex;
            Label l3 = (Label)GridViewChallenges.Rows[k].FindControl("lblShowChallenge");
            string b = l3.Text;
            Label l4 = (Label)GridViewChallenges.Rows[k].FindControl("lblUploadDate");
            string a = l4.Text;
            DataTable dt = new DataTable();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("DownloadSubmittedChallenges", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Challenge_Name", b);
            con.Open();
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            string name = dt.Rows[0]["File_Name"].ToString();
            byte[] documentBytes = (byte[])dt.Rows[0]["File_content"];
            con.Close();
            Response.ClearContent();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
            Response.AddHeader("Content-Length", documentBytes.Length.ToString());
            Response.BinaryWrite(documentBytes);
            Response.Flush();
            Response.Close();
        }
    }
}