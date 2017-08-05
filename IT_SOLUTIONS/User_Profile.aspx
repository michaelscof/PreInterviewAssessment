<%@ Page Title="" Language="C#" MasterPageFile="~/User_Header.Master" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="IT_SOLUTIONS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
 <div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:80px;box-shadow:0px 5px 5px rgb(200,200,200);">
<!--<div class="col-lg-12"> -->
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:10px;font-size:20px;" >My Profile</div>
 <asp:MultiView ID="MultiViewprofile" runat="server" ActiveViewIndex="0" EnableTheming="true">
 <asp:View ID="viewprofile" runat="server" ViewStateMode="Enabled" >
<div class="col-lg-12" style="margin-top:10px;">
<div class="col-lg-2">
<asp:image runat="server" id="imgUser" Height="190px" Width="180px" />
<br />
<br />
<asp:FileUpload ID="uploadpic" runat="server" Visible="false" BorderStyle="Solid" 
 Width="180px" BorderWidth="1px" ondatabinding="uploadpic_Click"></asp:FileUpload>
 <div style="margin-top:5px">
 <asp:Button ID="btnchangepic" CssClass="btn btn-lg btn-success" runat="server" Width="180px" 
  Text="Update" Visible="False" Height="35px" onclick="btnchangepic_Click"></asp:Button>
  </div>
<center><asp:LinkButton ID="changepic" runat="server" onclick="changepic_Click">Change Profile Picture</asp:LinkButton></center>
</div>
<div class="col-lg-6">
<asp:Label ID="username" runat="server" Width="100%" Font-Bold="True" Font-Size="Large"></asp:Label>
<asp:LinkButton ID="LinkButtonpass" runat="server" onclick="LinkButtonpass_Click">Change Password</asp:LinkButton>
<br /><br />

<div class="col-lg-12" style="padding-top:20px; padding-bottom:10px; margin-left:5px;" >
                            <table class="table table-responsive" frame="void" >
                            <tr>
                            <td>
                            <i class="fa fa-home fa-2x"></i>
                            <b>Lives in</b>
                            <asp:Label runat="server" ID="city" Width="150px"></asp:Label>
                            </td>
                            <td>
                            <i class="fa fa-mail-forward fa-2x"></i>
                            <asp:Label runat="server" ID="email" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                            <tr>
                            <td>
                            <i class="fa fa-calendar fa-2x"></i>
                            <b>Born on</b>
                            <asp:Label runat="server" ID="bday" Width="150px" Text="Born on"></asp:Label>
                            </td>
                            <td>
                            <i class="fa fa-phone fa-2x"></i>
                            <asp:Label runat="server" ID="phone" Width="130px"></asp:Label>
                            </td>
                            </tr>
                             <tr>
                            <td>
                            <i class="fa fa-globe fa-2x"></i>
                            <asp:Label runat="server" ID="intlocation" Width="150px" Text=""></asp:Label><br />
                            <asp:LinkButton ID="lbtlocation" runat="server" onclick="lbtlocation_Click">Update Interview location</asp:LinkButton>
                            <br />
                            <asp:TextBox ID="txtupdatelocation" Visible="false" runat="server"></asp:TextBox>
                            <div style="margin-top:5px">
                            <asp:Button ID="btnupdatelocation" CssClass="btn btn-lg btn-danger" runat="server" visible="false"
                             width="100px" height="35px" Text="update" onclick="btnupdatelocation_Click" /></div>
                            </td>
                            <td>
                            <i class="fa fa-trophy fa-2x"></i>
                            <asp:Label runat="server" ID="clgpercent" CssClass="glyphicon" Width="130px"></asp:Label><br />
                            <asp:LinkButton ID="lbtpercent" runat="server" onclick="lbtpercent_Click">Update College percentage</asp:LinkButton>
                            <br />
                            <asp:TextBox ID="txtUpdatePercent" Visible="false" runat="server"></asp:TextBox>
                            <div style="margin-top:5px">
                            <asp:Button ID="btnupdatepercent" CssClass="btn btn-lg btn-danger" runat="server" visible="false"
                             width="100px" height="35px" Text="update" onclick="btnupdatepercent_Click" /></div>
                            </td>
                            </tr>
                            </table></div>
    <asp:Label ID="lblerrors" runat="server" visible="false"></asp:Label>
</div>
<div class="col-lg-4">
<div class="col-lg-12">
<asp:Panel ID="Panelsurveys" runat="server" BorderColor="#999999" BorderStyle="Ridge" 
BorderWidth="1px" Height="50%" Width="70%">
<center><b><asp:Label ID="Labelsurveys" runat="server" Height="45px" Font-Size="X-Large"></asp:Label></b></center>
<center><b><asp:Label ID="lblsurvey" runat="server" Height="50%" Text="Surveys" Font-Size="Medium"></asp:Label></b></center>
</asp:Panel>
</div>
<div class="col-lg-12" style="margin-top:10px">
<asp:Panel ID="Panelchallenges" runat="server" BorderColor="#999999" BorderStyle="Ridge" 
BorderWidth="1px" Height="50%" Width="70%">
<center><b><asp:Label ID="Labelchallenges" runat="server" Height="45px" Font-Size="X-Large"></asp:Label></b></center>
<center><b><asp:Label ID="Label2" runat="server" Height="50%" Text="Challenges" Font-Size="Medium"></asp:Label></b></center>
</asp:Panel>
</div>
<div class="col-lg-12" style="margin-top:10px">
<asp:Panel ID="Paneltest" runat="server"  BorderColor="#999999" BorderStyle="Ridge" 
BorderWidth="1px" Height="50%" Width="70%">
<center><b><asp:Label ID="Labeltests" runat="server" Height="45px" Font-Size="X-Large"></asp:Label></b></center>
<center><b><asp:Label ID="Label4" runat="server" Height="50%" Text="Tests" Font-Size="Medium"></asp:Label></b></center>
</asp:Panel>
</div>
</div>
</div>
</asp:View>
 <asp:View ID="viewpassword" runat="server" ViewStateMode="Enabled" >
 <div class="col-lg-6" style="margin-top:10px;margin-left:300px;">
 <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Height="400px" 
 Width="500px" BorderWidth="1px">
 <div class="col-md-12" style="padding-top:60px;">
<div class="col-md-5" style="font-size:large">
<label for="">Current Password:</label>
</div>
<div class="col-md-7">  
<asp:TextBox class="form-control" id="Txtcurrent" placeholder="Enter your password" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorcurrent" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="Txtcurrent" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
 <div class="col-md-12" style="padding-top:30px;">
<div class="col-md-5" style="font-size:large">
<label for="">New Password:</label>
</div>
<div class="col-md-7">  
<asp:TextBox class="form-control" type="password" id="Txtnew" placeholder="Enter your password" runat="server" MaxLength="10"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatornew" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="Txtnew" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:30px;">
<div class="col-md-5" style="font-size:large">
<label for="">Confirm:</label>
</div>
<div class="col-md-7">  
<asp:TextBox class="form-control" id="Txtconfirm" placeholder="Enter your password" type="password" runat="server" MaxLength="10"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="Txtconfirm" Display="Dynamic"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidatorpass" runat="server" ControlToValidate="Txtconfirm" ControlToCompare="Txtnew" Operator="Equal" Type="String" ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>
</div>
<div class="col-lg-5" style="padding-bottom:20px"></div></div>
<center>
<asp:Button ID="Btnpass" CssClass="btn btn-lg btn-danger" runat="server" visible="true"
height="50px" Text="Change Password" onclick="Btnpass_Click"  />
</center> 
</asp:Panel>
</div>
</asp:View>
</asp:MultiView>
</div>
</div>

</asp:Content>
