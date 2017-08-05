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
    public partial class Manage_Tests : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
     static   int c=0, d=0;
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               //  BindGrid();
            }
        }
        /*protected void BindGrid()
        {
            SqlConnection con = new SqlConnection(cs);
            cmd = new SqlCommand("Select_Aptitude",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
            cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
            con.Open();
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            GridViewDel.DataSource = ds;
            GridViewDel.DataBind();
            con.Close();
        }
        protected void BindGrid1()
        {
            SqlConnection con = new SqlConnection(cs);
            cmd = new SqlCommand("Select_English",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
            cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
            con.Open();
            ds = new DataSet();
            da.Fill(ds);
            GridViewDel.DataSource = ds;
            GridViewDel.DataBind();
            con.Close();
        }*/
        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        protected void LbtnManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            displayControls();
        }
        protected void displayControls()
        {
            lblAnswer.Visible = true;
            lblOption1.Visible = true;
            lblOption2.Visible = true;
            lblOption3.Visible = true;
            lblOption4.Visible = true;
            lblQues.Visible = true;
            txtAnswer.Visible = true;
            txtOption1.Visible = true;
            txtOption2.Visible = true;
            txtOption3.Visible = true;
            txtOption4.Visible = true;
            txtQues.Visible = true;
            btnInsertAptitude.Visible = true;
            btnInsertEnglish.Visible = true;
        }
        protected void HideControls()
        {
            lblAnswer.Visible = false;
            lblOption1.Visible = false;
            lblOption2.Visible = false;
            lblOption3.Visible = false;
            lblOption4.Visible = false;
            lblQues.Visible = false;
            txtAnswer.Visible = false;
            txtOption1.Visible = false;
            txtOption2.Visible = false;
            txtOption3.Visible = false;
            txtOption4.Visible = false;
            txtQues.Visible = false;
            btnInsertAptitude.Visible = false;
            btnInsertEnglish.Visible = false;
        }
        protected void btnInsertAptitude_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                InsertAptitude();
            }
        }
        protected void InsertAptitude()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Insert_Aptitude", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
            cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblDisplayStatus.Visible = true;
        }
        protected void SelectAptitude()
        {
            GridViewDel.DataSourceID = "SqlDataSourceSelect";
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Select_Aptitude", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
            cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
            con.Open();
            cmd.ExecuteReader();
            con.Close();
        }
        protected void btnInsertEnglish_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                InsertEnglish();
            }
        }
        protected void InsertEnglish()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Insert_English", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
            cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
            cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblDisplayStatus.Visible = true;
        }
        protected void LbtnOtherActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
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
        protected void Del_English_Click(object sender, EventArgs e)
        {
            DeleteFromEnglish();
        }
        protected void DeleteFromEnglish()
        {
            GridViewDel.DataSourceID = "SqlDataSourceDel1";
            txtSearch.Visible = true;
            btnSearch.Visible = true;
            d = 1;
            c = 0;
        }
        protected void DeleteFromAptitude()
        {
            GridViewDel.DataSourceID = "SqlDataSourceDel";
            txtSearch.Visible = true;
            btnSearch.Visible = true;
            c = 1;
            d = 0;
        }
        protected void Del_Aptitude_Click(object sender, EventArgs e)
        {
            DeleteFromAptitude();
        }
        protected void btnShowQues_Click(object sender, EventArgs e)
        {
            Del_Aptitude.Visible = true;
            Del_English.Visible = true;
        }
        protected void GridViewDel_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Control cntrl = e.Row.Cells[0].Controls[1];
                if (cntrl is LinkButton)
                {
                    ((LinkButton)cntrl).OnClientClick = "return confirm('Are you sure you want to delete this question?')";
                }
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (c == 1)
                GridViewDel.DataSourceID = "SqlDataSourceSearchAptitude";
            if (d == 1)
                GridViewDel.DataSourceID = "SqlDataSourceSearchEnglish";
        }
            /* protected void GridViewDel_PageIndexChanging(object sender, GridViewPageEventArgs e)
             {
                 GridViewDel.PageIndex = e.NewPageIndex;
                 BindGrid();
             }
             protected void GridViewDel_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
             {
                 GridViewDel.EditIndex = -1;
                 BindGrid();
             }
             protected void GridViewDel_RowDeleting(object sender, GridViewDeleteEventArgs e)
             {
                 Label Ques = (Label)GridViewDel.Rows[e.RowIndex].FindControl("Label1");
                 string question = Ques.Text;
                 Delete(question);
                 GridViewDel.EditIndex = -1;
                 BindGrid();
             }
             protected void Delete(string question)
             {
                 SqlConnection con = new SqlConnection(cs);
                 cmd = new SqlCommand("Del_Aptitude", con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
                 cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
                 con.Open();
                 cmd.ExecuteNonQuery();
                 con.Close();
                 da = new SqlDataAdapter(cmd);
                 ds = new DataSet();
                 da.Fill(ds);
                 con.Close();
             }
             protected void GridViewDel_RowUpdating(object sender, GridViewUpdateEventArgs e)
             {
                 TextBox Ques = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox1");
                 TextBox Ans1 = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox2");
                 TextBox Ans2 = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox3");
                 TextBox Ans3 = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox4");
                 TextBox Ans4 = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox5");
                 TextBox Correct_Ans = (TextBox)GridViewDel.Rows[e.RowIndex].FindControl("Textbox6");
                 string ques = Ques.Text;
                 string ans1 = Ans1.Text;
                 string ans2 = Ans2.Text;
                 string ans3 = Ans3.Text;
                 string ans4 = Ans4.Text;
                 string correctans = Correct_Ans.Text;
                 Update(ques,ans1,ans2,ans3,ans4,correctans);
                 GridViewDel.EditIndex = -1;
                 BindGrid();
             }
             protected void Update(string ques, string ans1, string ans2, string ans3,string ans4,string correctans)
             {
                 SqlConnection con = new SqlConnection(cs);
                 cmd = new SqlCommand("Update_Aptitude", con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@Ques", txtQues.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans1", txtOption1.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans2", txtOption2.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans3", txtOption3.Text.ToString());
                 cmd.Parameters.AddWithValue("@Ans4", txtOption4.Text.ToString());
                 cmd.Parameters.AddWithValue("@Correct_Ans", txtAnswer.Text.ToString());
                 con.Open();
                 cmd.ExecuteNonQuery();
                 con.Close();
                 da = new SqlDataAdapter(cmd);
                 ds = new DataSet();
                 da.Fill(ds);
                 con.Close();
             }
             protected void GridViewDel_RowEditing(object sender, GridViewEditEventArgs e)
             {
                 GridViewDel.EditIndex = e.NewEditIndex;
                 BindGrid();
             }*/
        }
    }