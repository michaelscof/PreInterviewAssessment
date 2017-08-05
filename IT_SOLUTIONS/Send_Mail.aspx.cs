using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
namespace IT_SOLUTIONS
{
    public partial class Send_Mail : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        static int w = 0;
        static string email="",name="",location="";
        static string[] toemail, tolocation, toname,messagebody;
        protected void Page_Load(object sender, EventArgs e)
        {
           // email = Request.QueryString["Name"];
            Page lastpage = (Page)Context.Handler;
                if (!IsPostBack)
                {
                    getColleges();
                }
                if (lastpage is Student_Details)
                {
                    w = 1;
                    btnGetMany.Enabled = true;
                }
                else
                {
                    if (!IsPostBack)
                    {
                        GetSelected();
                    }
                }
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
       /* protected void Button1_Click(object sender, EventArgs e)
        {
            mail.From = new MailAddress("weareitsolution@gmail.com");
            mail.Subject = txtSubject.Text;
            mail.Body = txtBody.Value;
            if (toemail!=null)
            {
                if (w != 3)
                {

                    for (int i = 0; i < toemail.Count(); i++)
                    {
                        mail.Bcc.Add(toemail[i]);
                    }
                    if (FileUploadAttachment.HasFile)
                    {
                        mail.Attachments.Add(new Attachment(FileUploadAttachment.PostedFile.InputStream, FileUploadAttachment.FileName));
                    }
                    SmtpClient client = new SmtpClient();
                    client.Host = "smtp.gmail.com";
                    con = new SqlConnection(cs);
                    cmd = new SqlCommand("GetEmailPassword", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Email", "weareitsolution@gmail.com");
                    con.Open();
                    dr = cmd.ExecuteReader();
                    string k = "";
                    while (dr.Read())
                    {
                        k = dr["Admin_password"].ToString();
                    }
                    con.Close();
                    client.Credentials = new NetworkCredential("weareitsolution@gmail.com", k);
                    client.EnableSsl = true;
                    client.Send(mail);
                    for (int i = 0; i < toemail.Count(); i++)
                    {
                        con = new SqlConnection(cs);
                        cmd = new SqlCommand("UpdateSentMail", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", toemail[i]);
                        toemail[i] = "";
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    w = 3;
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Mail already sent";
                }
            }
            else
            {

            }
        }*/
        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (w == 1)
                SendMailToOne();
            else
            {
                if (w != 3)
                {
                    for (int i = 0; i < toemail.Count(); i++)
                    {
                        MailMessage mail = new MailMessage("weareitsolution@gmail.com", toemail[i]);
                        if (FileUploadAttachment.HasFile)
                        {
                            mail.Attachments.Add(new Attachment(FileUploadAttachment.PostedFile.InputStream, FileUploadAttachment.FileName));
                        }
                        SmtpClient client = new SmtpClient();
                        client.Host = "smtp.gmail.com";
                        con = new SqlConnection(cs);
                        cmd = new SqlCommand("GetEmailPassword", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", "weareitsolution@gmail.com");
                        con.Open();
                        dr = cmd.ExecuteReader();
                        string k = "";
                        while (dr.Read())
                        {
                            k = dr["Admin_password"].ToString();
                        }
                        con.Close();
                        client.Credentials = new NetworkCredential("weareitsolution@gmail.com", k);
                        client.EnableSsl = true;
                        client.Send(mail);
                        con = new SqlConnection(cs);
                        cmd = new SqlCommand("UpdateSentMail", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", toemail[i]);
                        toemail[i] = "";
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    w = 3;
                }
                }
                /*if (toemail != null)
                {
                    if (w != 3)
                    {
                        for (int i = 0; i < toemail.Count(); i++)
                        {
                            mail.Bcc.Add(toemail[i]);
                        }
                        if (FileUploadAttachment.HasFile)
                        {
                            mail.Attachments.Add(new Attachment(FileUploadAttachment.PostedFile.InputStream, FileUploadAttachment.FileName));
                        }
                        SmtpClient client = new SmtpClient();
                        client.Host = "smtp.gmail.com";
                        con = new SqlConnection(cs);
                        cmd = new SqlCommand("GetEmailPassword", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", "weareitsolution@gmail.com");
                        con.Open();
                        dr = cmd.ExecuteReader();
                        string k = "";
                        while (dr.Read())
                        {
                            k = dr["Admin_password"].ToString();
                        }
                        con.Close();
                        client.Credentials = new NetworkCredential("weareitsolution@gmail.com", k);
                        client.EnableSsl = true;
                        client.Send(mail);
                        for (int i = 0; i < toemail.Count(); i++)
                        {
                            con = new SqlConnection(cs);
                            cmd = new SqlCommand("UpdateSentMail", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Email", toemail[i]);
                            toemail[i] = "";
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                        w = 3;
                    }
                    else
                    {
                        lblMessage.Visible = true;
                        lblMessage.Text = "Mail already sent";
                    }
                }
                else
                {

                }*/
        }
        protected void btnBody_Click(object sender, EventArgs e)
        {
            GetBody();
        }
        protected void GetBody()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetSelected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    email += dr["Email"].ToString() + ",";
                    location += dr["Interview_Location"].ToString() + ",";
                    name += dr["Name"].ToString() + ",";
                }
                int l = email.Length;
                email = email.Substring(0, l - 1);
                txtReceiver.Text = email;
                toemail = email.Split(',');
                int t = location.Length;
                location = location.Substring(0, t - 1);
                tolocation = location.Split(',');
                int z = name.Length;
                name = name.Substring(0, z - 1);
                toname = name.Split(',');
                for (int i = 0; i < toemail.Count(); i++)
                {
                    txtBody.Value = "Dear " + toname[i] + ", \n \n \t Greetings from IT Solutions. We are happy to inform you that you have successfully cleared our initial selection process and you have been shortlisted for the interview. The interview will be conducted post May mid, 2016, and the venue in "+tolocation[i]+" will be communicated to you soon. \n \n Mandatory to bring along the following at the time of Interview: \n 1 CV \n All original mark sheet & Passing Certificate of X , XII and Graduation (Any Other Academic Documents) \n One ID Proof - any of Government approved Photo ID. \n Thanks and regards, \n IT Solutions" ;
                    MailMessage mail = new MailMessage("weareitsolution@gmail.com", toemail[i]);
                    mail.Subject = "Greetings from IT Solutions.Selected for interview";
                    mail.Body = txtBody.Value;
                }
            }
        }
        protected void DropDownListSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListSelect.SelectedValue == "0")
                GridViewSelected.DataSourceID = "SqlDataSourceSelected";
            else
                GridViewSelected.DataSourceID="SqlDataSourceCollege";    
        }
        protected void SendMailToOne()
        {
            Page lastpage = (Page)Context.Handler; 
            txtReceiver.Text = ((Student_Details)lastpage).Email;
            MailMessage mail = new MailMessage("weareitsolution@gmail.com",txtReceiver.Text);
            mail.Subject = txtSubject.Text;
            mail.Body = txtBody.Value;
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetEmailPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", "weareitsolution@gmail.com");
            con.Open();
            dr = cmd.ExecuteReader();
            string k = "";
            while (dr.Read())
            {
                k = dr["Admin_password"].ToString();
            }
            con.Close();
            client.Credentials = new NetworkCredential("weareitsolution@gmail.com", k);
            client.EnableSsl = true;
            client.Send(mail);
        }
        protected void getColleges()
        {
            GridViewSelected.Visible = true;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("selection", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownListSelect.Items.Add(dr[0].ToString());
                }
            }
            con.Close();
        }
        protected void GetSelected()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetSelected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            string email = "";
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    email = email + dr["Email"].ToString() + ",";
                }
                int l = email.Length;
                email = email.Substring(0, l - 1);
                txtReceiver.Text = email;
                toemail = email.Split(',');
            }
            else
            {
                lblMessage.Text = "No candidate selected currently/Mail sent to all selected candidates";
                lblMessage.Visible = true;
            }
            con.Close();
        }

        protected void btnBodyText_Click(object sender, EventArgs e)
        {
            GetBodyInterview();
        }
        protected void GetBodyInterview()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("GetSelected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    email += dr["Email"].ToString() + ",";
                    location += dr["Interview_Location"].ToString() + ",";
                    name += dr["Name"].ToString() + ",";
                }
                int l = email.Length;
                email = email.Substring(0, l - 1);
                txtReceiver.Text = email;
                toemail = email.Split(',');
                int t = location.Length;
                location = location.Substring(0, t - 1);
                tolocation = location.Split(',');
                int z = name.Length;
                name = name.Substring(0, z - 1);
                toname = name.Split(',');
                for (int i = 0; i < toemail.Count(); i++)
                {
                    txtBody.Value = "Dear " + toname[i] + ", \n \n \t Greetings from IT Solutions. The interview will be conducted on May 23, 2016, and the venue is TCS Regional office in your city  " + tolocation[i] + " . \n \n Mandatory to bring along the following at the time of Interview: \n 1 CV \n All original mark sheet & Passing Certificate of X , XII and Graduation (Any Other Academic Documents) \n One ID Proof - any of Government approved Photo ID. \n Thanks and regards, \n IT Solutions";
                    MailMessage mail = new MailMessage("weareitsolution@gmail.com", toemail[i]);
                    mail.Subject = "Interview Call Letter";
                    mail.Body = txtBody.Value;
                }
            }
        }
        }
    }