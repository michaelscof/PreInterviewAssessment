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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        DataSet ds;
        SqlDataAdapter da;
        static string challenge_name;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Init(object Sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = GetData();
            CountChallenges();
            CountSubmissions();
            RepeaterChallenges.DataSource = ds;
            RepeaterChallenges.DataBind();
            FillData();
        }
        private void CountChallenges()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("CountChallenges", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            string m = cmd.ExecuteScalar().ToString(); ;
            lblCountChallenges.Text = m;
            con.Close();
        }
        private void CountSubmissions()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("CountSubmittedChallenges", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            string n = cmd.ExecuteScalar().ToString(); ;
            lblCountSubmissions.Text = n;
            con.Close();
        }
        private DataSet GetData()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                da = new SqlDataAdapter("Select * from Challenges", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        protected void RepeaterChallenges_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label l4 = (Label)e.Item.FindControl("lblChallengeTitle");
            challenge_name = l4.Text;
            if (e.CommandName == "UploadChallenge")
            {
                FileUpload fu = (FileUpload)e.Item.FindControl("UploadDoc");
                if (fu.HasFile)
                {
                    Boolean check=CheckSubmission();
                    if (check == false)
                    {
                        string k = fu.FileName;
                        FileInfo fi = new FileInfo(k);
                        byte[] File_content = fu.FileBytes;
                        string File_Name = fi.Name;
                        string File_Extn = fi.Extension;
                        Label l2 = (Label)e.Item.FindControl("lblDisplay");
                        if (File_Extn.ToLower().Equals(".pdf") || File_Extn.ToLower().Equals(".doc") || File_Extn.ToLower().Equals(".docx"))
                        {
                            con = new SqlConnection(cs);
                            cmd = new SqlCommand("Save_UserChallenge", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                            cmd.Parameters.AddWithValue("@File_content", File_content);
                            cmd.Parameters.AddWithValue("@Upload_DateTime", System.DateTime.Now.ToString());
                            cmd.Parameters.AddWithValue("@Challenge_Name", challenge_name);
                            cmd.Parameters.AddWithValue("@File_Name", File_Name);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            l2.Visible = true;
                            FillData();
                        }
                        else
                        {
                            l2.Text = "Please upload pdf or Word document";
                            l2.Visible = true;
                        }
                    }
                    else
                    {
                        Label l2 = (Label)e.Item.FindControl("lblDisplay");
                        l2.Text = "You can submit a challenge only once.";
                        l2.Visible = true;
                    }
                }
            else
            {
                Label l2 = (Label)e.Item.FindControl("lblDisplay");
                l2.Text = "Please select file for uploading";
                l2.Visible = true;
            }
        }
            else if (e.CommandName == "DownloadChallenge")
            {
                Download(challenge_name);
            }
        }
        private Boolean CheckSubmission()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("CheckSubmission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Challenge_Name", challenge_name);
            con.Open();
            int k = (int)cmd.ExecuteScalar();
            con.Close();
            if (k >= 1)
                return true;
            else
                return false;
        }
         private void Download(string challenge_name)
         {
             DataTable dt = new DataTable();
             con = new SqlConnection(cs);
             cmd = new SqlCommand("GetDocumentForUser", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@Challenge_Name", challenge_name);
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
         private void FillData()
         {
             DataTable dt = new DataTable();
             con = new SqlConnection(cs);
             cmd = new SqlCommand("ShowSubmittedChallenges", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
             con.Open();
             dr = cmd.ExecuteReader();
             dt.Load(dr);
             if (dt.Rows.Count > 0)
             {
                 lblSubmittedChallenges.Visible = true;
                 GridViewChallenges.DataSource = dt;
                 GridViewChallenges.DataBind();
             }
             con.Close();
         }
         protected void DownloadOwnDoc(object sender,EventArgs e)
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
             cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
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

       /*  protected void GridViewChallenges_PageIndexChanging(object sender, GridViewPageEventArgs e)
         {
             GridViewChallenges.PageIndex = e.NewPageIndex;
             GridViewChallenges.DataBind();
         }*/
      }
   }