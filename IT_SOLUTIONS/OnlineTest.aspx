<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="OnlineTest.aspx.cs" Inherits="IT_SOLUTIONS.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
 <title>Tests</title>
     <script type = "text/javascript" >
         function preventBack() {
             window.history.forward();
         }
         setTimeout("preventBack()", 0);
         window.onunload = function () { null };
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
    <div class="col-lg-11" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:30px;box-shadow:0px 5px 5px rgb(200,200,200);margin-left:55px;">
<div class="col-lg-12" style="background-color:black;color:white;padding:6px;font-size:20px;" >&nbsp;<asp:Label runat="server" ID="lblAptitude" text="Test-Aptitude"></asp:Label>
</div>
 <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
            <asp:Timer id="timer1" runat="server" Interval="1000" ontick="timer1_Tick" Enabled="true" >
            </asp:Timer>
<div class="col-lg-8" style="margin-left:30px">
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo1" Text="1"></asp:Label> of 5</div>
<asp:Label runat="server" ID="lblQuestion1" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="radOptions1" CssClass="lead" style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo2" Text="2"></asp:Label> of 5</div>
<asp:Label runat="server" ID="lblQuestion2" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="radOptions2" CssClass="lead" style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo3" Text="3"></asp:Label> of 5</div>
<asp:Label runat="server" ID="lblQuestion3" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="radOptions3" CssClass="lead" style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo4" Text="4"></asp:Label> of 5</div>
<asp:Label runat="server" ID="lblQuestion4" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="radOptions4" CssClass="lead" style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo5" Text="5"></asp:Label> of 5</div>
<asp:Label runat="server"  ID="lblQuestion5" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="radOptions5" CssClass="lead"  style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
</div>
<div class="col-lg-3">
<div class="page-header lead">
<asp:Button runat="server" ID="btnExitTest" 
        CssClass="btn btn-md btn-danger" EnableViewState="false" Text="Exit Test" 
        style="width:280px" onclick="btnExitTest_Click" /></div>
<asp:Label runat="server" ID="lblTimeRemaining" Text="Time Remaining" CssClass="lead" style="font-size:35px;margin-left:10px"></asp:Label>
<div class="page-header"></div>
<div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        <asp:label ID="label1" runat="server" Visible="false"></asp:label>
        <asp:Label runat="server" ID="lblMinutes" Text="10" CssClass="label label-warning" Height="100px" Width="100px" Font-Size="50px" style="margin-left:10px"></asp:Label>
        <asp:Label runat="server" ID="lblSeconds" Text="00" CssClass="label label-warning" Height="100px" Width="100px" Font-Size="50px" style="margin-left:10px"></asp:Label>
        </ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
        </Triggers>
</asp:UpdatePanel>
</div>
</div>
</div>
<asp:Label runat="server" ID="lblCorrectAnswer1" Visible="false"></asp:Label>
<asp:Label runat="server" ID="lblCorrectAnswer2" Visible="false"></asp:Label>
<asp:Label runat="server" ID="lblCorrectAnswer3" Visible="false"></asp:Label>
<asp:Label runat="server" ID="lblCorrectAnswer4" Visible="false"></asp:Label>
<asp:Label runat="server" ID="lblCorrectAnswer5" Visible="false"></asp:Label>
</asp:Content>
