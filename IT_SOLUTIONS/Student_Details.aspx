<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Details.aspx.cs" Inherits="IT_SOLUTIONS.Student_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student Details</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/itsoln.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"  style="background-color:#000">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Admin_Dashboard.aspx"><i class="glyphicon glyphicon-home"></i> Admin-Home</a>
            </div>
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <asp:LinkButton ID="LbtnSignOut" runat="server" onclick="LbtnSignOut_Click"><i class="glyphicon glyphicon-off"></i>Sign Out</asp:LinkButton>
                    </li>
           </div>
           </nav>
            <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <asp:LinkButton ID="LbtnManageUsers" runat="server" causesvalidation="false" 
                        onclick="LbtnManageUsers_Click"><i class="glyphicon glyphicon-user"></i> Manage All Users</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageTests" runat="server" OnClick="LbtnManageTests_Click" causesvalidation="false"><i class="glyphicon glyphicon-book"></i> Manage Tests</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnOtherActivities" runat="server" 
                        onclick="LbtnOtherActivities_Click"  causesvalidation="false"><i class="glyphicon glyphicon-th-large"></i> Other Details</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageChallenges" runat="server" 
                        causesvalidation="false" onclick="LbtnManageChallenges_Click"><i class="glyphicon glyphicon-tasks"></i> Manage Challenges</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnSendMail" runat="server" causesvalidation="false" 
                        onclick="LbtnSendMail_Click"><i class="glyphicon glyphicon-send"></i> Send Mail</asp:LinkButton>
                </li>
            </ul>
        </div>
    </div> 
    <div class="row" style="margin-left:260px">
            <div class="col-lg-12">
                <h1 class="page-header" style="margin-top:30px" align="center">
                   Student Details
                </h1>
                <div class="col-lg-4">
                <br />
                <br />
                <br />
                <asp:Button runat="server" ID="btnViewPerformance" cssclass="btn btn-lg btn-danger" 
                        Text="View Student Performance" style="margin-left:120px" 
                        onclick="btnViewPerformance_Click"/>
                </div>
                <div class="col-lg-4">
                <asp:Image ID="imgStudent" runat="server" Height="200px" Width="200px" style="margin-left:95px" /></div>
                <div class="col-lg-4">
                <br />
                <br />
                <br />
                <asp:Button runat="server" ID="btnSendMail" cssclass="btn btn-lg btn-warning" 
                        Text="Send Mail" style="margin-left:120px" onclick="btnSendMail_Click"/>
                </div></div>
                <div class="col-lg-12">
            <div class="col-lg-6">
            <p class="page-header lead" align="left">Personal Details</p>
            <form class="form-horizontal has-error has-success" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtName">Name</label>
      <div class="col-sm-10">
        <asp:Textbox ID="txtName" class="form-control" runat="server" ReadOnly="true" ></asp:Textbox>  
        <br /> 
    </div>
    </div>
     
    <div class="form-group">
      <label class="control-label col-sm-2" for="gender">Gender</label>
      <div class="col-sm-10">          
          
        <asp:Textbox class="form-control" id="txtgender" ReadOnly="true" runat="server"></asp:Textbox>
      </div>
    </div> 
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="txtdob">DOB</label>
      <div class="col-sm-10">          
     <asp:Textbox class="form-control" id="txtdob" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>
    
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Password1">Email</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtemail" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>
    
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Phone1">Mobile</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtmobile" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>

    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Pass1">Password</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtPassword" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>

     <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Pass2">Date Registered</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtDateRegis" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>


    
    
  </form>
            </div>
            <div class="col-lg-6">
                <p class="page-header lead" align="left">
                    College Details      
                  <div class="col-lg-12" >
    <div class="form-group" >
      <label class="control-label col-sm-2" for="txtcollege">College</label>
      <div class="col-sm-10">          
        <div ><asp:TextBox ID="txtcollege" class="form-control"  style="float:left;" runat="server" ReadOnly="true">
           
            </asp:TextBox></div></div></div>

        <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="txtdiscipline">Discipline</label>
      <div class="col-sm-10">          
        <div ><asp:TextBox ID="txtdiscipline" class="form-control"  style="float:left;" runat="server" ReadOnly="true" >
           
            </asp:TextBox></div></div></div>

        
        <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="txtmajor">Major</label>
      <div class="col-sm-10">          
        <div ><asp:TextBox ID="txtmajor" class="form-control"  style="float:left;" runat="server" ReadOnly="true" >
            
            </asp:TextBox></div></div></div>

        
        <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Degree">Degree</label>
      <div class="col-sm-10">          
        <div ></div><asp:TextBox ID="txtdegree" class="form-control"  style="float:left;" runat="server" ReadOnly="true" >
          
          </asp:TextBox></div></div></div>

         <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="yos">Year of Starting</label>
      <div class="col-sm-10">          
        <div ></div><asp:TextBox ID="txtgradyos" class="form-control"  style="float:left;" runat="server" ReadOnly="true" ></asp:TextBox></div></div></div>

 <div class="col-lg-12" style="padding:10px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="yoc">Year of Passing</label>
      <div class="col-sm-10">          
        <div ></div><asp:TextBox ID="txtgradyoc" class="form-control"  style="float:left;" runat="server" ReadOnly="true" ></asp:TextBox></div></div></div>

        <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="percent">Percentage</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtpercent" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>



      </div>
           
    </div></div>   
    
                          
                    </div>   
                     
             </div> 
              <div class="col-lg-6">
            <p class="page-header lead" align="left">10th Details</p> 
              <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="yopten">Year of passing</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txttenyop"  runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>

      <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="percentten">Percentage</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txttenpercent" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>

            </div>
             <div class="col-lg-6">
                <p class="page-header lead" align="left">
                    12th Details</p>
                    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="yoptwelve">Year of passing</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" ReadOnly="true" id="txtinteryop"  runat="server"></asp:Textbox>
      </div>
    </div></div>

      <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="percenttwelve">Percentage</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtinterpercent" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>

            </div>
<div class="col-lg-12">
                <p class="page-header lead" align="left">
                    Security
                    </div>
<div class="col-lg-12">
    <div class="col-lg-6">             
    <div class="form-group">
      <label class="control-label col-sm-2" for="yoc">Security question</label>
      <div class="col-sm-10">          
        <div ></div><asp:TextBox ID="txtquestion" class="form-control"  style="float:left;" runat="server" ReadOnly="true" >
          
          </asp:TextBox></div></div>
           <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="percenttwelve">Answer</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtanswer" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
    </div></div>
        </div>

         <div class="col-lg-6">             
           <div class="col-lg-12" style="padding:0px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="interview">Interview Location</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtinterview" runat="server" ReadOnly="true"></asp:Textbox>
      </div>
      </div>
    </div></div>
        </div>
        </div>
    </form>
</body>
</html>
