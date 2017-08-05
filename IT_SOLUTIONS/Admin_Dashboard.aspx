<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="IT_SOLUTIONS.Admin_Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard</title>
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
                    </ul>
           </div>
           </nav>
   <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <asp:LinkButton ID="LbtnManageUsers" runat="server" 
                        onclick="LbtnManageUsers_Click"><i class="glyphicon glyphicon-user"></i> Manage All Users</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageTests" runat="server" OnClick="LbtnManageTests_Click"><i class="glyphicon glyphicon-book"></i> Manage Tests</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnOtherActivities" runat="server" 
                        onclick="LbtnOtherActivities_Click"><i class="glyphicon glyphicon-th-large"></i> Other Details</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageChallenges" runat="server" 
                        onclick="LbtnManageChallenges_Click"><i class="glyphicon glyphicon-tasks"></i> Manage Challenges</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnSendMail" runat="server" onclick="LbtnSendMail_Click"><i class="glyphicon glyphicon-send"></i> Send Mail</asp:LinkButton>
                </li>
            </ul>
        </div>
    </div> 
    <div class="container" style="margin-left:230px">
    <div class="row" style="margin-left:50px">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Statistics Overview</small>
                        </h1>
                    </div>
                    </div>
                    <div class="row" style="margin-left:50px" >
                    <div class="col-lg-7">
                        <div class="alert alert-success alert-dismissable">
                         <p style="font-size:large"> <i class="fa fa-user"></i>&nbsp;No of online users: <strong><asp:Label ID="lblOnline"
                            runat="server" Text="Label"></asp:Label></strong> </p>
                        </div>
                
                        <div class="alert alert-warning alert-dismissable">
                         <p style="font-size:large"> <i class="fa fa-users"></i>&nbsp;Total Registered users:<strong> <asp:Label ID="lblTotal"
                            runat="server" Text="Label"></asp:Label></strong> </p>
                        </div>
                    </div>
                    <div class="col-lg-5">
                    <table style="font-family:Arial Black">
                    <tr>
                    <td>
                    <b>Select Chart Type:</b></td>
                    <td>
                        <asp:DropDownList ID="DropDownListSelectChartType" runat="server" 
                            AutoPostBack="true" 
                            onselectedindexchanged="DropDownListSelectChartType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2">
                    <asp:Chart ID="Chart1" runat="server" Height="140px">
                            <Series>
                                <asp:Series Name="Series1" ChartType="Column">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                <AxisX Title=""></AxisX>
                                <AxisY Title=""></AxisY>
                                <Area3DStyle Enable3D="false" />
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </td>
                    </tr>
                    </table>
                    </div>
                </div>
     <div class="row" style="margin:10px 0px 0px 50px">
                    <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-primary" ID="PanelManageUsers" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-user fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      
                                        <div class="h3">Manage All Users</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoManageUsers" 
                                onclick="GotoManageUsers_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-red" ID="PanelManageTests" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-book fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class="h3">Manage Tests</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoManageTests" 
                                onclick="GotoManageTests_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-green" ID="PanelManageSurveys" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-th-large fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      
                                        <div class="h3">Other Details</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoManageSurveys" 
                                onclick="GotoManageSurveys_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    <div class="col-lg-3 col-md-6">
                    </div>
                    </div>
                    <div class="row" style="margin:10px 0px 0px 50px">
                    <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-purple" ID="PanelManageChallenges" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-th-list fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      
                                        <div class="h3">Manage Challenges</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoManageChallenges" 
                                onclick="GotoManageChallenges_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-yellow" ID="PanelSendMail" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-paper-plane fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="h3">Send E-Mail to candidates</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoSendMail" onclick="GotoSendMail_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <asp:Panel cssclass="panel panel-orange" ID="PanelCheckMail" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-envelope fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="h3">Check your own Mail</div>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="GotoCheckMail" 
                                onclick="GotoCheckMail_Click1">
                                <div class="panel-footer">
                                    <span class="pull-left">Redirect to Gmail</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    </div>  
                 <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p align="center" style="font-weight:300;font-size:18px">Copyright &copy; IT Solutions,2016</p>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </footer> 
        </div>
        </div>
    </form>
</body>
</html>