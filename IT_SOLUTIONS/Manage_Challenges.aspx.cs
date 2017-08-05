using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace IT_SOLUTIONS
{
    public partial class Manage_Challenges : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void LbtnManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Users.aspx");
        }
        protected void LbtnManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }

        protected void LbtnOtherActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
        }

        protected void LbtnManageChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Challenges.aspx");
        }
        protected void LbtnSendMail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Send_Mail.aspx");
        }

        protected void btnShowUpload_Click(object sender, EventArgs e)
        {
            lblDocument.Visible = true;
            FileUploadChallenge.Visible = true;
            btnUpload.Visible = true;
            lblDisplayStatus.Visible = false;
            txtChallengeDescription.Visible = true;
            txtChallengeName.Visible = true;
            FileImage.Visible = true;
            lblimg.Visible = true;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            FileInfo fi = new FileInfo(FileUploadChallenge.FileName);
            byte[] File_content = FileUploadChallenge.FileBytes;
            string File_Name = fi.Name;
            string File_Extn = fi.Extension;
            if(File_Extn.Equals(".pdf")&& Page.IsValid)
            {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Save_Challenge", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@File_Name", File_Name);
            cmd.Parameters.AddWithValue("@File_content", File_content);
            cmd.Parameters.AddWithValue("@File_Extn", File_Extn);
            cmd.Parameters.AddWithValue("@Upload_DateTime", System.DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@Challenge_Description", txtChallengeDescription.Text.ToString());
            cmd.Parameters.AddWithValue("@Challenge_Image", "project pics/"+FileImage.FileName);
            cmd.Parameters.AddWithValue("@Challenge_Name", txtChallengeName.Text.ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblDisplayStatus.Visible = true;
            lblDocument.Visible = true;
            FileUploadChallenge.Visible = true;
            btnUpload.Visible = true;
            FillData();
            }
            else
            {
                lblDisplayStatus.Text="Please Upload in pdf format";
                lblDisplayStatus.Visible=true;
            }
        }

        protected void btnViewChallenges_Click(object sender, EventArgs e)
        {
            GridViewChallenge.Visible = true;
            FillData();
            lblDisplayStatus.Visible = false;
        }

        private void FillData()
        {
            DataTable dt = new DataTable();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Get_Challenges", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                GridViewChallenge.DataSource=dt;
                GridViewChallenge.DataBind();
            }
            con.Close();
        }
        protected void OpenDocument(object sender, EventArgs e)
        {
            LinkButton lb = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lb.NamingContainer;
            int FileID = Convert.ToInt32(GridViewChallenge.DataKeys[gr.RowIndex].Value.ToString());
            Download(FileID);
        }
        private void Download(int FileID)
        {
            DataTable dt = new DataTable();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetDocument", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FileID", FileID);
            con.Open();
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            string name = dt.Rows[0]["File_Name"].ToString();
            byte[] documentBytes = (byte[])dt.Rows[0]["File_content"];
            con.Close();
            Response.ClearContent();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition",string.Format("attachment; filename={0}",name));
            Response.AddHeader("Content-Length",documentBytes.Length.ToString());
            Response.BinaryWrite(documentBytes);
            Response.Flush();
            Response.Close();
        }
    }
}