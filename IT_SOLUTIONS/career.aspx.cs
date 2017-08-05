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
    public partial class career : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        static string s, m, b, t,u;
        int career_points,f2,p3,ed2,lo,p1,f,ed,cu,ca;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

        }

        protected void ddrules_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in itrules.Items)
            {
                if (i.Text == ddrules.SelectedItem.Text)
                {
                    return;
                }
            }
            itrules.Items.Add(ddrules.SelectedValue.ToString());
        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            itrules.Items.Remove(itrules.SelectedValue.ToString());
        }

        protected void btnadd2_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in itrules.Items)
            {
                if (i.Text == ddcompanies.SelectedItem.Text)
                {
                    return;
                }
            }
            companies.Items.Add(ddcompanies.SelectedValue.ToString());
        }

        protected void btnremove2_Click(object sender, EventArgs e)
        {
            companies.Items.Remove(companies.SelectedValue.ToString());
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("update_surveys", con);
                cmd.CommandType = CommandType.StoredProcedure;
                b = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", b);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                con = new SqlConnection(cs);
                cmd = new SqlCommand("insert_career", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", b);

                cmd.Parameters.AddWithValue("@aspect_its", ddaspect.Text.ToString());
                cmd.Parameters.AddWithValue("@abroad", RadioButtonListabroad.Text.ToString());
                cmd.Parameters.AddWithValue("@sector",ddsector.SelectedValue.ToString());
                foreach (ListItem i in itrules.Items)
                {
                    m = m + i.Text + ",";
                }

                cmd.Parameters.AddWithValue("@it_roles", m);
                foreach (ListItem i in companies.Items)
                {
                    s = s + i.Text + ",";
                }

                cmd.Parameters.AddWithValue("@companies", s);
                cmd.Parameters.AddWithValue("@expect_salary", ddsalary.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@preference", ddfurther.SelectedValue.ToString());
                career_points = 20;
           /*     if (!IsPostBack)
                {
                    Page lastpage = (Page)Context.Handler;
                    if (lastpage is locality_survey)
                    {
                        f2 = ((locality_survey)lastpage).points8;
                        p3 = ((locality_survey)lastpage).points7;
                        ed2 = ((locality_survey)lastpage).points9;
                        lo = ((locality_survey)lastpage).points10;

                    }
                }*/
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
       
        protected void btnreset_Click1(object sender, EventArgs e)
        {

        }

        protected void ddrules_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ddrules_TextChanged(object sender, EventArgs e)
        {
           /* string rules = ddrules.Text.ToString();
            itrules.Items.Add(rules); */

        }
    }
}