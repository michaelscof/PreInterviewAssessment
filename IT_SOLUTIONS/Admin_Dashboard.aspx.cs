using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;
namespace IT_SOLUTIONS
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        int a, b;
        public Label l1
        {
            set
            {
                Start_Page obj = new Start_Page();
                ////Label1.Text = obj.sendval.Text;
            }
        }   
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("TotalUsers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            lblTotal.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
            a = Convert.ToInt32(lblTotal.Text);
            con.Close();
            cmd = new SqlCommand("OnlineUsers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            lblOnline.Text = Convert.ToInt32(cmd.ExecuteScalar()).ToString();
            b = Convert.ToInt32(lblOnline.Text);
            con.Close();
            if(!IsPostBack)
            {
                GetChartData();
                GetChartType();
            }
        }
        private void GetChartData()
        {
            Series sr=Chart1.Series["Series1"];
            sr.Points.AddXY("Users Online",b);
            sr.Points.AddXY("Users Not Online",(a-b));
        }
        private void GetChartType()
        {
            foreach(int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li=new ListItem(Enum.GetName(typeof(SeriesChartType),chartType),chartType.ToString());
                DropDownListSelectChartType.Items.Add(li);
            }
        }
        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void LbtnManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }

        protected void LbtnManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Users.aspx");
        }

        protected void LbtnManageChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Challenges.aspx");
        }

        protected void LbtnSendMail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Send_Mail.aspx");
        }

        protected void LbtnOtherActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
        }
        protected void GotoManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Users.aspx");
        }

        protected void GotoManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }

        protected void GotoManageSurveys_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
        }

        protected void GotoManageChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Challenges.aspx");
        }

        protected void GotoSendMail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Send_mail.aspx");
        }

        protected void GotoCheckMail_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownListSelectChartType_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData();
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownListSelectChartType.SelectedValue);
        }

        protected void GotoCheckMail_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://mail.google.com/mail/u/0/#inbox");
        }
    }
}