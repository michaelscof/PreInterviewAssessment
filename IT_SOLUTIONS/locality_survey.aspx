<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="locality_survey.aspx.cs" Inherits="IT_SOLUTIONS.locality_survey" MasterPageFile="~/User_Header.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>LOCALITY</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">

<div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px;box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >LOCALITY</div>
<div class="col-md-6" >
<h2>Present Address</h2>
  <div class="form-group">
    <label for="email">State:</label>
     <asp:DropDownList ID="ddstate" class="form-control"  style="float:left;" runat="server">
         <asp:ListItem Text="select State" Value="-1"></asp:ListItem>
         <asp:ListItem>Andhra Pradesh</asp:ListItem>
         <asp:ListItem>Arunachal Pradesh</asp:ListItem>
         <asp:ListItem>Assam</asp:ListItem>
         <asp:ListItem>Bihar</asp:ListItem>
         <asp:ListItem>Chhattisgrah</asp:ListItem>
         <asp:ListItem>Goa</asp:ListItem>
         <asp:ListItem>Gujarat</asp:ListItem>
         <asp:ListItem>Haryana</asp:ListItem>
         <asp:ListItem>Himachal Pradesh</asp:ListItem>
         <asp:ListItem>Jammu and Kashmir</asp:ListItem>
         <asp:ListItem>Jharkhand</asp:ListItem>
         <asp:ListItem>Karnataka</asp:ListItem>
         <asp:ListItem>Kerela</asp:ListItem>
         <asp:ListItem>Madhya Pradesh</asp:ListItem>
         <asp:ListItem>Maharashtra</asp:ListItem>
         <asp:ListItem>Manipur</asp:ListItem>
         <asp:ListItem>Meghalaya</asp:ListItem>
         <asp:ListItem>Mizoram</asp:ListItem>
         <asp:ListItem>Nagaland</asp:ListItem>
         <asp:ListItem>Odisha</asp:ListItem>
         <asp:ListItem>Punjab</asp:ListItem>
         <asp:ListItem>Rajasthan</asp:ListItem>
         <asp:ListItem>Sikkim</asp:ListItem>
         <asp:ListItem>Tamil Nadu</asp:ListItem>
         <asp:ListItem>Tripura</asp:ListItem>
         <asp:ListItem>Uttar Pradesh</asp:ListItem>
         <asp:ListItem>Uttarakhand</asp:ListItem>
         <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorstate" runat="server" ErrorMessage="Enter your state" ForeColor="Red" Display="Dynamic" ControlToValidate="ddstate"></asp:RequiredFieldValidator>
      
  </div>
  <div class="form-group">
    <label for="pwd">District:</label>
    <asp:TextBox  class="form-control" id="district" runat="server" placeholder="Enter your District" ></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidatordistrict" runat="server" ErrorMessage="Enter your District" ForeColor="Red" Display="Dynamic" ControlToValidate="district"></asp:RequiredFieldValidator>
    
  </div>
  <div class="form-group">
    <label for="pwd">City/town:</label>
    <asp:TextBox class="form-control" id="City" runat="server" placeholder="Enter your City"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorcity" runat="server" ErrorMessage="Enter your City" ForeColor="Red" Display="Dynamic" ControlToValidate="city"></asp:RequiredFieldValidator>

  </div>
  <div class="form-group">
    <label for="pwd">Locality:</label>
    <asp:TextBox class="form-control" id="locality" runat="server" placeholder="Enter your Locality" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorlocality" runat="server" ErrorMessage="Enter your locality " ForeColor="Red" Display="Dynamic" ControlToValidate="locality"></asp:RequiredFieldValidator>

  </div>
  <div class="form-group">
    <label for="pwd">Pincode:</label>
    <asp:TextBox class="form-control" id="pin" runat="server" placeholder="Enter your Pincode" MaxLength="6" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorpin" runat="server" ErrorMessage="Enter your Pincode " ForeColor="Red" Display="Dynamic" ControlToValidate="pin"></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidatorpinpre" runat="server" ErrorMessage="Value entered is incorrect" Display="Dynamic"  MinimumValue="100000" MaximumValue="999999" ControlToValidate="pin" ForeColor="Red" Type="Integer"></asp:RangeValidator>

  </div>
  
  
</div>
<div class="col-md-6" >
<div class="col-sm-7">
<h2 >Permanent Address</h2> 
</div>
<div class="col-sm-5" style="padding-top:23px;margin-left:-25px;">
 <div class="checkbox">
     
    <label style="font-size:13px;color:rgb(150,150,150);">
     <asp:CheckBoxList ID="CheckBoxList1" TextAlign="Right" runat="server" 
         RepeatDirection="Horizontal" RepeatColumns="1" 
         onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true">
     <asp:ListItem Text="Same as present address" value="1"></asp:ListItem>
     </asp:CheckBoxList></label>
  </div>
  </div>
  <div class="form-group">
    <label for="email">State:</label>
    <asp:DropDownList ID="ddstate2" class="form-control"  style="float:left;" runat="server">
         <asp:ListItem Text="select State" Value="-1"></asp:ListItem>
         <asp:ListItem>Andhra Pradesh</asp:ListItem>
         <asp:ListItem>Arunachal Pradesh</asp:ListItem>
         <asp:ListItem>Assam</asp:ListItem>
         <asp:ListItem>Bihar</asp:ListItem>
         <asp:ListItem>Chhattisgrah</asp:ListItem>
         <asp:ListItem>Goa</asp:ListItem>
         <asp:ListItem>Gujarat</asp:ListItem>
         <asp:ListItem>Haryana</asp:ListItem>
         <asp:ListItem>Himachal Pradesh</asp:ListItem>
         <asp:ListItem>Jammu and Kashmir</asp:ListItem>
         <asp:ListItem>Jharkhand</asp:ListItem>
         <asp:ListItem>Karnataka</asp:ListItem>
         <asp:ListItem>Kerela</asp:ListItem>
         <asp:ListItem>Madhya Pradesh</asp:ListItem>
         <asp:ListItem>Maharashtra</asp:ListItem>
         <asp:ListItem>Manipur</asp:ListItem>
         <asp:ListItem>Meghalaya</asp:ListItem>
         <asp:ListItem>Mizoram</asp:ListItem>
         <asp:ListItem>Nagaland</asp:ListItem>
         <asp:ListItem>Odisha</asp:ListItem>
         <asp:ListItem>Punjab</asp:ListItem>
         <asp:ListItem>Rajasthan</asp:ListItem>
         <asp:ListItem>Sikkim</asp:ListItem>
         <asp:ListItem>Tamil Nadu</asp:ListItem>
         <asp:ListItem>Tripura</asp:ListItem>
         <asp:ListItem>Uttar Pradesh</asp:ListItem>
         <asp:ListItem>Uttarakhand</asp:ListItem>
         <asp:ListItem>West Bengal</asp:ListItem>
      </asp:DropDownList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorddstate2" runat="server" ErrorMessage="Enter your State " ForeColor="Red" ControlToValidate="ddstate2" Display="Dynamic"></asp:RequiredFieldValidator>

  </div>
  <div class="form-group">
    <label for="pwd">District:</label>
    <asp:TextBox runat="server" class="form-control" id="district1" placeholder="Enter your District" ></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatordistrict1" runat="server" ErrorMessage="Enter your District " ForeColor="Red" ControlToValidate="district1" Display="Dynamic"></asp:RequiredFieldValidator>

  </div>
  <div class="form-group">
    <label for="pwd">City/town:</label>
    <asp:TextBox runat="server" placeholder="Enter your City" class="form-control" id="city2"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValicity2" runat="server" ErrorMessage="Enter your City " ForeColor="Red" ControlToValidate="city2" Display="Dynamic"></asp:RequiredFieldValidator> 

  </div>
  <div class="form-group">
    <label for="pwd">Locality:</label>
    <asp:TextBox runat="server" class="form-control" id="locality1" placeholder="Enter your locality" ></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorlocality1" runat="server" ErrorMessage="Enter your Locality " ForeColor="Red" ControlToValidate="locality1" Display="Dynamic"  ></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <label for="pwd">Pincode:</label>
    <asp:TextBox runat="server" class="form-control" ID="pin1" placeholder="Enter your Pincode" MaxLength="6"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorpin1" runat="server" ErrorMessage="Enter your Pin " ForeColor="Red" ControlToValidate="pin1" Display="Dynamic"></asp:RequiredFieldValidator> 
   <asp:RangeValidator ID="RangeValidatorpin1" runat="server" ErrorMessage="Value entered is incorrect" Display="Dynamic" ControlToValidate="pin1" Type="Integer" MinimumValue="100000" MaximumValue="999999"></asp:RangeValidator>
  </div>
</div>

<div class="col-md-12" style="padding:20px;"> <center> 
    <asp:Button class="btn btn-danger" ID="btnsubmit" Text="Submit" 
        style="background-color:purple;border:none;padding:5px;font-size:13px;border-radius:0px;margin-right:3px;" 
        runat="server" onclick="btnsubmit_Click" ></asp:Button>
    <asp:button class="btn btn-danger" ID="btnreset" 
        style="background-color:green;border:none;padding:5px;font-size:13px;border-radius:0px;" 
        Text="Reset" runat="server" onclick="btnreset_Click"></asp:button></center></div>
</div>
</div>
</asp:Content>