<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Login.aspx.cs" Inherits="IT_SOLUTIONS.User_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>IT Solutions-Login</title>
    <script type = "text/javascript" >
        function preventBack() {
            window.history.forward(); 
        }
        setTimeout("preventBack()", -1);
        window.onunload = function () { null };
     </script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/itsoln.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body background="project pics/bannernew.png">
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
               
                <a class="navbar-brand" href="Start_Page.aspx"><i class="glyphicon glyphicon-education"></i>IT Solutions</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="p" href="register.aspx">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" align="center">
                   Login
                </h1>
            </div>
            </div>
            </div>
      <div class="container"> 
            
<div class="col-md-5" style="border:0px solid grey;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:320px;box-shadow:0px 5px 5px rgb(200,200,200);">
 <asp:Panel runat="server" ID="panUser" CssClass="panel panel-default">
 <div class="panel-heading">
<h1 style="padding:20px; margin-left:120px;">User Login</h1>
</div>
<div class="panel-body">
 <div class="col-lg-7" style="padding:40px 0px opx 0px;"<asp:Textbox class="form-control" id="txtname" placeholder="Username"  runat="server"></asp:Textbox></div>
  <div class="col-lg-7" style="padding:45px 0px opx 0px; margin-left:100px;"><asp:Textbox class="form-control" id="txtuname" placeholder="Email ID"  runat="server"></asp:Textbox></div>
   <div class="col-lg-7" style="padding:45px 0px opx 0px; margin-left:100px; margin-top:20px;"><asp:Textbox type="password" class="form-control" id="txtpassword" placeholder="Password"  runat="server"></asp:Textbox></div>
   <div class="col-md-12"> <center><asp:Button class="btn btn-lg btn-success" Text="Login" 
           ID="btnlogin" style="margin-top:30px" 
           runat="server" CausesValidation="false" onclick="btnlogin_Click1"></asp:Button></center></div>
  <div class="col-lg-6"style="margin-top:40px; margin-left:120px;">
      <asp:LinkButton runat="server" ID="lbtnForgotPassword" 
          Text="Forgot your password?Click here" CssClass="btn btn-link" 
          onclick="lbtnForgotPassword_Click"></asp:LinkButton></div>
          </div>
          </asp:Panel>
</div>
</div>
</form>
</body>
</html>
