using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_SOLUTIONS
{
    public partial class Aptitude_Selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["time"] = 600;
        }
    }
}