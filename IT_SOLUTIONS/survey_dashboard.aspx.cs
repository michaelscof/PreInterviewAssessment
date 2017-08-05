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
    public partial class user_dashboard : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        static int p, f, ed, cu, ca, lo;
        static  int count;
        protected void Page_Load(object sender, EventArgs e)
      {
           check_points(); 
          
      }

        protected void personal_sur_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
            Response.Redirect("eportfolio.aspx");
            else
            Response.Redirect("personal_survey.aspx");
        }
        protected void family_sur_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
                Response.Redirect("eportfolio.aspx");
            else
            Response.Redirect("family.aspx");
        }
   
     
        protected void check_points()
        {
          con = new SqlConnection(cs);
          cmd = new SqlCommand("select_point", con);
          cmd.CommandType = CommandType.StoredProcedure;
          cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
          con.Open();
          dr = cmd.ExecuteReader();
          if (dr.HasRows)
          {
              while (dr.Read())
              {
                  if (dr[1].Equals(20))
                  {
                      personal_sur.Enabled = false;
                      lblpersonal.Text = "100%";
                  }
                  else
                  {
                      personal_sur.Enabled = true;
                  }
                  if (dr[2].Equals(10))
                  {
                      family_sur.Enabled = false;
                      lblfamily.Text = "100%";
                  }
                  else
                  {
                      family_sur.Enabled = true;
                  }
                  if(dr[3].Equals(30))
                  {
                      education_sur.Enabled=false;
                      lbledu.Text = "100%";
                  }
                  else
                  {
                      education_sur.Enabled=true;
                  }
                  if (dr[4].Equals(30))
                  {
                      locality.Enabled = false;
                      lbllocality.Text = "100%";
                  }
                  else                
                  {
                      locality.Enabled = true;
                  }
                  if (dr[5].Equals(10))
                  {
                      lbcar.Enabled = false;
                      Lblcareer.Text = "100%";
                  }
                  else
                  {
                      lbcar.Enabled = true;
                  }
                  if (dr[6].Equals(10))
                  {
                      lbextra.Enabled = false;
                      Lblcur.Text = "100%";
                  }
                  else
                  {
                      lbextra.Enabled = true;
                  }
              }
          }
          con.Close();
          if (personal_sur.Enabled == false && lbextra.Enabled == false && family_sur.Enabled == false && education_sur.Enabled == false && lbcar.Enabled == false && locality.Enabled == false)
          {
              personal_sur.Enabled = true;
              lbextra.Enabled = true;
              family_sur.Enabled = true;
              education_sur.Enabled = true;
              lbcar.Enabled = true;
              locality.Enabled = true;
              Session["Portfolio"] = 1;
          }
        }
        protected void education_sur_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
                Response.Redirect("eportfolio.aspx");
            else
            Response.Redirect("education.aspx");
        }

        protected void lbcareer_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
                Response.Redirect("eportfolio.aspx");
            else          
            Response.Redirect("career.aspx");
        }

        protected void lbextra_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
                Response.Redirect("eportfolio.aspx");
            else
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("update_email", con);
                cmd.CommandType = CommandType.StoredProcedure;
                //u = Session["Userid"].ToString();
                cmd.Parameters.AddWithValue("@Email", Session["Userid"].ToString());
                Response.Redirect("Extra_Curricular.aspx");
            }
        }
        protected void locality_Click(object sender, EventArgs e)
        {
            if ((int)Session["Portfolio"] == 1)
                Response.Redirect("eportfolio.aspx");
            else
                Response.Redirect("locality_survey.aspx");
        }
    }
}