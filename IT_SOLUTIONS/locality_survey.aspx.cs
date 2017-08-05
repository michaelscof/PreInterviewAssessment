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
    public partial class locality_survey : System.Web.UI.Page
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        static SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        string u;
        int f1, p2, ed, locality_points,p1,f,lo,cu,ca;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            }
        
        protected void btnsubmit_Click(object sender, EventArgs e)
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
                cmd = new SqlCommand("selection_locaity", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", u);
                cmd.Parameters.AddWithValue("@present_state", ddstate.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@present_district", district.Text.ToString());
                cmd.Parameters.AddWithValue("@present_city", City.Text.ToString());
                cmd.Parameters.AddWithValue("@present_locality", locality.Text.ToString());
                cmd.Parameters.AddWithValue("@present_pin", pin.Text.ToString());
                cmd.Parameters.AddWithValue("@per_state", ddstate2.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@per_district", district1.Text.ToString());
                cmd.Parameters.AddWithValue("@per_city", city2.Text.ToString());
                cmd.Parameters.AddWithValue("@per_locality", locality1.Text.ToString());
                cmd.Parameters.AddWithValue("@per_pin", pin1.Text.ToString());
                con.Open();
                int row=cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    Response.Redirect("survey_dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Data not saved')</script>");
                }
            
        /*    else
            {
                Response.Write("<script>alert('Data not saved')</script>");
            }*/

        }




        protected void btnreset_Click(object sender, EventArgs e)
        {
            ddstate.Text = " ";
            district.Text = " ";
            City.Text = " ";
            locality.Text = " ";
            pin.Text = " ";
            ddstate2.Text = " ";
            district1.Text = " ";
            city2.Text = " ";
            locality1.Text = " ";
            pin1.Text = " ";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList1.SelectedValue.Equals("1"))
            {
                string one = ddstate.Text;
                ddstate2.Text = one;
                string two = district.Text;
                district1.Text = two;
                string three = City.Text;
                city2.Text = three;
                string four = locality.Text;
                locality1.Text = four;
                string five = pin.Text;
                pin1.Text = five;
                ddstate2.Enabled = false;
                district1.Enabled = false;
                city2.Enabled = false;
                locality1.Enabled = false;
                pin1.Enabled = false;
            }
        }
    }
}