<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="Challenges.aspx.cs" Inherits="IT_SOLUTIONS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Challenges</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
<div class="col-lg-11" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:30px;box-shadow:0px 5px 5px rgb(200,200,200);margin-left:55px; margin-right:30px">
<div class="col-lg-12" style="background-color:black;color:white;padding:6px;font-size:20px;" >&nbsp;Open Challenges
</div>
<div class="col-lg-2">
<br />
<asp:Image runat="server" ID="imgChallenges" ImageUrl="~/project pics/challenge-graphic.png" Height="180px" Width="200px" />
</div>
<div class="col-lg-7">
<br />
<asp:Label runat="server" ID="Heading" Text="What is Open Challenge?" CssClass="lead" Font-Size="30px"></asp:Label>
<h5 class="lead">Open Challenges help you to unleash your potential and its completion and submission will help you to improve your challenge solving skill.</h5>
<h5 class="lead">You need to complete at least 6 challenges and submit them on or before 5th March,2016.</h5>
</div>
<div class="col-lg-3">
<br />
<h3 class="lead" style="float:left">Total Challenges:</h3><br /><asp:Label runat="server" ID="lblCountChallenges" CssClass="text-capitalize" Text="12" Font-Bold="true" Font-Size="20px" style="color:Red"></asp:Label>
<h3 class="lead" style="float:left">Total Submissions:</h3><br /><br /><br /><asp:Label runat="server" ID="lblCountSubmissions" CssClass="text-capitalize" Text="4212" Font-Bold="true" Font-Size="20px" style="color:Red"></asp:Label>
</div>
<div class="col-lg-11 page-header" style="margin-left:20px;padding:0px"></div>
    <div class="col-lg-11" style="margin-left:20px">
    <asp:Repeater runat="server" ID="RepeaterChallenges" 
            onitemcommand="RepeaterChallenges_ItemCommand"> 
    <ItemTemplate>
    <asp:Panel runat="server" CssClass="panel panel-default" style="background-color:#F1F2F4" id="panelChallenges" Height="100px">
    <div class="col-lg-1">
    <asp:Image runat="server" height="70px" Width="90px" ID="imgSubmitChallenge" ImageURL='<%# Eval("Challenge_Image")%>' style="margin-left:20px;margin-top:13px" />
    </div>
    <div class="col-lg-6" style="padding-left:65px">
    <br />
    <asp:Label ID="lblChallengeTitle" runat="server" Text='<%# Eval("Challenge_Name")%>' CssClass="lead"></asp:Label>
    <br /> 
    <small><asp:Label ID="lblChallengeDescription" runat="server" Text='<%# Eval("Challenge_Description")%>' Font-Bold="true" Font-Size="Small"></asp:Label></small>
    </div>
    <div class="col-lg-3">
    <br />
    <br />
    <asp:FileUpload runat="server" ID="UploadDoc" CssClass="text-info"></asp:FileUpload>
    <asp:Label ID="lblDisplay" runat="server" CssClass="text-danger" Visible="false" Text="Your file has been uploaded successfully"></asp:Label>
    </div>
    <div class="col-lg-2"><br />
    <br />
    <asp:LinkButton runat="server" CssClass="fa fa-2x fa-upload" ID="btnUpload" CommandName="UploadChallenge"></asp:LinkButton>
    <asp:LinkButton runat="server" ID="btnDownload" CommandName="DownloadChallenge" CommandArgument='<%# Eval("Challenge_Name")%>' CssClass="fa fa-2x fa-download" 
            style="padding-left:30px"></asp:LinkButton>
    </div>
    </asp:Panel>
    </ItemTemplate>
    </asp:Repeater>
    </div>
    <div class="col-lg-11 page-header" style="margin-left:40px">
    </div>
    <div class="col-lg-11">
    <asp:Label runat="server" ID="lblSubmittedChallenges" Text="Submitted Challenges" Font-Bold="true" CssClass="lead" style="margin-left:40px" visible="false"></asp:Label>
    <br />
    <br />
        <asp:GridView ID="GridViewChallenges" runat="server" 
            AutoGenerateColumns="False" 
            CssClass="table table-bordered table-hover table-responsive table-striped" 
            style="margin-left:40px" PageSize="28">
            <Columns>
            <asp:TemplateField HeaderText="Challenge Name">
            <ItemTemplate>
            <asp:Label ID="lblShowChallenge" runat="server" Text='<%# Bind("Challenge_Name") %>'>
            </asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submission Date">
            <ItemTemplate>
            <asp:Label runat="server" ID="lblUploadDate" Text='<%# Bind("Upload_DateTime") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="ltbnDownloadOwn" runat="server" CssClass="fa fa-x fa-download" OnClick="DownloadOwnDoc"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</div>
</asp:Content>
