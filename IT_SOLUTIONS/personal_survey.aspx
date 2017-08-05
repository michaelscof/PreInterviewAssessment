<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personal_survey.aspx.cs" Inherits="IT_SOLUTIONS.personal_survey" MasterPageFile="~/User_Header.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Personal</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">

<div class="container">

<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;box-shadow:0px 5px 5px rgb(200,200,200);margin-top:100px;">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >Personal Details</div>

<form role="form" action="personal_survey.aspx">

<div class="col-md-12" style="padding:20px;">
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a landline No?</label>
</div>
<div class="col-md-5" style="width:40%;">
   
    <div class="form-control"  style="float:left;">

     <asp:RadioButtonList ID="RadioButtonListlandline" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>  
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorlandline" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListlandline" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>

<div class="col-md-12" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a pan card?</label>
</div>
<div class="col-md-5" style="width:40%;">
    <div class="form-control"  style="float:left;">
      <asp:RadioButtonList ID="RadioButtonListpan" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorpan" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListpan" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>


<div class="col-md-12" style="padding:20px;">
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a bank account?</label>
</div>
<div class="col-md-5" style="width:40%;">

  
    
    <div class="form-control"  style="float:left;">   
    <asp:RadioButtonList ID="RadioButtonListbank" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorbank" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListbank" Display="Dynamic"></asp:RequiredFieldValidator>
    
  </div>
</div>
<div class="col-md-2">
</div>
</div>

<div class="col-md-12" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a aadhaar card?</label>
</div>
<div class="col-md-5" style="width:40%;">

  
    
    <div class="form-control"  style="float:left;"> 
      <asp:RadioButtonList ID="RadioButtonListadhar" runat="server" 
        RepeatDirection="Horizontal">
     <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatoradhar" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListadhar" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>

<div class="col-md-12" style="padding:20px;" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a driving liscence?</label>
</div>
<div class="col-md-5" style="width:40%;">

  
    <div class="form-control"  style="float:left;"> 
      <asp:RadioButtonList ID="RadioButtonListliscence" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorliscence" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListliscence" Display="Dynamic"></asp:RequiredFieldValidator> 
  </div>
</div>
<div class="col-md-2">
</div>
</div>

<hr>

<div class="col-md-12" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a voter id?</label>
</div>
<div class="col-md-5" style="width:40%;">   
    <div class="form-control"  style="float:left;">  
    <asp:RadioButtonList ID="RadioButtonListvoter" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorvoter" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListvoter" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>

<div class="col-md-12" style="padding:20px;">
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do You have a passport?</label>
</div>
<div class="col-md-5" style="width:40%;">

    
<div class="form-control"  style="float:left;">  
 <asp:RadioButtonList ID="RadioButtonListpassport" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassport" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListpassport" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>


<div class="col-md-12" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">what is your height(in cms)?</label>
</div>
<div class="col-md-5" style="width:40%;">
  
<asp:TextBox ID="txtheight" class="form-control" placeholder="Enter your height in cms" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorheight" runat="server" ErrorMessage="Enter your height" ForeColor="Red" ControlToValidate="txtheight" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorheight" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="txtheight" Type="Integer" MinimumValue="1" MaximumValue="200"></asp:RangeValidator>

  </div>
</div>
<div class="col-md-2">
</div>


<div class="col-md-12" style="padding:20px;">
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">what is your weight in kgs?</label>
</div>
<div class="col-md-5" style="width:40%;">
<asp:TextBox ID="txtweight" class="form-control" placeholder="Enter your weight in kgs" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorweight" runat="server" ErrorMessage="Enter your weight" ForeColor="Red" ControlToValidate="txtweight" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorweight" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="txtweight" Type="Integer" MinimumValue="1" MaximumValue="200"></asp:RangeValidator>
  
    

  </div>
</div>
<div class="col-md-2">
</div>


<div class="col-md-12" >
<div class="col-md-2" >
</div>
<div class="col-md-3">
<label for="">Do you wear spectacles?</label>
</div>
<div class="col-md-5" style="width:40%;">

  
    
<div class="form-control"  style="float:left;">  
 <asp:RadioButtonList ID="RadioButtonListspecs" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes" ></asp:ListItem>
    <asp:ListItem Text="No" ></asp:ListItem>
    </asp:RadioButtonList> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorspecs" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListspecs" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
</div>
<div class="col-md-2">
</div>
</div>
</form>

<div class="col-md-12" style="padding:20px;"> <center> 
    <asp:button class="btn btn-danger" ID="btnsubmit" Text="Submit" 
        style="background-color:purple;border:none;padding:5px;font-size:13px;border-radius:0px;margin-right:3px;" 
        runat="server"  CausesValidation="true" onclick="btnsubmit_Click" ></asp:button>

    <asp:button class="btn btn-danger" ID="btnreset" 
        style="background-color:green;border:none;padding:5px;font-size:13px;border-radius:0px;" 
        Text="Reset" runat="server" onclick="btnreset_Click"></asp:button></center></div>
</div>
</div>
</asp:Content>
