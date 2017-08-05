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
namespace IT_SOLUTIONS
{
    public partial class register : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlParameter sp1;
        static int flag = 0;
        private Random rand = new Random();
        SqlDataReader dr;
        int yt, yi;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 2010; i <= DateTime.Now.Year; i++)
                {
                    ListItem li = new ListItem(i.ToString(), i.ToString());
                    ddgradyos.Items.Add(li);
                }
            }
            con = new SqlConnection(cs);
            cmd = new SqlCommand("selection", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddcollege.Items.Add(dr[0].ToString());
                        dddiscipline.Items.Add(dr[1].ToString());
                        ddmajor.Items.Add(dr[2].ToString());
                        dddegree.Items.Add(dr[3].ToString());
                        ddquestion.Items.Add(dr[6].ToString());
                        location.Items.Add(dr[7].ToString());
                    }
                }
                con.Close();
                cmd.Dispose();
            }
        }
        protected void fileupload1_click(object sender, EventArgs e)
        {

            if (fileuploadimage.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fileuploadimage.FileName);
                    fileuploadimage.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("check_mail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", txtemail.Text.ToString());
                con.Open();
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                if (a == 0)
                {
                    yt = Convert.ToInt32(txttenyop.Text);
                    yi = Convert.ToInt32(txtinteryop.Text);
                    cmd = new SqlCommand("insert_registeration", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("Date_Regis", System.DateTime.Today.ToString());
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.ToString());
                    cmd.Parameters.AddWithValue("@Gender", RadioButtonListgender.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@DOB", txtdob.Text.ToString());
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text.ToString());
                    cmd.Parameters.AddWithValue("@Mobile_Number", txtmobile.Text.ToString());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
                    cmd.Parameters.AddWithValue("@College", ddcollege.Text.ToString());
                    cmd.Parameters.AddWithValue("@Discipline", dddiscipline.Text.ToString());
                    cmd.Parameters.AddWithValue("@Major", ddmajor.Text.ToString());
                    cmd.Parameters.AddWithValue("@Degree", dddegree.Text.ToString());
                    cmd.Parameters.AddWithValue("@YOS", ddgradyos.Text.ToString());
                    cmd.Parameters.AddWithValue("@YOC", ddgradyoc.Text.ToString());
                    cmd.Parameters.AddWithValue("@Percentage", Txtpercent.Text.ToString());
                    cmd.Parameters.AddWithValue("@YOP_10", txttenyop.Text.ToString());
                    cmd.Parameters.AddWithValue("@Percentage_10", txttenpercent.Text.ToString());
                    if (yi >= (yt + 2))
                    {
                        cmd.Parameters.AddWithValue("@YOP_12", txtinteryop.Text.ToString());
                        cmd.Parameters.AddWithValue("@Percentage_12", txtinterpercent.Text.ToString());
                        cmd.Parameters.AddWithValue("@Security_Ques", ddquestion.Text.ToString());
                        cmd.Parameters.AddWithValue("@Security_Ans", txtanswer.Text.ToString());
                        if (fileuploadimage.HasFile)
                        {
                            string filename = Path.GetFileName(fileuploadimage.FileName);
                            string fileExtension = Path.GetExtension(fileuploadimage.FileName).ToLower();
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
                                StatusLabel.ForeColor = System.Drawing.Color.Red;
                                StatusLabel.Text = "Invalid File. Please upload a File with extension " +
                                               string.Join(",", validFileTypes);
                            }
                            else
                            {
                                long filesize = fileuploadimage.PostedFile.ContentLength;
                                if (filesize > 307200)
                                {
                                    StatusLabel.ForeColor = System.Drawing.Color.Red;
                                    StatusLabel.Text = "File size " + (filesize / 1024) + " KB exceeds our size limit (300 KB)";
                                }
                                else
                                {
                                    string filepath = Server.MapPath("~/uploaded pics/" + filename);
                                    fileuploadimage.SaveAs(filepath.ToLower());
                                    StatusLabel.ForeColor = System.Drawing.Color.Green;
                                    StatusLabel.Text = "File uploaded successfully.";
                                }
                            }

                        }
                        else
                        {
                            StatusLabel.ForeColor = System.Drawing.Color.Red;
                            StatusLabel.Text = "Please Select an image to upload.";
                        }
                        cmd.Parameters.AddWithValue("@Profile_Image", fileuploadimage.FileName.ToString());
                        cmd.Parameters.AddWithValue("@Interview_location", location.Text.ToString());
                        con.Open();
                        int row = cmd.ExecuteNonQuery();
                        con.Close();
                        if (row > 0)
                        {
                            Response.Write("<script>alert('Registration successful')</script>");
                            Response.Redirect("Start_Page.aspx");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('user already exist')</script>");
                }

            }
        }
        protected void ddgradyos_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddgradyoc.Items.Clear();
            int intValue = Convert.ToInt32(ddgradyos.SelectedValue);
            for (int i = intValue + 3; i <= 2019; i++)
            {
                ListItem li = new ListItem(i.ToString(), i.ToString());
                ddgradyoc.Items.Add(li);
            }
        }
        } 
        }
