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
using System.Resources;

namespace IT_SOLUTIONS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        string filename;
        protected void Page_Load(object sender, EventArgs e)
        {
            SetDefaultView();
            if (!IsPostBack)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("getuserdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    username.Text = dr["Name"].ToString();
                    imgUser.ImageUrl = "~/uploaded pics/" + dr["Profile_Image"].ToString();
                    email.Text = dr["Email"].ToString();
                    bday.Text = dr["DOB"].ToString();
                    phone.Text = dr["Mobile_Number"].ToString();
                    intlocation.Text = dr["Interview_Location"].ToString();
                    clgpercent.Text = dr["percentage"].ToString() + "%";
                }
                con.Close();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("get_city", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());

                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    city.Text = dr["per_city"].ToString();
                }
                con.Close();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("show_status", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                cmd.Parameters.AddWithValue("@Surveys_answered", Labelsurveys.ToString());
                cmd.Parameters.AddWithValue("@Tests_given", Labeltests.ToString());
                cmd.Parameters.AddWithValue("@Challenges_completed",Labelchallenges.ToString());
                con.Open();
                dr=cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Labelchallenges.Text = dr["Challenges_completed"].ToString();
                        Labelsurveys.Text = dr["Surveys_answered"].ToString();
                        Labeltests.Text = dr["Tests_given"].ToString();
                    }
                }
                con.Close();


            }
        }

        private void SetDefaultView()
        {
            MultiViewprofile.ActiveViewIndex = 0;
        }
        

        protected void changepic_Click(object sender, EventArgs e)
        {
            uploadpic.Visible = true;
            btnchangepic.Visible = true;
        }
        protected void uploadpic_Click(object sender, EventArgs e)
        {
            if (uploadpic.HasFile)
            {
                try
                {
                    filename = Path.GetFileName(uploadpic.FileName);
                    uploadpic.SaveAs(Server.MapPath("~/") + filename);

                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Pic not uploaded')</script>");
                }
            }
        }

        protected void btnchangepic_Click(object sender, EventArgs e)
        {
            string filename = string.Empty;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("update_pic", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            if (uploadpic.HasFile)
            {
                filename = Path.GetFileName(uploadpic.FileName);
                string fileExtension = Path.GetExtension(uploadpic.FileName).ToLower();
                string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg" };
                bool isValidFile = false;
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (fileExtension == "." + validFileTypes[i])
                    {
                        isValidFile = true;
                        break;
                    }
                }

                if (!isValidFile)
                {

                    lblerrors.ForeColor = System.Drawing.Color.Red;
                    lblerrors.Visible = true;
                    lblerrors.Text = "Invalid File. Please upload a File with extension " +
                                   string.Join(",", validFileTypes);
                }
                else
                {
                    long filesize = uploadpic.PostedFile.ContentLength;
                    if (filesize > 307200)
                    {
                        lblerrors.ForeColor = System.Drawing.Color.Red;
                        lblerrors.Text = "File size " + (filesize / 1024) + " KB exceeds our size limit (300 KB)";
                    }
                    else
                    {
                        string filepath = Server.MapPath("~/uploaded pics/" + filename);
                        uploadpic.SaveAs(filepath.ToLower());
                        
                        lblerrors.ForeColor = System.Drawing.Color.Green;
                        lblerrors.Text = "File uploaded successfully.";
                    }
                }

            }
            else
            {
                lblerrors.ForeColor = System.Drawing.Color.Red;
                lblerrors.Text = "Please Select an image to upload.";
            }
            cmd.Parameters.AddWithValue("@Profile_Image", uploadpic.FileName.ToString());
            con.Open();
            dr = cmd.ExecuteReader();
            //string filename2 = Path.GetFileName(uploadpic.FileName);
            //string filepath2 = Server.MapPath("~/uploaded pics/" + filename2);
            imgUser.ImageUrl = "~/uploaded pics/" + filename;
            con.Close();
            uploadpic.Visible = false;
            btnchangepic.Visible = false;
        }


              protected void lbtpercent_Click(object sender, EventArgs e)
              {
                  txtUpdatePercent.Visible = true;
                  btnupdatepercent.Visible = true;
              }

              protected void btnupdatepercent_Click(object sender, EventArgs e)
              {
                  if (Page.IsValid)
                  {
                      con = new SqlConnection(cs);
                      cmd = new SqlCommand("UpdateCollegePercent", con);
                      cmd.CommandType = CommandType.StoredProcedure;
                      cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                      cmd.Parameters.AddWithValue("@Percentage", Int32.Parse(txtUpdatePercent.Text));
                      con.Open();
                      dr = cmd.ExecuteReader();
                      con.Close();
                      clgpercent.Text = txtUpdatePercent.Text + "%" ;
                      btnupdatepercent.Visible = false;
                      txtUpdatePercent.Visible = false;
                  }
              }
              protected void btnupdatelocation_Click(object sender, EventArgs e)
              {
                      con = new SqlConnection(cs);
                      cmd = new SqlCommand("updatelocation", con);
                      cmd.CommandType = CommandType.StoredProcedure;
                      cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                      cmd.Parameters.AddWithValue("@Interview_Location",txtupdatelocation.Text.ToString());
                      con.Open();
                      dr = cmd.ExecuteReader();
                      con.Close();
                      intlocation.Text = txtupdatelocation.Text;
                      btnupdatelocation.Visible = false;
                      txtupdatelocation.Visible = false;
                  
              }

              protected void lbtlocation_Click(object sender, EventArgs e)
              {
                  txtupdatelocation.Visible = true;
                  btnupdatelocation.Visible = true;
              }

              protected void LinkButtonpass_Click(object sender, EventArgs e)
              {
                  MultiViewprofile.ActiveViewIndex = 1;
              }

              protected void Btnpass_Click(object sender, EventArgs e)
              {
                  if (Page.IsValid)
                  {
                      con = new SqlConnection(cs);
                      cmd = new SqlCommand("check_password", con);
                      cmd.CommandType = CommandType.StoredProcedure;
                      cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                      cmd.Parameters.AddWithValue("@Password", Txtcurrent.Text.ToString());
                      con.Open();
                      dr = cmd.ExecuteReader();
                      if (dr.HasRows)
                      {
                          while (dr.Read())
                          {
                              if (Txtcurrent.Text.Equals(dr["Password"]))
                              {
                                  con.Close();
                                  con = new SqlConnection(cs);
                                  cmd = new SqlCommand("ChangeUserPassword", con);
                                  cmd.CommandType = CommandType.StoredProcedure;
                                  cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                                  cmd.Parameters.AddWithValue("@Password", Txtnew.Text.ToString());
                                  con.Open();
                                  cmd.ExecuteNonQuery();
                                  Response.Write("<script>alert('Password changed successfully')</script>");
                                  Response.Redirect("User_Home.aspx");
                              }
                              else
                              {
                                  Response.Write("<script>alert('Password not matched')</script>");
                              }
                          }
                      }
                  }
              } 
        }
    }
