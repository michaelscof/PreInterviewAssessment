using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_SOLUTIONS
{
    public partial class Start_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["onlineUsers_no"].ToString();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
        public Label sendval
        {
            get
            {
                return Label1;
            }
        }
    }
}