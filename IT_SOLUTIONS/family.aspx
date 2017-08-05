<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="family.aspx.cs" Inherits="IT_SOLUTIONS.family" MasterPageFile="~/User_Header.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>FAMILY</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
<div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px;box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >FAMILY</div>

<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<form role="form">
<div class="col-md-12">
<div class="col-md-2">
<label for="">Family type:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;"> 
    
    
<asp:RadioButton ID="rbtype1" 
        Text="Joint" Font-Names="Times New Roman" runat="server" GroupName="family"> </asp:RadioButton>
<asp:RadioButton ID="rbtype2" Text="Nuclear" Font-Names="Times New Roman" 
        runat="server" GroupName="family"> </asp:RadioButton>       
</div>
</div>
<div class="col-lg-5"></div>
</div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">No of family members:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox ID="txtmembers" class="form-control" placeholder="Enter the number of family members" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatormembers" runat="server" ErrorMessage="Enter the number of members" ForeColor="Red" ControlToValidate="txtmembers" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatormembers" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="txtmembers" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Monthly family income:</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList class="form-control" id="comboincome" runat="server">
    <asp:ListItem Value="-1">select incmome</asp:ListItem>
    <asp:ListItem>less than 1,00,000</asp:ListItem>
    <asp:ListItem>1,00,000 to 2,00,000</asp:ListItem>
    <asp:ListItem>more than 2,00,000</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcomboincome" runat="server" ErrorMessage="Select atleast one category" ControlToValidate="comboincome" Display="Dynamic" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">Father's Name:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="Txtfather" placeholder="Enter father's name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfname" runat="server" ErrorMessage="Enter name" ForeColor="Red" ControlToValidate="Txtfather" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Father's age:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="Txtfage" placeholder="Enter father's age" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorfage" runat="server" ErrorMessage="Enter the age" ForeColor="Red" ControlToValidate="txtfage" Display="Dynamic"></asp:RequiredFieldValidator>
   <asp:RangeValidator ID="RangeValidatorfage" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="Txtfage" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Father's highest qualification:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="Txtfqual" placeholder="Enter father's highest qualification" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfqual" runat="server" ErrorMessage="Enter the income" ForeColor="Red" Display="Dynamic" ControlToValidate="txtfqual"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Father's Occupation:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="txtfoccupation" placeholder="Enter father's occupation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldfoccupation" runat="server" ErrorMessage="Enter father's occupation" ForeColor="Red" Display="Dynamic" ControlToValidate="txtfoccupation"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">Mother's Name:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="Txtmname" placeholder="Enter mother's name" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidatormname" runat="server" ErrorMessage="Enter name" ForeColor="Red" ControlToValidate="Txtmname" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Mother's age:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="txtmage" placeholder="Enter mother's age" runat="server"></asp:TextBox>

  <asp:RequiredFieldValidator ID="RequiredFieldValidatormage" runat="server" ErrorMessage="Enter the age" ForeColor="Red" ControlToValidate="txtmage" Display="Dynamic"></asp:RequiredFieldValidator>
   <asp:RangeValidator ID="RangeValidatormage" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="txtmage" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Mother's highest qualification:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="txtmqual" placeholder="Enter mother's highest qualification" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidatormqual" runat="server" ErrorMessage="Enter the income" ForeColor="Red" Display="Dynamic" ControlToValidate="txtmqual"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Mother's Occupation:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="txtmoccupation" placeholder="Enter mother's occupation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldmoccupation" runat="server" ErrorMessage="Enter mother's occupation" ForeColor="Red" Display="Dynamic" ControlToValidate="txtmoccupation"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">Total number of siblings:</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="txtsiblings" placeholder="Enter the number of siblings" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsiblings" runat="server" ErrorMessage="Enter the number of siblings" ForeColor="Red" ControlToValidate="txtsiblings" Display="Dynamic"></asp:RequiredFieldValidator>
     <asp:RangeValidator ID="RangeValidatorsiblings" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="txtsiblings" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
</div>

<div class="col-lg-5"></div></div>
</form>

</div>
<div class="col-md-12"> <center> <asp:button class="btn btn-danger" ID="btnsubmit" Text="Submit" style="background-color:purple;border:none;padding:5px;font-size:13px;border-radius:0px;margin-right:3px;" runat="server" OnClick="btnsubmit_click" CausesValidation="true" ></asp:button><asp:button class="btn btn-danger" ID="btnreset" style="background-color:green;border:none;padding:5px;font-size:13px;border-radius:0px;" Text="Reset" runat="server" OnclientClick="btnreset_click"></asp:button></center></div>
</div>
</div>
</form>
</asp:content>
