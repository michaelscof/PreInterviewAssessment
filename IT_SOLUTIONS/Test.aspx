<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="IT_SOLUTIONS.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
    <title>Test</title>
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
<div class="col-lg-8" style="margin-left:30px">
<div class="page-header lead">Question <asp:Label runat="server" ID="lblQuestionNo" Text="1"></asp:Label> of 5</div>
<asp:Label runat="server"  ID="lblQuestion" text="What is the capital of India?" CssClass="lead"></asp:Label>
<asp:RadioButtonList RepeatDirection="Vertical" runat="server" ID="lblOptions" CssClass="lead"  style="margin-left:30px;margin-top:10px">
</asp:RadioButtonList>
<div>
 <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
            <asp:Timer id="timer1" runat="server" Interval="1000" 
        ontick="timer1_Tick">
            </asp:Timer>
<asp:Button runat="server" ID="btnSkip" Text="Skip" 
        CssClass="btn btn-lg btn-primary" CausesValidation="false" style="margin-left:150px;margin-top:20px" 
        onclick="btnSkip_Click"/>
<asp:Button runat="server" ID="btnSave" Text="Save and Next" 
        CssClass="btn btn-lg btn-primary" style="margin-left:20px;margin-top:20px" 
        onclick="btnSave_Click"/>
        <br />
        <br />
        <p style="color:Orange"><b>*Your answer will not be checked until you save them.<br />*Once saved,you cannot edit your choice.So think twice before you choose.<br />*Instead you can skip a question and come back to it later if not saved.</b></p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAns" runat="server" style="color:red" ErrorMessage="<b>*Please Select an answer before saving.</b>" ControlToValidate="lblOptions"></asp:RequiredFieldValidator>
</div></div>
<div class="col-lg-3">
<div class="page-header lead"><asp:Button runat="server" ID="btnExitTest" 
        CssClass="btn btn-md btn-danger" EnableViewState="false" Text="Exit Test" 
        style="width:280px" onclick="btnExitTest_Click" /></div>
<asp:Label runat="server" ID="lblTimeRemaining" Text="Time Remaining" CssClass="lead" style="font-size:35px;margin-left:10px"></asp:Label>
<div class="page-header"></div>
<div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        <asp:label ID="label1" runat="server" Visible="false"></asp:label>
        <asp:Label runat="server" ID="lblMinutes" Text="10" CssClass="label label-warning" Height="100px" Width="100px" Font-Size="50px" style="margin-left:10px"></asp:Label>
        <asp:Label runat="server" ID="lblSeconds" Text="00" CssClass="label label-warning" Height="100px" Width="100px" Font-Size="50px" style="margin-left:10px"></asp:Label></ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
        </Triggers>
</asp:UpdatePanel>
</div>
<div class="page-header"></div>
<asp:Button runat="server" ID="btnQuestion1"  CssClass="btn btn-toolbar" Text="1" 
        style="margin-left:30px" onclick="btnQuestion1_Click" Enabled="false" />
<asp:Button runat="server" ID="btnQuestion2"  CssClass="btn btn-toolbar" Text="2" 
        style="margin-left:5px" onclick="btnQuestion2_Click" Enabled="false" />
<asp:Button runat="server" ID="btnQuestion3"  CssClass="btn btn-toolbar" Text="3" 
        style="margin-left:5px" onclick="btnQuestion3_Click" Enabled="false" />
<asp:Button runat="server" ID="btnQuestion4"  CssClass="btn btn-toolbar" Text="4" 
        style="margin-left:5px" onclick="btnQuestion4_Click" Enabled="false" />
<asp:Button runat="server" ID="btnQuestion5"  CssClass="btn btn-toolbar" Text="5" 
        style="margin-left:5px" onclick="btnQuestion5_Click" Enabled="false" />
</div>
</div>
<asp:Label runat="server" ID="lblCorrectAnswer" Visible="false"></asp:Label>
</asp:Content>
