<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="IT_SOLUTIONS.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>IT Solutions-Register</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/itsoln.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form2" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </div>
                <a class="navbar-brand" href="Start_Page.aspx"><i class="glyphicon glyphicon-education"></i>IT Solutions</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="p" href="User_Login.aspx">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="margin-top:5px" align="center">
                   Registration
                </h1>
                 <p style="font-size=40px" align="left" class="page-header lead">Instructions and prerequisites</p>
                 <p><ul><li>All fields are mandatory.</li></ul></p>
            </div>
            <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="Registration.aspx">Registration</a></li>
            <li role="presentation"><a href="User_Login.aspx">Login</a></li>
            </ul>
            <div class="col-lg-6">
            <p class="page-header lead" align="left">Personal Details</p>
            <form class="form-horizontal has-error has-success" role="form">
    <div class="form-group">
      <label class="control-label col-lg-2" for="txtName">Name</label>
      <div class="col-lg-10">
        <asp:Textbox ID="txtName" class="form-control" placeholder="Type your name here" runat="server" aria-describedby="RegularExpressionValidator1"></asp:Textbox>   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                    ErrorMessage="Please enter a value" ControlToValidate="txtName" 
                    Display="Dynamic" style="font-size:11px" Font-Bold="True" class="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Name must be 3-50 characters long" ControlToValidate="txtName" style="font-size:11px"  class="text-danger"></asp:RegularExpressionValidator>
    </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Gender</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="psva">DOB</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="psva" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
            </div>
            <div class="col-lg-6">
                <p class="page-header lead" align="left">
                    College Details            </div>
            
             </div> 
            </div>
    </form>
</body>
</html>
