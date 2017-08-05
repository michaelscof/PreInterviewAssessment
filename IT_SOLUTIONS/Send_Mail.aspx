<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Send_Mail.aspx.cs" Inherits="IT_SOLUTIONS.Send_Mail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Send Mail</title>
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
    <br />
    <div class="col-lg-12" style="margin-left:270px">
    <div class="col-lg-9">
    <p align="left">
    <h2 class="page-header"><center><i class="glyphicon glyphicon-send"></i>&nbsp;&nbsp;Send Mail</center></h2></p>
    <div class="form-group" >
      <label class="control-label col-lg-2" for="txtReceiver">To:</label>
      <div class="col-lg-10">
            <asp:TextBox ID="txtReceiver" class="form-control"  style="float:left;" runat="server" ReadOnly="true"></asp:TextBox> 
        </div></div>
        <br />
        <br />
        <br />
         <div class="form-group" >
      <label class="control-label col-lg-2" for="txtSubject">Subject:</label>
      <div class="col-lg-10">
            <asp:TextBox ID="txtSubject" class="form-control"  style="float:left;" runat="server"></asp:TextBox> 
        </div></div>
        <br />
        <br />
         <div class="form-group" >
      <label class="control-label col-lg-2" for="txtBody">Body:</label>
      <div class="col-lg-10">
            <TextArea rows="8" name="Text" ID="txtBody" class="form-control"  style="float:left;" runat="server"></TextArea> 
        </div></div>
        <br />
        <br />
        <br />
        <br />
         <div class="form-group" style="padding-top:20px;margin-top:20px" >
      <label class="control-label col-lg-2" for="txtBody">Attachments:</label>
      <div class="col-lg-8">
        <asp:FileUpload ID="FileUploadAttachment" Width="284px" style="float:left;" runat="server" />
            </div></div>
            <br />
            <br />
            <br />
            <div class="form-group">
            <div class="btn-group">
             <asp:Button id="btnBody" runat="server" CssClass="btn btn-primary" 
                    Text="Body for Selection" style="margin-left:40px" onclick="btnBody_Click" />
                <asp:Button id="btnBodyText" runat="server" CssClass="btn btn-danger" 
                    Text="Body for Interview Call" style="margin-left:40px" 
                    onclick="btnBodyText_Click" /></div>
            <asp:Button ID="btnSend" runat="server" CssClass="btn btn-success col-lg-2" 
                    Text="Send Mail" style="float:left;margin-left:40px" onclick="btnSend_Click" />
            <asp:Button ID="btnGetMany" runat="server" CssClass="btn btn-info col-lg-3" 
                    Text="Get All Selected Candidates" style="float:left;margin-left:40px" enabled="false" />
        </div>
        <br />
        <br />
        <div class="form-group">
        <asp:label runat="server" ID="lblMessage" Visible="false" style="margin-left:240px" cssclass="lead"></asp:label>
        </div>
            </div>
            </div>
            <div class="col-lg-9" style="margin-left:270px">
            <br />
            <br />
            <br />
            <center><h2 class="page-header">Selected Candidates</h2></center>
            </p>

            <p class="lead" style="margin-left:350px">Select College:
            <asp:DropDownList placeholder="Select a College" ID="DropDownListSelect" runat="server" AutoPostBack="True" 
                    CssClass="lead" 
                    onselectedindexchanged="DropDownListSelect_SelectedIndexChanged">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    </asp:DropDownList></p>
                <asp:GridView ID="GridViewSelected" runat="server" AutoGenerateColumns="False" 
            CssClass="table table-bordered table-hover table-responsive table-striped" 
            Visible="False" AllowPaging="True" PageSize="6" runat="server" 
                    DataKeyNames="Email" DataSourceID="SqlDataSourceSelected">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                            SortExpression="Email" />
                        <asp:BoundField DataField="College" HeaderText="College" 
                            SortExpression="College" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" 
                            SortExpression="Degree" />
                        <asp:BoundField DataField="Tests_given" HeaderText="Tests given" 
                            SortExpression="Tests_given" />
                        <asp:BoundField DataField="Surveys_answered" HeaderText="Surveys answered" 
                            SortExpression="Surveys_answered" />
                        <asp:BoundField DataField="Challenges_completed" 
                            HeaderText="Challenges completed" SortExpression="Challenges_completed" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceSelected" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
                    SelectCommand="GetSelectedCandidates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceCollege" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
                    SelectCommand="GetSelectedCollegeStudents" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListSelect" Name="College" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>        
    </form>
</body>
</html>
