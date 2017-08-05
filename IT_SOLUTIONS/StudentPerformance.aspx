<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPerformance.aspx.cs" Inherits="IT_SOLUTIONS.StudentPerformance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student Performance</title>
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
    <div class="row" style="margin-left:260px">
    <div class="page-header lead">
    <h1><center>User Activity and Performance</center></h1>
    </div>
    <div class="col-lg-12" style="margin-left:40px">
    <div class="col-lg-6">
    <table style="font-family:Arial Black">
    <tr>
    <td>
    <asp:Chart ID="ChartActivity" runat="server" Height="350px" Width="550px" CssClass="morris-hover" LabelAutoFitMaxFontSize="20">
            <Series>
                <asp:Series Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                <AxisX Title="Days Of Month" TitleFont="Arial Black">
                <LabelStyle Font="Arial Black,40pt" /></AxisX>
                <AxisY Title="No of Times Logged in" TitleFont="Arial Black">
                <LabelStyle Font="Arial Black,40pt" /></AxisY>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </td>
    </tr>
    </table>
    </div>
    <div class="col-lg-5" style="margin-left:560px">
    <br />
    <asp:LinkButton runat="server" ID="lbtnTests" Text="Online Tests:" 
            onclick="lbtnTests_Click"></asp:LinkButton>
    <div class="progress" style="width:400px;height:50px">
    <div id="progressBarTests" runat="server" class="progress-bar progress-bar-striped progress-bar-success active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentTests" Font-Size="large" style="margin-top:35px"></asp:Label>
     </div>
    </div>
    <asp:LinkButton runat="server" ID="lbtnSurveys" Text="Surveys:" 
            onclick="lbtnSurveys_Click"></asp:LinkButton>
    <div class="progress" style="width:400px;height:50px">
    <div id="progressBarSurveys" runat="server" class="progress-bar progress-bar-striped progress-bar-danger active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentSurveys" Font-Size="Large"></asp:Label>
    </div>
    </div>
    <asp:LinkButton runat="server" ID="lbtnChallenges" Text="Challenges:" 
            onclick="lbtnChallenges_Click"></asp:LinkButton>
    <div class="progress" style="width:400px;height:50px">
    <div id="progressBarChallenges" runat="server" class="progress-bar progress-bar-striped progress-bar-warning active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentChallenges" Font-Size="large"></asp:Label>
    </div>
    </div>
    </div> 
    </div>
    </div>
    <div class="row" style="margin-left:220px;margin-top:80px">
    <div class="col-lg-12">
    <div class="col-lg-4">
    <asp:label runat="server" ID="lblAptitude" cssclass="page-header lead" style="margin-left:40px;margin-top:180px" text="Aptitude Result" Visible="false"></asp:label>
     <br>
     <asp:GridView ID="GridView1"  style="margin-left:40px;margin-top:20px" runat="server" 
            AutoGenerateColumns="False"  
                        CssClass="table table-bordered table-hover table-responsive table-striped" 
                        AllowPaging="True" Visible="false" PageSize="5" AllowSorting="True">
         <Columns>
             <asp:TemplateField HeaderText="Test No" SortExpression="Test_No">
                 <ItemTemplate>
                     <asp:LinkButton ID="lbtnTestAptitude" OnClick="lbtnTestAptitude_Click" runat="server" Text='<%# Bind("Test_No") %>'></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
             <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Ans" 
                 SortExpression="Correct_Ans" />
             <asp:BoundField DataField="Incorrect_Ans" HeaderText="Incorrect Ans" 
                 SortExpression="Incorrect_Ans" />
             <asp:BoundField DataField="Unattempted_Ques" HeaderText="Unattempted Ques" 
                 SortExpression="Unattempted_Ques" />
         </Columns>
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTests" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="GetAptitudeScoreAdmin" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="col-lg-8">
    <asp:GridView ID="GridView2"  style="margin-left:40px;margin-top:80px" runat="server" 
            AutoGenerateColumns="False"  
                        CssClass="table table-bordered table-hover table-responsive table-striped" 
                        AllowPaging="True" Visible="false" PageSize="5" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="Test_Ques_No" HeaderText="Ques No" 
                SortExpression="Test_Ques_No" />
            <asp:BoundField DataField="Ques" HeaderText="Ques" SortExpression="Ques" />
            <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
            <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Ans" 
                SortExpression="Correct_Ans" />
        </Columns>
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTestResult" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="ShowTestResultAptitude" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="lblTestNo" Name="Test_No" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    </div>
     <div class="row" style="margin-left:220px">
    <div class="col-lg-12">
    <div class="col-lg-4">
     <asp:label ID="lblEnglish" runat="server" cssclass="page-header lead" style="margin-left:40px;margin-top:80px" text="English Result" Visible="false"></asp:label>
     <br />
     <asp:GridView ID="GridView3"  style="margin-left:40px;margin-top:20px" runat="server" 
            AutoGenerateColumns="False"  
                        CssClass="table table-bordered table-hover table-responsive table-striped" 
                        AllowPaging="True" PageSize="5" AllowSorting="True" Visible="false" >
         <Columns>
         <asp:TemplateField HeaderText="Test No" SortExpression="Test_No">
                 <ItemTemplate>
                     <asp:LinkButton ID="lbtnTestEnglish" OnClick="lbtnTestEnglish_Click" runat="server" Text='<%# Bind("Test_No") %>'></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
             <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Ans" 
                 SortExpression="Correct_Ans" />
             <asp:BoundField DataField="Incorrect_Ans" HeaderText="Incorrect Ans" 
                 SortExpression="Incorrect_Ans" />
             <asp:BoundField DataField="Unattempted_Ques" HeaderText="Unattempted Ques" 
                 SortExpression="Unattempted_Ques" />
         </Columns>
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTestEnglish" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="GetEnglishScoreAdmin" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="col-lg-8">
    <asp:GridView ID="GridView4"  style="margin-left:40px;margin-top:20px" runat="server" 
            AutoGenerateColumns="False"  
                        CssClass="table table-bordered table-hover table-responsive table-striped" 
                        AllowPaging="True" PageSize="5" AllowSorting="True" Visible="false" >
        <Columns>
            <asp:BoundField DataField="Test_Ques_No" HeaderText="Ques No" 
                SortExpression="Test_Ques_No" />
            <asp:BoundField DataField="Ques" HeaderText="Ques" SortExpression="Ques" />
            <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
            <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Ans" 
                SortExpression="Correct_Ans" />
        </Columns>
                        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTestResult2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
            SelectCommand="ShowTestResultEnglish" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblEmail" Name="Email" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="lblTestNo2" Name="Test_No" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    <asp:GridView ID="GridViewChallenges" runat="server" AutoGenerateColumns="False" 
            CssClass="table table-bordered table-hover table-responsive table-striped" 
            Visible="False" AllowPaging="True" PageSize="6" style="margin-left:40px">
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="fa fa-x fa-download" OnClick="DownloadOwnDoc" CausesValidation="false"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceChallenges" runat="server"></asp:SqlDataSource>
    </div>
    </div>
    </div>
    <asp:Label runat="server" ID="lblEmail" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="lblTestNo" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="lblTestNo2" Visible="false"></asp:Label>
    </form>
</body>
</html>
