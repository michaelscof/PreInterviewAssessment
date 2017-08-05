<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Challenges.aspx.cs" Inherits="IT_SOLUTIONS.Manage_Challenges" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Manage Challenges</title>
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
                        <asp:LinkButton ID="LbtnSignOut" runat="server" OnClick="LbtnSignOut_Click" CausesValidation="false"><i class="glyphicon glyphicon-off"></i>Sign Out</asp:LinkButton>
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
    <div class="container" style="margin-left:230px">
    <div class="row" style="margin-left:50px">
    <div class="page-header lead col-lg-12">
    <h1 align="center"><i class="glyphicon glyphicon-tasks"></i>Manage Challenges</h1>
    </div> 
    </div>
    <asp:Button ID="btnShowUpload" runat="server" CssClass="btn btn-lg btn-warning col-lg-5" Text="Upload New Challenge" 
            onclick="btnShowUpload_Click" CausesValidation="false" style="margin-left:50px" />
    <asp:Button ID="btnViewChallenges" runat="server" 
            CssClass="btn btn-lg btn-danger col-lg-5" Text="View Uploaded Challenges" 
            style="margin-left:50px" onclick="btnViewChallenges_Click" CausesValidation="false"/>
            <br />
    <br />
    <br />
    <br />
    <div class="huge" style="margin-left:50px">
    <i class="fa fa-upload"></i>
    <small><asp:Label runat="server" ID="lblDocument" Text="Select Document for Uploading" Visible="false"></asp:Label></small></div>
        <div class="col-lg-6">
        <asp:FileUpload ID="FileUploadChallenge" runat="server" CssClass="bg-success" 
                Width="284px" Visible="false" style="margin-left:50px"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUpload" runat="server" ErrorMessage="Please Select a File for Uploading" ControlToValidate="FileUploadChallenge" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <div class="col-lg-8" style="margin-left:36px">
            <asp:TextBox ID="txtChallengeName" runat="server" CssClass="form-control" placeholder="Enter the Challenge Title" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Please Enter the Challenge title" ControlToValidate="txtChallengeName" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtChallengeDescription" runat="server" CssClass="form-control" placeholder="Enter the Challenge Description" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDesc" runat="server" ErrorMessage="Please Enter the Challenge Description" ControlToValidate="txtChallengeDescription" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" Text="<b>Select Challenge Image</b>" Visible="false" ID="lblimg"></asp:Label>
            <asp:FileUpload ID="FileImage" runat="server" CssClass="bg-success" Width="284px" Visible="false" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorImage" runat="server" ErrorMessage="Please Select an image" ControlToValidate="FileImage" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            </div>
            <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                CssClass="btn btn-success col-lg-4" Visible="false" onclick="btnUpload_Click" style="margin-left:50px" />
            <br />
            <asp:Label ID="lblDisplayStatus" Text="The Challenge File was uploaded successfully" Visible="False" runat="server" 
                        Font-Bold="True" Font-Names="Calibri" ForeColor="#000"></asp:Label>
        </div>
    <div class="col-lg-6">
        <asp:GridView ID="GridViewChallenge" runat="server" AutoGenerateColumns="False" 
            CssClass="table table-bordered table-hover table-responsive table-striped" 
            Visible="False" AllowPaging="True" PageSize="6" 
            DataKeyNames="FileID">
            <Columns>
            <asp:TemplateField HeaderText="Challenge Name">
            <ItemTemplate>
            <asp:Label ID="lblShowChallenge" runat="server" Text='<%# Bind("Challenge_Name") %>'>
            </asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Upload Date Time">
            <ItemTemplate>
            <asp:Label runat="server" ID="lblUploadDate" Text='<%# Bind("Upload_DateTime") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="fa fa-x fa-download" OnClick="OpenDocument" CausesValidation="false"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
