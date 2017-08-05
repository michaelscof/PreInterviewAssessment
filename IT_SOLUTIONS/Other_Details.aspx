<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Other_Details.aspx.cs" Inherits="IT_SOLUTIONS.Other_Activities1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Other Details</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/itsoln.css" rel="stylesheet">
     <link href="css/morris.css" rel="stylesheet">
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
    <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Recently Registered Users
                </h1>
                </div>
                <div class="col-lg-12" style="margin-left:250px">
                <p class="page-header lead" align="left" style="padding-left:auto">&nbsp;&nbsp;&nbsp;&nbsp;Show Recent Top:<asp:DropDownList 
                        ID="DropDownListSelect" runat="server" AutoPostBack="True" Width="100px" 
                        onselectedindexchanged="DropDownListSelect_SelectedIndexChanged">
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    <asp:ListItem Text="20" Value="20"></asp:ListItem>
                    <asp:ListItem Text="50" Value="50"></asp:ListItem>
                    </asp:DropDownList></p>
                    </div>
                </div>
                <div class="row col-lg-11" style="margin-left:280px">
                    <asp:GridView ID="GridViewShow" runat="server" AutoGenerateColumns="False" 
                        AllowPaging="True" DataKeyNames="Email" 
                        CssClass="table table-bordered table-hover table-responsive table-striped" Width="1050px" PageSize="5" AllowSorting="true">
                        <Columns>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton CssClass="badge bg-danger" ID="lbtnName" runat="server" Text='<%# Bind("Name") %>' OnClick="lbtnName_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Registration Date and Time" 
                                SortExpression="Date_Regis">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Date_Regis") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Date_Regis") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="College" SortExpression="College">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("College") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("College") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Degree" SortExpression="Degree">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Degree") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Degree") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </div>
                    <div class="col-lg-12" style="margin-left:180px">
                <br />
                <div class="col-lg-4">
                <h3 class="page-header lead" style="margin-left:80px">Add College</h3>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCollege" Width="260px" style="margin-left:80px;float:left"></asp:TextBox>
                <asp:Button runat="server" CssClass="btn btn-md btn-success" ID="btnAddCollege" 
                            Text="Add" onclick="btnAddCollege_Click" />
                            </div>
                <div class="col-lg-3">
                <h3 class="page-header lead">Remove College</h3>
                <asp:DropDownList runat="server" CssClass="form-control" ID="ddCollege" Width="210px" style="float:left"></asp:DropDownList>
                <asp:Button runat="server" CssClass="btn btn-md btn-danger" ID="btnRemoveCollege" 
                            Text="Remove" onclick="btnRemoveCollege_Click" />
                             </div>
                 <div class="col-lg-4">
                <h3 class="page-header lead">Add/Remove Location</h3>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtLocation" Width="260px" style="float:left"></asp:TextBox>
                <asp:Button runat="server" CssClass="btn btn-md btn-success" ID="btnAddLocation" 
                            Text="Add" onclick="btnAddLocation_Click" />
                            <br />
                            <br />
                <asp:DropDownList runat="server" CssClass="form-control" ID="ddLocation" Width="260px" style="float:left"></asp:DropDownList>
                <asp:Button runat="server" CssClass="btn btn-md btn-danger" ID="btnRemoveLocation" 
                            Text="Remove" onclick="btnRemoveLocation_Click" />
                             </div>
                    <asp:SqlDataSource ID="SqlDataSourceShow" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
                        SelectCommand="View_Recently_registered10" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceShow20" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="View_Recently_registered20" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceShow50" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="View_Recently_registered50" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
            <br />
              <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p align="center" style="font-weight:300;font-size:18px">Copyright &copy; IT Solutions,2016</p>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </footer> 
        </div>  
    </form>
</body>
</html>
