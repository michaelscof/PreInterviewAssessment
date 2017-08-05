<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="IT_SOLUTIONS.career" MasterPageFile="~/User_Header.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
<title>Carrer Aspiration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
   <div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px;box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >Career Aspiration</div>

<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<form role="form">
<div class="col-md-12">
<div class="col-md-2">
<label for="">In your opinion,what is the singlemost aspect of ITS job:</label>
</div>
<div class="col-md-5">
    
 <asp:DropDownList class="form-control" id="ddaspect" runat="server">
    <asp:ListItem Value="-1">select one option</asp:ListItem>
    <asp:ListItem>Brand name</asp:ListItem>
    <asp:ListItem>Salary Package</asp:ListItem>
    <asp:ListItem>Infrastructure</asp:ListItem>
    <asp:ListItem>Ambience</asp:ListItem>
    <asp:ListItem>Nature of job</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorddaspect" runat="server" 

ErrorMessage="Select atleast one category" ControlToValidate="ddaspect" 

Display="Dynamic" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>



</div>
<div class="col-lg-5"></div>
</div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Do you want to work Abroad?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">
      <asp:RadioButtonList ID="RadioButtonListabroad" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem> 
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorabroad" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListabroad" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>


</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Which sector do you most aspire to work in:</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList class="form-control" id="ddsector" runat="server">
    <asp:ListItem Value="-1">select option</asp:ListItem>
    <asp:ListItem>IT</asp:ListItem>
    <asp:ListItem>BPO</asp:ListItem>
    <asp:ListItem>Management</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcomboincome" runat="server" ErrorMessage="Select atleast one category" ControlToValidate="ddsector" Display="Dynamic" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-lg-2">
<label for="">Which of these IT roles would you like to work in</label>
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="ddrules" runat="server" 
        onselectedindexchanged="ddrules_SelectedIndexChanged1">
    <asp:ListItem>Developer</asp:ListItem>
    <asp:ListItem>UI Designer</asp:ListItem>
    <asp:ListItem>Tester</asp:ListItem>
    <asp:ListItem>System Analyst</asp:ListItem>

</asp:DropDownList>
</div>
</div>
 <div class="col-md-12">
 <div class="col-lg-4"></div>
 <div class="col-lg-2">
    <asp:Button ID="btnadd" runat="server" Text="+" CausesValidation="false" 
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" onclick="btnadd_Click" 
            ></asp:Button>
    <asp:Button ID="btnremove" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremove_Click"></asp:Button></div></div>
<div class="col-lg-12">
<div class="col-lg-2">
</div>
<div class="col-md-5">
    <asp:ListBox CssClass="form-control" ID="itrules"  runat="server" 
        SelectionMode="Multiple">
        
    </asp:ListBox>
</div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatoritrules" runat="server" ErrorMessage="Select some value" ForeColor="Red" ControlToValidate="ddrules" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>


<div class="col-md-12" style="padding-top:10px;">
<div class="col-lg-2">
<label for="">Which companies would you like to work for?</label>
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="ddcompanies" runat="server" >
        
    <asp:ListItem>Infosys</asp:ListItem>
    <asp:ListItem>Wipro</asp:ListItem>
    <asp:ListItem>HCL</asp:ListItem>
    
    </asp:DropDownList>
</div>
</div>
 <div class="col-md-12">
 <div class="col-lg-4"></div>
 <div class="col-lg-2">
    <asp:Button ID="btnadd2" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
         onclick="btnadd2_Click">
            </asp:Button>
    <asp:Button ID="btnremove2" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremove2_Click"></asp:Button></div></div>
<div class="col-lg-12">
<div class="col-lg-2">
</div>
<div class="col-md-5">
    <asp:ListBox CssClass="form-control" ID="companies"  runat="server" 
        SelectionMode="Multiple">
        
    </asp:ListBox>
</div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcompany" runat="server" ErrorMessage="Select some value" ForeColor="Red" ControlToValidate="ddcompanies" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">Expected Salary:</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList CssClass="form-control" ID="ddsalary" runat="server" >
        
         
        <asp:ListItem Value="-1">Select Value</asp:ListItem>
        <asp:ListItem>above 2,00,000</asp:ListItem>
        <asp:ListItem>1,00,000 to 2,00,000</asp:ListItem>
        <asp:ListItem>Above 2,00,000</asp:ListItem>
    </asp:DropDownList>  
    <asp:RequiredFieldValidator ID="RequiredFieldsalary" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddsalary" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">After Graduation what would be your first preference?</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList CssClass="form-control" ID="ddfurther" runat="server" >
        
         
        <asp:ListItem Value="-1">Select Value</asp:ListItem>
        <asp:ListItem>Job</asp:ListItem>
        <asp:ListItem>Further Education</asp:ListItem>

    </asp:DropDownList>  
    <asp:RequiredFieldValidator ID="RequiredFieldfurther" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddfurther" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div></div>
</form>

</div>
<div class="col-md-12"> <center> 
    <asp:button class="btn btn-danger" ID="btnsubmit" 
        Text="Submit" 
        style="background-color:purple;border:none;padding:5px;font-size:13px;border-radius:0px;margin-right:3px;" 
        runat="server"  CausesValidation="true" onclick="btnsubmit_Click" ></asp:button>
    <asp:button class="btn btn-danger" ID="btnreset" 
        style="background-color:green;border:none;padding:5px;font-size:13px;border-radius:0px;" 
        Text="Reset" runat="server" onclick="btnreset_Click1"></asp:button></center></div>
</div>
</div>
</asp:Content>