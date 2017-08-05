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
    public partial class family : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        string u;
        int p,p1,f,ed,lo,cu,ca;
        protected void Page_Load(object sender, EventArgs e)
        {
               
           
        }
        protected void btnsubmit_click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string u = Session["Userid"].ToString();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("update_surveys", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", u);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("insert_family", con);
                cmd.CommandType = CommandType.StoredProcedure;
                u = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", u);
                if (rbtype1.Checked)
                {
                    cmd.Parameters.AddWithValue("@ftype", rbtype1.Text.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ftype", rbtype2.Text.ToString());
                }
                cmd.Parameters.AddWithValue("@members", txtmembers.Text.ToString());
                cmd.Parameters.AddWithValue("@monthly_income", comboincome.Text.ToString());
                cmd.Parameters.AddWithValue("@father_name", Txtfather.Text.ToString());
                cmd.Parameters.AddWithValue("@father_age", Txtfage.Text.ToString());
                cmd.Parameters.AddWithValue("@father_qual", Txtfqual.Text.ToString());
                cmd.Parameters.AddWithValue("@father_occupation", txtfoccupation.Text.ToString());
                cmd.Parameters.AddWithValue("@mother_name", Txtmname.Text.ToString());
                cmd.Parameters.AddWithValue("@mother_age", txtmage.Text.ToString());
                cmd.Parameters.AddWithValue("@mother_qual", txtmqual.Text.ToString());
                cmd.Parameters.AddWithValue("@mother_occupation", txtmoccupation.Text.ToString());
                cmd.Parameters.AddWithValue("@siblings", txtsiblings.Text.ToString());
                con.Open();
                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    Response.Redirect("survey_dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Data not saved')</script>");
                }

            }
                
            }
        }
      

    }
