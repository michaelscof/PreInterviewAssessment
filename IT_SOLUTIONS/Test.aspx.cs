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
    public partial class Test : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        static int row, ap=0, eng=0, clck, min, second, r,counter=0,testno;
        static int questionno=1,k,exit;
        static string opt1, opt2, opt3, opt4;
        static int[] a=new int[5];
        static Random ran = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOptions.Items.Clear();
            Page previouspage = Page.PreviousPage;
            con = new SqlConnection(cs);
            CheckAttemptedQuestions();
            if (timer1.Enabled == false || exit == 1)
                k = 0;
            if (k == 1)
            {
                if (ap == 1)
                    cmd = new SqlCommand("GetUnansweredAptitudeQuestions", con);
                if(eng==1)
                    cmd = new SqlCommand("GetUnansweredEnglishQuestions", con);
                for (int i = 0; i < 5; i++)
                {
                    if (a[i] == 0)
                        questionno = i + 1;
                    break;
                }
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.Parameters.AddWithValue("@Test_No", testno);
                cmd.Parameters.AddWithValue("@Test_Ques_No", questionno);
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblQuestionNo.Text = dr["Test_Ques_No"].ToString();
                    lblQuestion.Text = dr["Ques"].ToString();
                    lblOptions.Items.Add(dr["Option1"].ToString());
                    opt1 = dr["Option1"].ToString();
                    lblOptions.Items.Add(dr["Option2"].ToString());
                    opt2 = dr["Option2"].ToString();
                    lblOptions.Items.Add(dr["Option3"].ToString());
                    opt3 = dr["Option3"].ToString(); ;
                    lblOptions.Items.Add(dr["Option4"].ToString());
                    opt4 = dr["Option4"].ToString();
                    lblCorrectAnswer.Text = dr["Correct_Ans"].ToString();
                }
                con.Close();
            }
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
                if (!IsPostBack)
                {
                    GetTestsCompleted();
                    GetQuestion();
                    ViewState["time"]=Convert.ToInt32(Session["time"]);
                    //for (int i = 0; i < 5; i++)
                        //a[i] = 0;
                }
            }
            if (counter >= 3)
            {
                Session["counter"] = 0;
            }
            if (lblQuestionNo.Text == "5")
            {
                GoBackToUncompletedQuestions();
                UpdateTestGiven();
            }
        }
        protected void timer1_Tick(object sender, EventArgs e)
        {
            Timer();
        }
        protected void btnSkip_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
            CheckQuestionCounter();
            MakeButtonsOrange();
            if (questionno == 5)
            {
                a[4] = 0;
                k = 1;
            }
                questionno = Convert.ToInt32(lblQuestionNo.Text) + 1;
                lblQuestionNo.Text = questionno.ToString();
                if(questionno>=1 && questionno<=5)
                    GetQuestion();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Timer();
            CheckQuestionCounter();
            SaveAnswer();
            MakeButtonsGreen();
            if (questionno == 5)
                a[4] = 1;
                questionno = Convert.ToInt32(lblQuestionNo.Text) + 1;
                lblQuestionNo.Text = questionno.ToString();
                lblOptions.Items.Clear();
                if (questionno >= 1 && questionno <= 5)
                    GetQuestion();
                if (lblQuestionNo.Text == "5")
                {
                    btnQuestion5.Enabled = false;
                    k = 1;
                }
        }
        protected void btnQuestion1_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
        }
        protected void btnQuestion2_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
        }

        protected void btnQuestion3_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
        }

        protected void btnQuestion4_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
        }
        protected void btnQuestion5_Click(object sender, EventArgs e)
        {
            Timer();
            lblOptions.Items.Clear();
        }
        protected void Timer()
        {
            if (ViewState["time"] != null)
            {
                clck = (int)ViewState["time"] - 1;
                label1.Text = clck.ToString();
                min = clck / 60;
                second = clck % 60;
                lblMinutes.Text = "0" + min.ToString();
                if (second < 10)
                    lblSeconds.Text = "0" + second.ToString();
                else
                    lblSeconds.Text = second.ToString();
            }
            ViewState["time"] = clck;
            if (clck == 0)
                timer1.Enabled = false;
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
        protected void btnExitTest_Click(object sender, EventArgs e)
        {
            exit = 1;
        }
        protected void GetQuestion()
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
                    lblQuestion.Text = dr["Ques"].ToString();
                    lblOptions.Items.Add(dr["Ans1"].ToString());
                    opt1 = dr["Ans1"].ToString();
                    lblOptions.Items.Add(dr["Ans2"].ToString());
                    opt2 = dr["Ans2"].ToString();
                    lblOptions.Items.Add(dr["Ans3"].ToString());
                    opt3 = dr["Ans3"].ToString(); ;
                    lblOptions.Items.Add(dr["Ans4"].ToString());
                    opt4 = dr["Ans4"].ToString();
                    lblCorrectAnswer.Text = dr["Correct_Ans"].ToString();
                }
                con.Close();
                InsertIntoDatabase();
        }
        protected void MakeButtonsGreen()
        {
            if (questionno == 1)
                btnQuestion1.CssClass = "btn btn-success";
            if (questionno == 2)
                btnQuestion2.CssClass = "btn btn-success";
            if (questionno == 3)
                btnQuestion3.CssClass = "btn btn-success";
            if (questionno == 4)
                btnQuestion4.CssClass = "btn btn-success";
            if (questionno == 5)
                btnQuestion5.CssClass = "btn btn-success";
        }
        protected void MakeButtonsOrange()
        {
            if (questionno == 1)
                btnQuestion1.CssClass = "btn btn-warning";
            if (questionno == 2)
                btnQuestion2.CssClass = "btn btn-warning";
            if (questionno == 3)
                btnQuestion3.CssClass = "btn btn-warning";
            if (questionno == 4)
                btnQuestion4.CssClass = "btn btn-warning";
            if (questionno == 5)
                btnQuestion5.CssClass = "btn btn-warning";
        }
        protected void InsertIntoDatabase()
        {
            con = new SqlConnection(cs);
            if (ap == 1)
                cmd = new SqlCommand("AptitudeTestInsertion", con);
            else 
                cmd = new SqlCommand("EnglishTestInsertion", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Test_no",(testno+1));
            cmd.Parameters.AddWithValue("@Test_Ques_No",lblQuestionNo.Text.ToString());
            cmd.Parameters.AddWithValue("@Ques",lblQuestion.Text.ToString());
            cmd.Parameters.AddWithValue("@Option1", opt1);
            cmd.Parameters.AddWithValue("@Option2", opt2);
            cmd.Parameters.AddWithValue("@Option3", opt3);
            cmd.Parameters.AddWithValue("@Option4", opt4);
            cmd.Parameters.AddWithValue("@Correct_Ans",lblCorrectAnswer.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void UpdateTestGiven()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("UpdateUserTests", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Tests_given", (testno + 1));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void CheckQuestionCounter()
        {
            Session["counter"] = Convert.ToInt32(Session["counter"]) + 1;
            if(counter<=3)
            counter = Convert.ToInt32(Session["counter"]);
        }
        protected void GetTestsCompleted()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetUserActivity", con);
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            while(dr.Read())
                testno = Convert.ToInt32(dr["Tests_given"].ToString());
            con.Close();
        }
        protected void SaveAnswer()
        {
            if (Page.IsValid)
            {
                con = new SqlConnection(cs);
                if (ap == 1)
                    cmd = new SqlCommand("CheckAptitudeQues", con);
                else
                    cmd = new SqlCommand("CheckEnglishQues", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.Parameters.AddWithValue("@Test_no", (testno + 1));
                cmd.Parameters.AddWithValue("@Test_Ques_No", lblQuestionNo.Text.ToString());
                cmd.Parameters.AddWithValue("@Ques", lblQuestion.Text.ToString());
                if (lblOptions.SelectedIndex != -1)
                {
                    if (lblOptions.SelectedItem.ToString().Equals(opt1) || lblOptions.SelectedItem.ToString().Equals(opt2) || lblOptions.SelectedItem.ToString().Equals(opt3) || lblOptions.SelectedItem.ToString().Equals(opt4))
                        cmd.Parameters.AddWithValue("@Ans", lblOptions.SelectedItem.ToString());
                    else
                        cmd.Parameters.AddWithValue("@Ans", 0);
                }
                else
                    cmd.Parameters.AddWithValue("@Ans", 0);
                cmd.Parameters.AddWithValue("@Correct_Ans", lblCorrectAnswer.Text.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void GoBackToUncompletedQuestions()
        {
            if(btnQuestion1.CssClass == "btn btn-success")
                a[0]=1;
            if (btnQuestion1.CssClass == "btn btn-warning")
                a[0]=0;
            if (btnQuestion2.CssClass == "btn btn-success")
                a[1] = 1;
            if (btnQuestion2.CssClass == "btn btn-warning")
                a[1] = 0;
            if (btnQuestion3.CssClass == "btn btn-success")
                a[2] = 1;
            if (btnQuestion3.CssClass == "btn btn-warning")
                a[2] = 0;
            if (btnQuestion4.CssClass == "btn btn-success")
                a[3] = 1;
            if (btnQuestion4.CssClass == "btn btn-warning")
                a[3] = 0;
        }
        protected void CheckAttemptedQuestions()
        {
            if(btnQuestion1.CssClass == "btn btn-success")
                btnQuestion1.Enabled = false;
            if (btnQuestion1.CssClass == "btn btn-warning")
                btnQuestion1.Enabled = true;
            if (btnQuestion2.CssClass == "btn btn-success")
                btnQuestion2.Enabled = false;
            if (btnQuestion2.CssClass == "btn btn-warning")
                btnQuestion2.Enabled = true;
            if (btnQuestion3.CssClass == "btn btn-warning")
                btnQuestion3.Enabled = false;
            if (btnQuestion3.CssClass == "btn btn-warning")
                btnQuestion3.Enabled = true;
            if (btnQuestion4.CssClass == "btn btn-success")
                btnQuestion4.Enabled = false;
            if (btnQuestion4.CssClass == "btn btn-warning")
                btnQuestion4.Enabled = true;
        }
    }
}