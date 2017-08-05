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
    public partial class education : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        int edu_points, f, p1, ed, lo, cu, ca;
        string l,m,le,li1,li2,li3,u;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDefaultView();
            }
            con = new SqlConnection(cs);
            cmd = new SqlCommand("selection_edu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@College", ddlist1.Text.ToString());
            con.Open();
            dr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddlist1.Items.Add(dr[0].ToString());
                    }
                }
                con.Close();
                cmd.Dispose();
                con = new SqlConnection(cs);
                cmd = new SqlCommand("selection_edu", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@College", ddlist2.Text.ToString());
                con.Open();
                dr = cmd.ExecuteReader();
                if (!IsPostBack)
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ddlist2.Items.Add(dr[0].ToString());
                        }
                    }
                    con.Close();
                    cmd.Dispose();
                }
            }
            con = new SqlConnection(cs);
            cmd = new SqlCommand("selection_edu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@College", ddlist3.Text.ToString());
            con.Open();
            dr = cmd.ExecuteReader();
            if (!IsPostBack)
            {
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddlist3.Items.Add(dr[0].ToString());
                    }
                }
                con.Close();
            }
        }
            


           private void SetDefaultView()
           {
               MultiViewedu.ActiveViewIndex = 0;
           }
        

        protected void lbttenth_Click(object sender, EventArgs e)
        {
            MultiViewedu.ActiveViewIndex=0;
        }

        protected void lbttwelve_Click(object sender, EventArgs e)
        {
            MultiViewedu.ActiveViewIndex=1;
        }

        protected void lblgrad_Click(object sender, EventArgs e)
        {
            MultiViewedu.ActiveViewIndex=2;
        }

        protected void lblothers_Click(object sender, EventArgs e)
        {
            MultiViewedu.ActiveViewIndex=3;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(cs);
            cmd = new SqlCommand("update_surveys", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("insert_edu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            cmd.Parameters.AddWithValue("@medium10", RadioButtonListmedium.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@board10", ddboard.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@type10", RadioButtontype.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@eng10", RadioButtonListeng.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@engper10", txtepercent.Text.ToString());
            cmd.Parameters.AddWithValue("@maths10", RadioButtonListmath.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@mathsper10", Txtmpercent.Text.ToString());
            cmd.Parameters.AddWithValue("@school_pin10", Txtpin.Text.ToString());
            cmd.Parameters.AddWithValue("@medium12", RadioButtonListmedium12.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@board12", ddboard12.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@type12", RadioButtonListtype12.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@eng12", RadioButtonListeng12.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@engper12", txtpereng.Text.ToString());
            cmd.Parameters.AddWithValue("@maths12", RadioButtonListmath12.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@mathsper12", txtpermath.Text.ToString());
            cmd.Parameters.AddWithValue("@school_pin12", schoolpin12.Text.ToString());
            cmd.Parameters.AddWithValue("@percent_grad", aggregate.Text.ToString());
            cmd.Parameters.AddWithValue("@medium_grad", RadioButtonListmediumgrad.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@fees", Txtannual.Text.ToString());
            cmd.Parameters.AddWithValue("@loan", RadioButtonListloan.Text.ToString());
            cmd.Parameters.AddWithValue("@partime", RadioButtonListpart.SelectedValue.ToString());

            foreach (ListItem i in languages.Items)
            {
                l = l + i.Text + ",";
            }
            cmd.Parameters.AddWithValue("@program_lang", l);
            foreach (ListItem i in Msubjects.Items)
            {
                m = m + i.Text + ",";
            }
            cmd.Parameters.AddWithValue("@most", m);
            foreach (ListItem i in lsubjects.Items)
            {
                le = le + i.Text + ",";
            }
            cmd.Parameters.AddWithValue("@least", le);
            cmd.Parameters.AddWithValue("@top3_college", ddlist1.SelectedValue + "," + ddlist2.SelectedValue + ","  + ddlist3.SelectedValue);
            cmd.Parameters.AddWithValue("@currently", current.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@teaching_exp", teaching.SelectedValue.ToString());
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
        protected void btnremovel_Click(object sender, EventArgs e)
        {
            lsubjects.Items.Remove(lsubjects.SelectedValue.ToString());
        }

        protected void btnaddl_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in lsubjects.Items)
            {
                if (i.Text == ddlsubjects.SelectedItem.Text)
                {
                    return;
                }
            }
            lsubjects.Items.Add(ddlsubjects.SelectedValue.ToString());
        }

        protected void Btnremovem_Click(object sender, EventArgs e)
        {
            Msubjects.Items.Remove(Msubjects.SelectedValue.ToString());
        }

        protected void Btnaddm_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in Msubjects.Items)
            {
             if (i.Text == ddmsubjects.SelectedItem.Text)
                {
                    return;
                }
            }
            Msubjects.Items.Add(ddmsubjects.SelectedValue.ToString());
        
        }

        protected void Btnremove_Click(object sender, EventArgs e)
        {
            languages.Items.Remove(languages.SelectedValue.ToString());
        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in languages.Items)
            {
                if (i.Text == ddlanguages.SelectedItem.Text)
                {
                    return;
                }
            }
            languages.Items.Add(ddlanguages.SelectedValue.ToString());
        }
    }
}
       
    
