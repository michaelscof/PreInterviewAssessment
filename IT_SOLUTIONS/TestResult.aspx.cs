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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;
        static int i, score,x,y;
        static string email;
        static string[] ques = new string[5];
        static string[] ans = new string[5];
        static string[] correct_ans = new string[5];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cs);
                if (Session["TestCategory"].ToString() == "Aptitude")
                    cmd = new SqlCommand("GetAptitudeScore", con);
                if (Session["TestCategory"].ToString() == "English")
                    cmd = new SqlCommand("GetEnglishScore", con);
                cmd.CommandType = CommandType.StoredProcedure;
                Session["Test_No"] = (int)Session["Test_No"] + 1;
                email = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.Parameters.AddWithValue("@Test_No", Session["Test_No"].ToString());
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    i = 0;
                    while (dr.Read() && i < 5)
                    {
                        ques[i] = dr["Ques"].ToString();
                        ans[i] = dr["Ans"].ToString();
                        if (ans[i] == "questionskipped")
                            Session["Skipped"] = (int)Session["Skipped"] + 1;
                        correct_ans[i] = dr["Correct_Ans"].ToString();
                        i++;
                    }
                }
                int a = (int)Session["Skipped"];
                lblAttempted.Text = (5 - a).ToString();
                lblNotAttempted.Text = Session["Skipped"].ToString();
                con.Close();
                x = 0;
                y = 0;
                GetScore();
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Ques"), new DataColumn("Ans"), new DataColumn("Correct_Ans") });
                dt1.Columns.AddRange(new DataColumn[3] { new DataColumn("Ques"), new DataColumn("Ans"), new DataColumn("Correct_Ans") });
                Session["RightQues"] = dt;
                Session["WrongQues"] = dt1;
                this.BindGrid();
                this.BindGrid1();
            }
        }
        protected void BindGrid()
        {
            GetQues.DataSource = (DataTable)Session["RightQues"];
            GetQues.DataBind(); 
        }
        protected void BindGrid1()
        {
            GetQues.DataSource = (DataTable)Session["WrongQues"];
            GetQues.DataBind();
        }
        protected void GetScore()
        {
            if(!IsPostBack)
            {
                score=0;
                for (i = 0; i < 5; i++)
                {
                    if (ans[i].Equals(correct_ans[i]))
                    {
                        score += 2;
                        Session["RightAns"] = (int)Session["RightAns"] + 1;
                    }
                    else if (ans[i].Equals("questionskipped"))
                        score = score + 0;
                    else
                    {
                        score -= 1;
                        Session["WrongAns"] = (int)Session["WrongAns"] + 1;
                    }
                }
                lblScore.Text = score.ToString();
            }
            AddScore();
        }
        protected void AddScore()
        {
            con = new SqlConnection(cs);
            if (Session["TestCategory"].ToString() == "Aptitude")
                cmd = new SqlCommand("InsertAptitudeScore", con);
            if (Session["TestCategory"].ToString() == "English")
                cmd = new SqlCommand("InsertEnglishScore", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Test_No", Session["Test_No"].ToString());
            cmd.Parameters.AddWithValue("@Score", score);
            cmd.Parameters.AddWithValue("@Correct_Ans", (int)Session["RightAns"]);
            cmd.Parameters.AddWithValue("@Incorrect_Ans", (int)Session["WrongAns"]);
            cmd.Parameters.AddWithValue("@Unattempted_Ques", (int)Session["Skipped"]);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["RightAns"] = Session["WrongAns"] = Session["Skipped"] = 0;
        }

        protected void btnRight_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["RightQues"];
            this.BindGrid();
            if ((int)Session["RightTest"] == 1)
            {
                for (int i = 0; i < 5; i++)
                {
                    if(ans[i]!="questionskipped")
                    {
                        if (ans[i] == correct_ans[i])
                        {
                            //DataTable dt = (DataTable)Session["RightQues"];
                            dt.Rows.Add(ques[i], ans[i], correct_ans[i]);
                            Session["RightQues"] = dt;
                            this.BindGrid();
                            y++;
                        }
                    }
                }
                Session["RightTest"] = 0;
                if (y == 0)
                    GetQues.EmptyDataText = "<center>None of your answers were right</center>";
            }
        }

        protected void btnWrong_Click(object sender, EventArgs e)
        {
            DataTable dt1 = (DataTable)Session["WrongQues"];
            this.BindGrid1();
            if ((int)Session["WrongTest"] == 1)
            {
                for (int i = 0; i < 5; i++)
                {
                    if(ans[i]!="questionskipped")
                    {
                        if (ans[i] != correct_ans[i])
                        {
                            //DataTable dt1 = (DataTable)Session["WrongQues"];
                            dt1.Rows.Add(ques[i], ans[i], correct_ans[i]);
                            Session["WrongQues"] = dt1;
                            this.BindGrid1();
                            x++;
                        }
                    }
                }
                Session["WrongTest"] = 0;
                if (x == 0)
                    GetQues.EmptyDataText = "<center>None of your answers were wrong</center>";
            }
        }
      /*  protected void Page_Unload(object sender, EventArgs e)
        {
            Session["RightTest"] = 0;
            Session["WrongTest"] = 0;
            Session["RightQues"] = 0;
            Session["WrongQues"] = 0;
            Session["Skipped"] = 0;
        }*/                            
    }
}