using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace IT_SOLUTIONS
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["siteVisited_no"] = 0;
            Application["onlineUsers_no"] = 0;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Userid"] = 0;
            Application.Lock();
            Application["siteVisited_no"] = Convert.ToInt32(Application["siteVisited_no"]) + 1;
            Application["onlineUsers_no"] = Convert.ToInt32(Application["onlineUsers_no"]) + 1;
            Application.UnLock();
            Session["time"] = 600;
            Session["Name"] = 0;
            Session["Password"] = 0;
            Session["Message"] = 0;
            Session["Portfolio"] = 0;
            Session["personal_points"] = 0;
            Session["family_points"] = 0;
            Session["edu_points"] = 0;
            Session["locality_points"] = 0;
            Session["curricuar_points"] = 0;
            Session["career_points"] = 0;
            Session["counter"] = 0;
            Session["TestCategory"] = 0;
            Session["Skipped"] = 0;
            Session["RightTest"] = 1;
            Session["WrongTest"] = 1;
            Session["RightQues"] = 0;
            Session["TestNo"] = 0;
            Session["WrongQues"] = 0;
            Session["RightAns"] = 0;
            Session["WrongAns"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["onlineUsers_no"] = Convert.ToInt32(Application["onlineUsers_no"]) - 1;
            Application.UnLock();
            Session["Userid"] = 0;
            Session["counter"] = 0;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}