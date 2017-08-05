<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="TestResult.aspx.cs" Inherits="IT_SOLUTIONS.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Test-Result</title>
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
<div class="col-lg-12" style="background-color:black;color:white;padding:6px;font-size:20px;" >&nbsp;Test-Result
</div>
<asp:Panel runat="server" ID="panResult" CssClass="panel panel-default col-lg-8" style="margin-left:200px;margin-top:30px;margin-bottom:30px">
<div style="background-color:transparent; margin-top:0px">
<center><h3 class="page-header lead">Test-Result</h3></center></div>
<b><p style="margin-left:40px;margin-top:30px;font-size:large; color:Red;float:left">Your Score:
<asp:Label runat="server" id="lblScore"></asp:Label>/10<br /><p style="margin-left:40px;margin-top:30px;font-size:large; color:Green;float:left">Attempted Questions:<asp:Label runat="server" ID="lblAttempted"></asp:Label></p>
<p style="margin-left:40px;margin-top:30px;font-size:large; color:Orange;float:left">Questions Not Attempted:<asp:Label runat="server" ID="lblNotAttempted"></asp:Label></p></b>
<asp:Button runat="server" CssClass="btn btn-md btn-success col-lg-5" id="btnRight" 
        Text="Correct Answers" 
        style="margin-left:50px;margin-top:30px;margin-bottom:30px" 
        onclick="btnRight_Click" />
<asp:Button runat="server" CssClass="btn btn-md btn-danger col-lg-5" ID="btnWrong" 
        Text="Wrong Answers" 
        style="margin-left:10px;margin-top:30px;margin-bottom:30px" 
        onclick="btnWrong_Click" />
<br />
<br />
<asp:GridView runat="server" ID="GetQues" CssClass="table table-bordered table-striped table-hover table-responsive" AutoGenerateColumns="false">
<Columns>
    <asp:BoundField DataField="Ques" HeaderText="Question" ItemStyle-Width="240" />
    <asp:BoundField DataField="Ans" HeaderText="Answer" ItemStyle-Width="240" />
    <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Answer" ItemStyle-Width="240" />
</Columns>
</asp:GridView>
</asp:Panel>
</div>
</asp:Content>
