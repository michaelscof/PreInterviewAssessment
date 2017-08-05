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
    public partial class eportfolio : System.Web.UI.Page
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        string u;
        protected void Page_Load(object sender, EventArgs e)
        {
            setdefaultview();
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Personal_Portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr=cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbllandline.Text = (dr[1].ToString());
                    Lblpan.Text = (dr[2].ToString());
                    lblbank.Text = (dr[3].ToString());
                    Lbladhaar.Text = (dr[4].ToString());
                    lbldriving.Text = (dr[5].ToString());
                    lblvoterid.Text = (dr[6].ToString());
                    lblpassport.Text = (dr[7].ToString());
                    lblheight.Text = (dr[8].ToString());
                    lblweight.Text = (dr[9].ToString());
                    lblspectacles.Text = (dr[10].ToString());

                }

            }

            con.Close();
        }

        public void setdefaultview()
        {
            MultiViewfolio.ActiveViewIndex = 0;
        }


        protected void about_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 0;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Personal_Portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    lbllandline.Text=(dr[1].ToString());
                    Lblpan.Text = (dr[2].ToString());
                    lblbank.Text = (dr[3].ToString());
                    Lbladhaar.Text = (dr[4].ToString());
                    lbldriving.Text = (dr[5].ToString());
                    lblvoterid.Text = (dr[6].ToString());
                    lblpassport.Text = (dr[7].ToString());
                    lblheight.Text = (dr[8].ToString());
                    lblweight.Text = (dr[9].ToString());
                    lblspectacles.Text = (dr[10].ToString());
                }

            }

            con.Close();
        }

        protected void locality_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 1;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("locality_portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    prestate.Text=(dr[1].ToString());
                    predistrict.Text = (dr[2].ToString());
                    precity.Text = (dr[3].ToString());
                    prelocality.Text = (dr[4].ToString());
                    prepin.Text = (dr[5].ToString());
                    perstate.Text = (dr[6].ToString());
                    perdistrict.Text = (dr[7].ToString());
                    percity.Text = (dr[8].ToString());
                    perlocality.Text = (dr[9].ToString());
                    perpin.Text = (dr[10].ToString());
                }

            }

            con.Close();
        }

        protected void family_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 2;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("family_portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblfname.Text = (dr[4].ToString());
                    lblfage.Text = (dr[5].ToString());
                    lblfqual.Text = (dr[6].ToString());
                    lblfoccupation.Text = (dr[7].ToString());
                    lblmname.Text = (dr[8].ToString());
                    lblmage.Text = (dr[9].ToString());
                    lblmqual.Text = (dr[10].ToString());
                    lblmoccupation.Text = (dr[11].ToString());
                }

            }

            con.Close();
        }

        protected void career_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 3;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("career_portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblaspect.Text = (dr[1].ToString());
                    lblabroad.Text = (dr[2].ToString());
                    lblsectors.Text = (dr[3].ToString());
                    lblroles.Text = (dr[4].ToString());
                    esalary.Text = (dr[5].ToString());
                    fpreferrence.Text = (dr[6].ToString());
                }

            }

            con.Close();
        }

        protected void academics_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 4;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("education_portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblmedium10.Text = (dr[1].ToString());
                    lblboard10.Text = (dr[2].ToString());
                    lbltype10.Text = (dr[3].ToString());
                    lblengper.Text = (dr[5].ToString());
                    lblmathsper.Text = (dr[7].ToString());
                    lblschoolpin10.Text = (dr[8].ToString());
                    lblmedium12.Text = (dr[9].ToString());
                    lblboard12.Text = (dr[10].ToString());
                    lbltype12.Text = (dr[11].ToString());
                    lblengper12.Text = (dr[13].ToString());
                    lblmathsper12.Text = (dr[15].ToString());
                    lblschoolpin12.Text = (dr[16].ToString());
                    lblpergrad.Text = (dr[17].ToString());
                    lblmediumgrad.Text = (dr[18].ToString());
                    lblfeesgrad.Text = (dr[19].ToString());
                    lblloan.Text = (dr[20].ToString());
                    lblparttime.Text = (dr[21].ToString());
                    lblprogramminglang.Text = (dr[22].ToString());
                    lblmost.Text = (dr[23].ToString());
                    lblleast.Text = (dr[24].ToString());
                    lbltop3.Text = (dr[25].ToString());
                    lblteachingexp.Text = (dr[27].ToString());

                }

            }

            con.Close();

        }

        protected void extra_Click(object sender, EventArgs e)
        {
            MultiViewfolio.ActiveViewIndex = 5;
            con = new SqlConnection(cs);
            cmd = new SqlCommand("curricular_portfolio", con);
            cmd.CommandType = CommandType.StoredProcedure;
            u = Session["Userid"].ToString();
            cmd.Parameters.AddWithValue("@Email", u);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblhobbies.Text = (dr[1].ToString());
                    lblsports.Text = (dr[2].ToString());
                    lblexercise.Text = (dr[3].ToString());
                    lblhealth.Text = (dr[4].ToString());
                    lblhours.Text = (dr[5].ToString());
                    lblsocial.Text = (dr[6].ToString());
                    lbllinkedin.Text = (dr[7].ToString());
                    lblmovies.Text = (dr[8].ToString());
                    lblbooks.Text = (dr[9].ToString());
                    lblworship.Text = (dr[10].ToString());
                    lblsocialservice.Text = (dr[11].ToString());
                    lblcocurricular.Text = (dr[12].ToString());
                    lblstates.Text = (dr[13].ToString());
                }

            }

            con.Close();
        }



       
    }
}