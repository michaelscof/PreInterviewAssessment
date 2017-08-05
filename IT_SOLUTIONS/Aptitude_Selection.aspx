<%@ Page Title="Test Detail-Aptitude" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="Aptitude_Selection.aspx.cs" Inherits="IT_SOLUTIONS.Aptitude_Selection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Test Detail-Aptitude</title>
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
<div class="col-lg-12" style="background-color:black;color:white;padding:6px;font-size:20px;" >&nbsp;Test Detail-Aptitude
</div>
<div class="col-lg-4">
<asp:Image runat="server" ID="imgAptitude" ImageUrl="~/project pics/aptitude-test.png" Height="200px" Width="200px" style="margin-left:100px;margin-top:20px"></asp:Image><br />
<b><i class="glyphicon glyphicon-time" style="margin-left:130px"></i><asp:Label runat="server" Text="Duration : 10 minutes"></asp:Label></b>
<br />
<b><i class="glyphicon glyphicon-question-sign" style="margin-left:130px"></i><asp:Label ID="Label1" runat="server" Text="Questions : 5"></asp:Label></b>
<br />
<b><i class="glyphicon glyphicon-star-empty" style="margin-left:130px"></i><asp:Label ID="Label2" runat="server" Text="Maximum Score : 10"></asp:Label></b>
<br />
<b><i class="glyphicon glyphicon-book" style="margin-left:130px"></i><asp:Label ID="Label3" runat="server" Text="Subject : Aptitude"></asp:Label></b>
</div>
<div class="col-lg-8">
<b><p style="color:Red;margin-left:10px;margin-top:40px">Note: &nbsp;&nbsp; Read the instructions carefully</p></b>
<div class="page-header"></div>
<div class="lead" style="font-size:25px"><p style="margin-left:10px">Instructions:</p>
</div>
<p style="margin-left:20px;margin-top:5px">1.Please read the questions carefully and answer the questions.</p>
<p style="margin-left:20px">2.Each correct question carries 2 marks.</p>
<p style="margin-left:20px">3.Please note that incorrect answers will attract negative marking.Hence,avoid guessing.</p>
<asp:Button runat="server" ID="btnBeginTest" CssClass="btn btn-lg btn-success" 
        Text="Begin Test" PostBackUrl="~/OnlineTest.aspx" />
</div>
</div>
</asp:Content>
