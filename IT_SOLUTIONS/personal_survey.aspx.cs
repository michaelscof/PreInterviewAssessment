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
    public partial class personal_survey : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        static int p1, f, ed, lo, cu, ca;
        string u;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("check_surveymail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            int a = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
          /*  if (a == 0)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("Survey_Pointinitialy", con);
                cmd.CommandType = CommandType.StoredProcedure;
                u = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", u);
                p1 = Convert.ToInt32(Session["personal_points"]);
                f = Convert.ToInt32(Session["family_points"]);
                ed = Convert.ToInt32(Session["edu_points"]);
                lo = Convert.ToInt32(Session["locality_points"]);
                cu = Convert.ToInt32(Session["curricuar_points"]);
                ca = Convert.ToInt32(Session["career_points"]);
                cmd.Parameters.AddWithValue("Personal_Survey", p1);
                cmd.Parameters.AddWithValue("Family_Survey", f);
                cmd.Parameters.AddWithValue("Education_Survey", ed);
                cmd.Parameters.AddWithValue("Locality_Survey", lo);
                cmd.Parameters.AddWithValue("Career_Aspiration", ca);
                cmd.Parameters.AddWithValue("Extra_Curricular", cu);
                cmd.Parameters.AddWithValue("Total_points", f + p1 + ed + cu + ca + lo);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                return;
            }*/

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
        
                con = new SqlConnection(cs);
                cmd = new SqlCommand("update_surveys", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", u);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("insert_personal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                u = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", u);
                cmd.Parameters.AddWithValue("@landline_no", RadioButtonListlandline.Text.ToString());
                cmd.Parameters.AddWithValue("@pancard", RadioButtonListpan.Text.ToString());
                cmd.Parameters.AddWithValue("bank_acc", RadioButtonListbank.Text.ToString());
                cmd.Parameters.AddWithValue("@adhar", RadioButtonListadhar.Text.ToString());
                cmd.Parameters.AddWithValue("@driving_lic", RadioButtonListliscence.Text.ToString());
                cmd.Parameters.AddWithValue("@voterid", RadioButtonListvoter.Text.ToString());
                cmd.Parameters.AddWithValue("@passport", RadioButtonListpassport.Text.ToString());
                cmd.Parameters.AddWithValue("@height", txtheight.Text.ToString());
                cmd.Parameters.AddWithValue("@weight", txtweight.Text.ToString());
                cmd.Parameters.AddWithValue("@spectacles", RadioButtonListspecs.Text.ToString());
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



        protected void btnreset_Click(object sender, EventArgs e)
        {


        }
    }
}