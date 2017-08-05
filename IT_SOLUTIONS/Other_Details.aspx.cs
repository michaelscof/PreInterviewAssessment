using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace IT_SOLUTIONS
{
    public partial class Other_Activities1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        SqlDataReader dr;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewShow.DataSourceID = "SqlDataSourceShow";
            }
            getCollegesLocation();
        }
        protected void getCollegesLocation()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("SelectionDistinct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddCollege.Items.Add(dr["College"].ToString());
                        ddLocation.Items.Add(dr["Location"].ToString());
                    }
                }
                con.Close();
        }
        protected void LbtnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }
        protected void LbtnSendMail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Send_Mail.aspx");
        }
        protected void LbtnManageChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Challenges.aspx");
        }
        protected void LbtnOtherActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("Other_Details.aspx");
        }
        protected void LbtnManageTests_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Tests.aspx");
        }
        protected void LbtnManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Users.aspx");
        }
        protected void DropDownListSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListSelect.SelectedIndex.Equals(20))
            {
                GridViewShow.DataSourceID = "SqlDataSourceShow20";
            }
            if (DropDownListSelect.SelectedIndex.Equals(50))
            {
                GridViewShow.DataSourceID = "SqlDataSourceShow50";
            }
            if (DropDownListSelect.SelectedIndex.Equals(10))
            {
                GridViewShow.DataSourceID = "SqlDataSourceShow10";
            }
        }

        protected void btnAddCollege_Click(object sender, EventArgs e)
        {
            AddCollege();
        }
        protected void AddCollege()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("AddCollege", con);
            cmd.Parameters.AddWithValue("@College", txtCollege.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('College Added Successfully')</script>");
            ddCollege.Items.Clear();
            ddLocation.Items.Clear();
            getCollegesLocation();
        }

        protected void btnRemoveCollege_Click(object sender, EventArgs e)
        {
            RemoveCollege();
        }
        protected void RemoveCollege()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("DelCollege", con);
            cmd.Parameters.AddWithValue("@College", ddCollege.SelectedValue.ToString());
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('College Removed from List')</script>");
            ddCollege.Items.Clear();
            ddLocation.Items.Clear();
            getCollegesLocation();
        }

        protected void btnAddLocation_Click(object sender, EventArgs e)
        {
            AddLocation();
        }

        protected void btnRemoveLocation_Click(object sender, EventArgs e)
        {
            RemoveLocation();
        }
        protected void AddLocation()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("AddLocation", con);
            cmd.Parameters.AddWithValue("@Location", txtLocation.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Location Added Successfully')</script>");
            ddLocation.Items.Clear();
            ddCollege.Items.Clear();
            getCollegesLocation();
        }
        protected void RemoveLocation()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("DelLocation", con);
            cmd.Parameters.AddWithValue("@Location", ddLocation.SelectedValue.ToString());
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Location Removed from List')</script>");
            ddLocation.Items.Clear();
            ddCollege.Items.Clear();
            getCollegesLocation();
        }
        protected void lbtnName_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Details.aspx?Name=" + ((LinkButton)sender).Text);
        }
    }
}