using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.ComponentModel;
using System.Text;
using System.Net;
using System.Net.Mail;
namespace IT_SOLUTIONS
{
    public partial class User_Login : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        static int k;
        static string m;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            Session["Userid"] = txtuname.Text.ToString();
            GetEmailPassword();
        }
        protected void Login()
        {
            if (Convert.ToInt32(Session["counter"]) == 1)
            {
                Session["counter"] = 2;
                UpdateLogin();     
            }
            else
            {
                Response.Write("<script>alert('Incorrect email id and/or passsword')</script>");
            }
        }
        protected void lbtnForgotPassword_Click(object sender, EventArgs e)
        {
            if (txtuname.Text == "")
                Response.Write("<script>alert('Please Enter your Email id')</script>");
            else
            {
                ForgotPassword();
            }
        }
        protected void GetEmailPassword()
        {
            if (txtuname.Text != "" && txtpassword.Text != "")
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("selection1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", txtuname.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text.ToString());
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["Email"].ToString() ==  txtuname.Text && dr["Password"].ToString() == txtpassword.Text.ToString())
                    {
                        Session["counter"] = 1;
                    }
                    else
                        Session["counter"] = 2;
                }
                con.Close();
                Login();
            }
            else
                Response.Write("<script>alert('Please Enter your email id and password')</script>");
        }
        protected void UpdateLogin()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Login_Logout", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email",  Session["Userid"].ToString());
            cmd.Parameters.AddWithValue("@Login_Status", 1);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con = new SqlConnection(cs);
            String date = System.DateTime.Today.Date.ToString().Substring(0, 2);
            if (Convert.ToInt32(date) >= 1 && Convert.ToInt32(date) <= 15)
            {
                cmd = new SqlCommand("UpdateLoginFirst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                cmd = new SqlCommand("UpdateLoginSecond", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("User_Home.aspx?id=" + Session["Userid"].ToString());
        }
        protected void ForgotPassword()
        {
            Session["Userid"] = txtuname.Text;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("ForgotPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", txtuname.Text);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["Userid"] = dr["Email"].ToString();
                    Session["Password"] = dr["Password"].ToString();
                    Session["Name"] = dr["Name"].ToString();
                }
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("weareitsolution@gmail.com");
                mail.Subject = "Password Recovery";
                Session["Message"] = "Dear " + Session["Name"] + ",Your password for your email id " + Session["Userid"].ToString() + " at www.itsolutions.com is " + Session["Password"].ToString();
                mail.Body = Session["Message"].ToString();
                mail.CC.Add(Session["Userid"].ToString());
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
                Response.Write("<script>alert('Please check your email id for your password')</script>");
            }
            else
            {
                Response.Write("<script>alert('Email id not registered')</script>");
            }
            con.Close();
        }
    }
}