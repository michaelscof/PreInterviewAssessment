<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Users.aspx.cs" Inherits="IT_SOLUTIONS.Manage_Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Manage Users</title>
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
    <div class="container" style="margin-left:230px">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header panel-red" align="center" style="margin-left:40px"><i class="glyphicon glyphicon-user"></i>Manage All Users</h1>
                </div>
                </div>
                <div class="row">
                <div class="col-lg-12">
                <p class="page-header lead" style="margin-left:40px" align="center">Select College:<asp:DropDownList 
                        ID="DropDownListSelect" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownListSelect_SelectedIndexChanged"></asp:DropDownList>
                 <asp:TextBox ID="txtSearch" runat="server" style="margin-left:40px" placeholder="Type to search for a student" CssClass="form-control col-lg-10" Width="270px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                      ID="btnSearch" runat="server" Text="Search" 
                      CssClass="btn btn-primary control-label col-lg-2"
                      CausesValidation="false" onclick="btnSearch_Click" /></p>
                    <asp:SqlDataSource ID="SqlDataSourceSearch" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
                        SelectCommand="Search_User" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                </div>
                <div class="row">
                <div class="col-lg-12">
                    <asp:GridView ID="GridView1" style="margin-left:40px" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Email" DataSourceID="SqlDataSourceList"  
                        CssClass="table table-bordered table-hover table-responsive table-striped" 
                        AllowPaging="True" PageSize="5" AllowSorting="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton CssClass="badge bg-success" ID="lbtnName" runat="server" Text='<%# Bind("Name") %>' OnClick="lbtnName_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date Registered">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Date_Regis") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Date_Regis") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Profile Image">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Profile_Image") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/uploaded pics/")+Eval("Profile_Image") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="College">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("College") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("College") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Degree">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Degree") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Degree") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceList" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
                        SelectCommand="List_Students" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListSelect" Name="College" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
                    </div>
                </div>
    </form>
</body>
</html>
