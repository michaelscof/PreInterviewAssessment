<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Extra_Curricular.aspx.cs" Inherits="IT_SOLUTIONS.Extra_Curricular" MasterPageFile="~/User_Header.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Extra Curricular</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">

<div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px;box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >Extra Curricular</div>

<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<form role="form">
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">What are your hobbies?</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddhobbies" runat="server" 
        onselectedindexchanged="ddlanguages_SelectedIndexChanged">
         
        <asp:ListItem Value="-1">Select hobbies</asp:ListItem>
        <asp:ListItem>singing</asp:ListItem>
        <asp:ListItem>Dancing</asp:ListItem>
        <asp:ListItem>Music</asp:ListItem>
        <asp:ListItem>Designing</asp:ListItem>
        <asp:ListItem>Coding</asp:ListItem>
        <asp:ListItem>Travelling</asp:ListItem>
        <asp:ListItem>Reading</asp:ListItem>
        <asp:ListItem>Telivision</asp:ListItem>
        
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="Btnadd" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
            onclick="Btnadd_Click" ></asp:Button>
    <asp:Button ID="Btnremove" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="Btnremove_Click"></asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="hobbies" runat="server" Visible="True" style="padding-top:10px" 
            SelectionMode="Multiple" Width="200px" >
    </asp:ListBox></div></div>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Do you play any sport?</label>
</div>
<div class="col-md-5">
  <asp:RadioButtonList CssClass="form-control" ID="sports" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorsports" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="sports" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Do you exercise often?</label>
</div>
<div class="col-md-5">
    <asp:RadioButtonList CssClass="form-control" ID="exercise" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorexercise" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="exercise"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">When did you last go for a health checkup?</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList CssClass="form-control" ID="ddcheckup" runat="server" >
        
         
        <asp:ListItem Value="-1">Select Value</asp:ListItem>
        <asp:ListItem>Recently</asp:ListItem>
        <asp:ListItem>Very recently</asp:ListItem>
        <asp:ListItem>Month ago</asp:ListItem>
        <asp:ListItem>Year ago</asp:ListItem>
        <asp:ListItem>Never</asp:ListItem>
    </asp:DropDownList>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcheckup" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddcheckup" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">How many hours in a day do you spend on internet?</label>
</div>
<div class="col-md-5">
    
<asp:TextBox class="form-control" id="Txtinternet" placeholder="Enter hours" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorinternet" runat="server" ErrorMessage="Enter Hours" ForeColor="Red" ControlToValidate="Txtinternet" Display="Dynamic"></asp:RequiredFieldValidator>
   <asp:RangeValidator ID="RangeValidatorInternet" runat="server" ErrorMessage="value entered is incorrect" Display="Dynamic" ControlToValidate="Txtinternet" Type="Integer" MinimumValue="1" MaximumValue="24"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Are you active on social networks?</label>
</div>
<div class="col-md-5">
    <asp:RadioButtonList CssClass="form-control" ID="RadioButtonnetworks" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatornetworks" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="RadioButtonnetworks"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Have you created a Linkedin profile?</label>
</div>
<div class="col-md-5">
    <asp:RadioButtonList CssClass="form-control" ID="RadioButtonlinkedin" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorlinkedin" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="RadioButtonlinkedin"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">What kind of movies do you watch?</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddmovies" runat="server" 
        onselectedindexchanged="ddmovies_SelectedIndexChanged" >
        
         
        <asp:ListItem Value="-1">Select type</asp:ListItem>
        <asp:ListItem>Thriller</asp:ListItem>
        <asp:ListItem>Comedy</asp:ListItem>
        <asp:ListItem>Art</asp:ListItem>
        <asp:ListItem>Horror</asp:ListItem>
        <asp:ListItem>Patriotic</asp:ListItem>
        
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="btnadd2" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" onclick="btnadd2_Click" 
            ></asp:Button>
    <asp:Button ID="btnremove2" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremove2_Click"></asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="movies" runat="server" Visible="True" style="padding-top:10px" 
            SelectionMode="Multiple" Width="200px" >
    </asp:ListBox></div></div>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">What kind of books do you read?</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddbooks" runat="server" 
        onselectedindexchanged="ddbooks_SelectedIndexChanged" >
        
         
        <asp:ListItem Value="-1">Select type</asp:ListItem>
        <asp:ListItem>Fiction</asp:ListItem>
        <asp:ListItem>Romantic</asp:ListItem>
        <asp:ListItem>Science</asp:ListItem>
        <asp:ListItem>Historical</asp:ListItem>
        <asp:ListItem>Autobiography</asp:ListItem>     
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="btnadd3" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
            onclick="btnadd3_Click">
        </asp:Button>
    <asp:Button ID="btnremove3" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremove3_Click"></asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="books" runat="server" Visible="True" style="padding-top:10px" 
            SelectionMode="Multiple" Width="200px" >
    </asp:ListBox></div></div>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">How frequently do you visit a place of worship?</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList CssClass="form-control" ID="ddworship" runat="server" 
        onselectedindexchanged="ddworship_SelectedIndexChanged" >
        
         
        <asp:ListItem Value="-1">Select Value</asp:ListItem>
        <asp:ListItem>Daily</asp:ListItem>
        <asp:ListItem>Monthly</asp:ListItem>
        <asp:ListItem>Weekly</asp:ListItem>
        <asp:ListItem>Yearly</asp:ListItem>
        <asp:ListItem>twice in a week</asp:ListItem>
    </asp:DropDownList>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorworship" runat="server" ErrorMessage="Select value" ForeColor="Red" ControlToValidate="ddworship" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Have you participated in any social service activities?</label>
</div>
<div class="col-md-5">
    <asp:RadioButtonList CssClass="form-control" ID="RadioButtonsocial" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorsocial" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="RadioButtonsocial"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Did you participate in co-curricular activities in college?</label>
</div>
<div class="col-md-5">
    <asp:RadioButtonList CssClass="form-control" ID="RadioButtonactivities" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>      
  <asp:RequiredFieldValidator ID="RequiredFieldValidatoractivities" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="RadioButtonactivities"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
</form>
<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">Which states have you visited?</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList CssClass="form-control" ID="ddstates" runat="server" 
        onselectedindexchanged="ddstates_SelectedIndexChanged" >
        
         
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
     <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="btnadd4" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
             onclick="btnadd4_Click" >
            
        </asp:Button>
    <asp:Button ID="btnremove4" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremove4_Click"></asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="states" runat="server" Visible="True" style="padding-top:10px" 
            SelectionMode="Multiple" Width="200px" >
    </asp:ListBox></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorstates" runat="server" ErrorMessage="Select value" ForeColor="Red" ControlToValidate="ddstates" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
</div>
<div class="col-md-12"> <center> <asp:button class="btn btn-danger" ID="btnsubmit" 
        Text="Submit" ca CausesValidation="true"
        style="background-color:purple;border:none;padding:5px;font-size:13px;border-radius:0px;margin-right:3px;" 
        runat="server" onclick="btnsubmit_Click"></asp:button><asp:button class="btn btn-danger" ID="btnreset" style="background-color:green;border:none;padding:5px;font-size:13px;border-radius:0px;" Text="Reset" runat="server"></asp:button></center></div>
</div>
</div>
</asp:Content>
