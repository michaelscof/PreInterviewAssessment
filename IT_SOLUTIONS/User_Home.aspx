<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Header.Master" CodeBehind="User_Home.aspx.cs" Inherits="IT_SOLUTIONS.User_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
<div class="col-lg-12">
<br />
<div class="col-lg-2">
<asp:image runat="server" id="imgUser" Height="230px" Width="180px" />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton runat="server" ID="lbtnUserName" Font-Size="Larger" align="center" 
        onclick="lbtnUserName_Click"></asp:LinkButton>
</div>
 <div class="col-lg-3">
 <asp:Panel ID="panelTests" runat="server" class="panel panel-default" Height="230px">
<h2 class="page-header lead">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-book" style="color:Purple"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-ok" style="color:Orange"></i></h2>
<div class="panel-body">
 <div class="progress" style="width:250px;height:50px">
    <div id="progressBarTests" runat="server" class="progress-bar progress-bar-striped progress-bar-success active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentTests" Font-Size="large" style="margin-top:35px"></asp:Label>
     </div>
    </div>
    <center><asp:Button runat="server" ID="btnTests" CssClass="btn btn-lg btn-primary" 
            Text="Take Online Tests" onclick="btnTests_Click" /></center>
</div>
            </asp:Panel>
            </div>
 <div class="col-lg-3">
 <asp:Panel ID="panelSurveys" runat="server" class="panel panel-default" Height="230px">
<h2 class="page-header lead">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-th-large" style="color:Purple"></i>&nbsp;&nbsp;&nbsp;&nbsp;Surveys&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-ok" style="color:Orange"></i></h2>
<div class="panel-body">
 <div class="progress" style="width:250px;height:50px">
    <div id="progressBarSurveys" runat="server" class="progress-bar progress-bar-striped progress-bar-danger active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentSurveys" Font-Size="large" style="margin-top:35px"></asp:Label>
     </div>
    </div>
    <center><asp:Button runat="server" ID="btnSurveys" 
            CssClass="btn btn-lg btn-primary" Text="Fill Survey" 
            onclick="btnSurveys_Click" /></center>
</div>
            </asp:Panel>
            </div>
            <div class="col-lg-3">
 <asp:Panel ID="panChallenges" runat="server" class="panel panel-default" Height="230px">
<h2 class="page-header lead">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-tasks" style="color:Purple"></i>&nbsp;&nbsp;&nbsp;&nbsp;Challenges&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-ok" style="color:Orange"></i></h2>
<div class="panel-body">
 <div class="progress" style="width:250px;height:50px">
    <div id="progressBarChallenges" runat="server" class="progress-bar progress-bar-striped progress-bar-warning active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <br />
    <asp:Label runat="server" ID="lblpercentChallenges" Font-Size="large" style="margin-top:35px"></asp:Label>
     </div>
    </div>
    <center><asp:Button runat="server" ID="btnChallenges" 
            CssClass="btn btn-lg btn-primary" Text="Attempt Challenge" 
            onclick="btnChallenges_Click" /></center>
</div>
            </asp:Panel>
            </div>
    </div>

                       
                            
                            <br />
                            <br />
                            
                            
    </div>
    </asp:Content>