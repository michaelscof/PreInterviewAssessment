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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        static int row=20, ap=0, eng=0, clck=600, min, second, r;
        static string[] opt = new string[20];
        static Random ran = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page previouspage = Page.PreviousPage;
            con = new SqlConnection(cs);
            if (previouspage != null)
            {
                if (previouspage.Title == "Test Detail-Aptitude")
                {
                    ap = 1;
                    cmd = new SqlCommand("CountNoOfAptitudeQuestions", con);
                    clck = 600;
                }
                if (previouspage.Title == "Test Detail-English")
                {
                    eng = 1;
                    cmd = new SqlCommand("CountNoOfEnglishQuestions", con);
                    clck = 600;
                }
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                row = Int32.Parse(cmd.ExecuteScalar().ToString());
                con.Close();
            }
            if (!IsPostBack)
            {
                GetTestsCompleted();
                GetQuestions();
            }
            DisableLinks();
           /* Boolean m = Page.IsPostBack;
            Response.Write(m);*/
        }
        protected void DisableLinks()
        {
            LinkButton hLogo = this.Master.FindControl("linkLogo") as LinkButton;
            hLogo.Enabled = false;
            LinkButton lbtnProfile = this.Master.FindControl("lbtnProfile") as LinkButton;
            lbtnProfile.Enabled = false;
            LinkButton lbtnSignOut = this.Master.FindControl("lbtnSignOut") as LinkButton;
            lbtnSignOut.Enabled = false;
            LinkButton fProfile = this.Master.FindControl("lbtnVProfile") as LinkButton;
            fProfile.Enabled = false;
            HyperLink linkHome = this.Master.FindControl("linkHome") as HyperLink;
            linkHome.Enabled = false;
            HyperLink linkTest = this.Master.FindControl("linkTest") as HyperLink;
            linkTest.Enabled = false;
            HyperLink linkChallenges = this.Master.FindControl("linkChallenge") as HyperLink;
            linkChallenges.Enabled = false;
            HyperLink linkChallenge = this.Master.FindControl("linkChallenge") as HyperLink;
            linkTest.Enabled = false;
            HyperLink linkSurveys = this.Master.FindControl("surveys") as HyperLink;
            linkSurveys.Enabled = false;
        }
        protected void timer1_Tick(object sender, EventArgs e)
        {
            timer();
            if ((int)Session["time"] == 0)
            {
                timer1.Enabled = false;
                InsertIntoDatabase1();
                InsertIntoDatabase2();
                InsertIntoDatabase3();
                InsertIntoDatabase4();
                InsertIntoDatabase5();
                Response.Redirect("TestResult.aspx");
            }
        }
        protected void timer()
        {
             if (Session["time"] != null)
            {
                clck = (int)Session["time"] - 1;
                label1.Text = clck.ToString();
                min = clck / 60;
                second = clck % 60;
                lblMinutes.Text = "0" + min.ToString();
                if (second < 10)
                    lblSeconds.Text = "0" + second.ToString();
                else
                    lblSeconds.Text = second.ToString();
            }
            Session["time"] = clck;
            SetColour();
        }
        protected void SetColour()
        {
            if (clck < 60)
            {
                lblMinutes.CssClass = "label label-danger";
                lblSeconds.CssClass = "label label-danger";
            }
        }
        protected void GetTestsCompleted()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetUser", con);
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            int g = (int)cmd.ExecuteScalar();
            con.Close();
            if (g == 1)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("GetUserActivity", con);
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                    Session["TestNo"] = Convert.ToInt32(dr["Tests_given"].ToString());
                con.Close();
            }
            else if (g == 0)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("InsertUser", con);
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void UpdateTestGiven()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("UpdateUserTests", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Tests_given", (int)Session["TestNo"] + 1);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void GetQuestions()
        {
            GetQuestion1();
            GetQuestion2();
            GetQuestion3();
            GetQuestion4();
            GetQuestion5();
        }
        protected void GetQuestion1()
        {
            r = Convert.ToInt32(ran.Next(1, row));
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("Get_Aptitude_Ques", con);
            if (eng == 1)
                cmd = new SqlCommand("Get_English_Ques", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", r);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblQuestion1.Text = dr["Ques"].ToString();
                radOptions1.Items.Add(dr["Ans1"].ToString());
                opt[0] = dr["Ans1"].ToString();
                radOptions1.Items.Add(dr["Ans2"].ToString());
                opt[1] = dr["Ans2"].ToString();
                radOptions1.Items.Add(dr["Ans3"].ToString());
                opt[2] = dr["Ans3"].ToString(); ;
                radOptions1.Items.Add(dr["Ans4"].ToString());
                opt[3] = dr["Ans4"].ToString();
                lblCorrectAnswer1.Text = dr["Correct_Ans"].ToString();
            }
            con.Close();
        }
        protected void GetQuestion2()
        {
            r = Convert.ToInt32(ran.Next(1, row));
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("Get_Aptitude_Ques", con);
            if (eng == 1)
                cmd = new SqlCommand("Get_English_Ques", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", r);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblQuestion2.Text = dr["Ques"].ToString();
                radOptions2.Items.Add(dr["Ans1"].ToString());
                opt[4] = dr["Ans1"].ToString();
                radOptions2.Items.Add(dr["Ans2"].ToString());
                opt[5] = dr["Ans2"].ToString();
                radOptions2.Items.Add(dr["Ans3"].ToString());
                opt[6] = dr["Ans3"].ToString(); ;
                radOptions2.Items.Add(dr["Ans4"].ToString());
                opt[7] = dr["Ans4"].ToString();
                lblCorrectAnswer2.Text = dr["Correct_Ans"].ToString();
            }
            con.Close();
        }
        protected void GetQuestion3()
        {
            r = Convert.ToInt32(ran.Next(1, row));
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("Get_Aptitude_Ques", con);
            if (eng == 1)
                cmd = new SqlCommand("Get_English_Ques", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", r);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblQuestion3.Text = dr["Ques"].ToString();
                radOptions3.Items.Add(dr["Ans1"].ToString());
                opt[8] = dr["Ans1"].ToString();
                radOptions3.Items.Add(dr["Ans2"].ToString());
                opt[9] = dr["Ans2"].ToString();
                radOptions3.Items.Add(dr["Ans3"].ToString());
                opt[10] = dr["Ans3"].ToString(); ;
                radOptions3.Items.Add(dr["Ans4"].ToString());
                opt[11] = dr["Ans4"].ToString();
                lblCorrectAnswer3.Text = dr["Correct_Ans"].ToString();
            }
            con.Close();
        }
        protected void GetQuestion4()
        {
            r = Convert.ToInt32(ran.Next(1, row));
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("Get_Aptitude_Ques", con);
            if (eng == 1)
                cmd = new SqlCommand("Get_English_Ques", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", r);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblQuestion4.Text = dr["Ques"].ToString();
                radOptions4.Items.Add(dr["Ans1"].ToString());
                opt[12] = dr["Ans1"].ToString();
                radOptions4.Items.Add(dr["Ans2"].ToString());
                opt[13] = dr["Ans2"].ToString();
                radOptions4.Items.Add(dr["Ans3"].ToString());
                opt[14] = dr["Ans3"].ToString(); ;
                radOptions4.Items.Add(dr["Ans4"].ToString());
                opt[15] = dr["Ans4"].ToString();
                lblCorrectAnswer4.Text = dr["Correct_Ans"].ToString();
            }
            con.Close();
        }
        protected void GetQuestion5()
        {
            r = Convert.ToInt32(ran.Next(1, row));
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("Get_Aptitude_Ques", con);
            if (eng == 1)
                cmd = new SqlCommand("Get_English_Ques", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@r", r);
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblQuestion5.Text = dr["Ques"].ToString();
                radOptions5.Items.Add(dr["Ans1"].ToString());
                opt[16] = dr["Ans1"].ToString();
                radOptions5.Items.Add(dr["Ans2"].ToString());
                opt[17] = dr["Ans2"].ToString();
                radOptions5.Items.Add(dr["Ans3"].ToString());
                opt[18] = dr["Ans3"].ToString(); ;
                radOptions5.Items.Add(dr["Ans4"].ToString());
                opt[19]= dr["Ans4"].ToString();
                lblCorrectAnswer5.Text = dr["Correct_Ans"].ToString();
            }
            con.Close();
        }
        protected void InsertIntoDatabase1()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            if(eng==1) 
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no",(int)Session["TestNo"]+1);
            cmd.Parameters.AddWithValue("@Test_Ques_No",lblQuestionNo1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques",lblQuestion1.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt[0]);
            cmd.Parameters.AddWithValue("@Option2", opt[1]);
            cmd.Parameters.AddWithValue("@Option3", opt[2]);
            cmd.Parameters.AddWithValue("@Option4", opt[3]);
            if (radOptions1.SelectedIndex != -1)
            {
                cmd.Parameters.AddWithValue("@Ans", radOptions1.SelectedItem.ToString());
            }
            else
                cmd.Parameters.AddWithValue("@Ans", "questionskipped");
            cmd.Parameters.AddWithValue("@Correct_Ans",lblCorrectAnswer1.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void InsertIntoDatabase2()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            if (eng == 1)
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no", (int)Session["TestNo"] + 1);
            cmd.Parameters.AddWithValue("@Test_Ques_No", lblQuestionNo2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques", lblQuestion2.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt[4]);
            cmd.Parameters.AddWithValue("@Option2", opt[5]);
            cmd.Parameters.AddWithValue("@Option3", opt[6]);
            cmd.Parameters.AddWithValue("@Option4", opt[7]);
            if (radOptions2.SelectedIndex != -1)
            {
                cmd.Parameters.AddWithValue("@Ans", radOptions2.SelectedItem.ToString());
            }
            else
                cmd.Parameters.AddWithValue("@Ans", "questionskipped");
            cmd.Parameters.AddWithValue("@Correct_Ans", lblCorrectAnswer2.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void InsertIntoDatabase3()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            if (eng == 1)
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no", (int)Session["TestNo"] + 1);
            cmd.Parameters.AddWithValue("@Test_Ques_No", lblQuestionNo3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques", lblQuestion3.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt[8]);
            cmd.Parameters.AddWithValue("@Option2", opt[9]);
            cmd.Parameters.AddWithValue("@Option3", opt[10]);
            cmd.Parameters.AddWithValue("@Option4", opt[11]);
            if (radOptions3.SelectedIndex != -1)
            {
                cmd.Parameters.AddWithValue("@Ans", radOptions3.SelectedItem.ToString());
            }
            else
                cmd.Parameters.AddWithValue("@Ans", "questionskipped");
            cmd.Parameters.AddWithValue("@Correct_Ans", lblCorrectAnswer3.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void InsertIntoDatabase4()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            if (eng == 1)
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no", (int)Session["TestNo"] + 1);
            cmd.Parameters.AddWithValue("@Test_Ques_No", lblQuestionNo4.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques", lblQuestion4.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt[12]);
            cmd.Parameters.AddWithValue("@Option2", opt[13]);
            cmd.Parameters.AddWithValue("@Option3", opt[14]);
            cmd.Parameters.AddWithValue("@Option4", opt[15]);
            if (radOptions4.SelectedIndex != -1)
            {
                cmd.Parameters.AddWithValue("@Ans", radOptions4.SelectedItem.ToString());
            }
            else
                cmd.Parameters.AddWithValue("@Ans", "questionskipped");
            cmd.Parameters.AddWithValue("@Correct_Ans", lblCorrectAnswer4.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void InsertIntoDatabase5()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            if (eng == 1)
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no", (int)Session["TestNo"] + 1);
            cmd.Parameters.AddWithValue("@Test_Ques_No", lblQuestionNo5.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques", lblQuestion5.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt[16]);
            cmd.Parameters.AddWithValue("@Option2", opt[17]);
            cmd.Parameters.AddWithValue("@Option3", opt[18]);
            cmd.Parameters.AddWithValue("@Option4", opt[18]);
            if (radOptions5.SelectedIndex != -1)
            {
                cmd.Parameters.AddWithValue("@Ans", radOptions5.SelectedItem.ToString());
            }
            else
                cmd.Parameters.AddWithValue("@Ans", "questionskipped");
            cmd.Parameters.AddWithValue("@Correct_Ans", lblCorrectAnswer5.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void btnExitTest_Click(object sender, EventArgs e)
        {
            UpdateTestGiven();
            if (ap == 1)
                Session["TestCategory"] = "Aptitude";
            if (eng == 1)
                Session["TestCategory"] = "English";
            Session["Test_No"] = Session["TestNo"];
            InsertIntoDatabase1();
            InsertIntoDatabase2();
            InsertIntoDatabase3();
            InsertIntoDatabase4();
            InsertIntoDatabase5();
            Response.Redirect("TestResult.aspx");
        }
        }
    }