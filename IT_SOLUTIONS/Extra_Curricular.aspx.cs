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
    public partial class Extra_Curricular : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        string s, m, b, t1, u;
        int curricular_points, f3, p4, ed3, lo2, ca, p1, f, ed, lo, cu;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ddlanguages_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in hobbies.Items)
            {
                if (i.Text == ddhobbies.SelectedItem.Text)
                {
                    return;
                }
            }
            hobbies.Items.Add(ddhobbies.SelectedValue.ToString());
        }

        protected void Btnremove_Click(object sender, EventArgs e)
        {
            hobbies.Items.Remove(hobbies.SelectedValue.ToString());
        }

        protected void ddmovies_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd2_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in movies.Items)
            {
                if (i.Text == ddmovies.SelectedItem.Text)
                {
                    return;
                }
            }
            movies.Items.Add(ddmovies.SelectedValue.ToString());
        }

        protected void btnremove2_Click(object sender, EventArgs e)
        {
            movies.Items.Remove(movies.SelectedValue.ToString());
        }

        protected void ddbooks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd3_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in books.Items)
            {
                if (i.Text == ddbooks.SelectedItem.Text)
                {
                    return;
                }
            }
            books.Items.Add(ddbooks.SelectedValue.ToString());
        }

        protected void btnremove3_Click(object sender, EventArgs e)
        {
            books.Items.Remove(books.SelectedValue.ToString());
        }

        protected void ddworship_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd4_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in books.Items)
            {
                if (i.Text == ddstates.SelectedItem.Text)
                {
                    return;
                }
            }
            states.Items.Add(ddstates.SelectedValue.ToString());
        }

        protected void btnremove4_Click(object sender, EventArgs e)
        {
            books.Items.Remove(books.SelectedValue.ToString());
        }

        protected void ddstates_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {


                con = new SqlConnection(cs);
                cmd = new SqlCommand("update_surveys", con);
                cmd.CommandType = CommandType.StoredProcedure;
                u = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", u);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            
                con = new SqlConnection(cs);
                cmd = new SqlCommand("insert_curricular", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", u);
                foreach (ListItem i in hobbies.Items)
                {
                    s = s + i.Text + ",";
                }
                cmd.Parameters.AddWithValue("@hobbies", s);

                cmd.Parameters.AddWithValue("@sport", sports.Text.ToString());
                cmd.Parameters.AddWithValue("@exercise", exercise.Text.ToString());
                cmd.Parameters.AddWithValue("@health_check", ddcheckup.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@internet_hrs", Txtinternet.Text.ToString());
                cmd.Parameters.AddWithValue("@social", RadioButtonnetworks.Text.ToString());
                cmd.Parameters.AddWithValue("@linkedin", RadioButtonlinkedin.Text.ToString());
                foreach (ListItem i in movies.Items)
                {
                    m = m + i.Text + ",";
                }
                cmd.Parameters.AddWithValue("@movies", m);
                foreach (ListItem i in books.Items)
                {
                    b = b + i.Text + ",";
                }
                cmd.Parameters.AddWithValue("@books", b);
                cmd.Parameters.AddWithValue("@worship", ddworship.Text.ToString());
                cmd.Parameters.AddWithValue("@social_service", RadioButtonsocial.Text.ToString());
                cmd.Parameters.AddWithValue("@co_curricular", RadioButtonactivities.Text.ToString());
                foreach (ListItem i in movies.Items)
                {
                    t1 = t1 + i.Text + ",";
                }
                cmd.Parameters.AddWithValue("@states", t1);
                /*  if (!IsPostBack)
                  {
                      career lastpage = (career)Context.Handler;
                          f3 = ((career)lastpage).points12;
                          p4 = ((career)lastpage).points13;
                          ed3 = ((career)lastpage).points14;
                          lo2 = ((career)lastpage).points15;
                          ca = ((career)lastpage).points11;        
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
         
        }
    }

