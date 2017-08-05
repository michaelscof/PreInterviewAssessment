<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="TestSelection.aspx.cs" Inherits="IT_SOLUTIONS.TestSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>IT Solutions-Test</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
<div class="col-lg-11" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:30px;box-shadow:0px 5px 5px rgb(200,200,200);margin-left:55px;">
<div class="col-lg-12" style="background-color:black;color:white;padding:6px;font-size:20px;" >&nbsp;Tests
</div>
<div class="col-lg-5" style="margin-left:50px">
<asp:Panel runat="server" ID="panelAptitude" CssClass="panel panel-default" style="background-color:White;margin-top:30px">
<div class="panel-heading" style="background-color:White">
<h1 class="page-header lead"><b>Aptitude</b></h1>
<asp:Image runat="server" ID="imgAptitude" ImageUrl="~/project pics/aptitude-test.png" Height="110px" Width="110px" style="float:left"/>
<small><p class="lead" style="font-size:17x;margin-left:120px">This section contains questions to evaluate your aptitude.Attempt a test and get your score now...<asp:Button 
            runat="server" ID="btnAptitude" Text="Start Test" 
            CssClass="btn btn-md btn-success" style="margin-left:230px" 
            onclick="btnAptitude_Click" /></p></small>
</div>
</asp:Panel>
</div> 
<div class="col-lg-5" style="margin-left:50px">
<asp:Panel runat="server" ID="panelEnglish" CssClass="panel panel-default" style="background-color:White;margin-top:30px">
<div class="panel-heading" style="background-color:White">
<h1 class="page-header lead"><b>English</b></h1>
<asp:Image runat="server" ID="imgEnglish" ImageUrl="~/project pics/EnglishTest.png" Height="110px" Width="110px" style="float:left"/>
<small><p class="lead" style="font-size:17x;margin-left:120px">This section contains questions to evaluate your communication and grammar skills.Attempt a test and get your score now...<asp:Button 
            runat="server" ID="btnEnglish" Text="Start Test" 
            CssClass="btn btn-md btn-success" style="margin-left:30px" 
            onclick="btnEnglish_Click" /></p></small>
</div>
</asp:Panel>
</div> 
</div>
</asp:Content>
