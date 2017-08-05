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
    public partial class Student_Details : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;
        static string name,email;
        SqlDataReader dr;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ALLUSERSConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                name = Request.QueryString["Name"];
                if (name == null)
                    Response.Redirect("Manage_Users.aspx");
                CallConnection();
                GetData();
            }
        }
        protected void CallConnection()
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Student_Details", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            con.Open();
            dr = cmd.ExecuteReader();
        }
        protected void GetData()
        {
            while (dr.Read())
            {
                txtName.Text = dr["Name"].ToString();
                txtgender.Text = dr["Gender"].ToString();
                txtdob.Text = dr["DOB"].ToString();
                txtemail.Text = dr["Email"].ToString();
                txtPassword.Text = dr["Password"].ToString();
                txtmobile.Text = dr["Mobile_Number"].ToString();
                txtDateRegis.Text = dr["Date_Regis"].ToString();
                txtcollege.Text = dr["College"].ToString();
                txtdegree.Text = dr["Degree"].ToString();
                txtmajor.Text = dr["Major"].ToString();
                txtdiscipline.Text = dr["Discipline"].ToString();
                txtgradyoc.Text = dr["YOC"].ToString();
                txtgradyos.Text = dr["YOS"].ToString();
                txttenyop.Text = dr["YOP_10"].ToString();
                txttenpercent.Text = dr["Percentage_10"].ToString();
                txtinterpercent.Text = dr["Percentage_12"].ToString();
                txtinteryop.Text = dr["YOP_12"].ToString();
                txtpercent.Text = dr["Percentage"].ToString();
                txtinterview.Text = dr["Interview_Location"].ToString();
                txtquestion.Text = dr["Security_Ques"].ToString();
                txtanswer.Text = dr["Security_Ans"].ToString();
                imgStudent.ImageUrl = "~/uploaded pics/" + dr["Profile_Image"].ToString();
            }
            con.Close();
            email = txtemail.Text;
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
        protected void btnViewPerformance_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentPerformance.aspx?email="+email);
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            Server.Transfer("Send_Mail.aspx");
        }
        public string Email
        {
            get
            {
                return txtemail.Text;
            }
        }
    }
}