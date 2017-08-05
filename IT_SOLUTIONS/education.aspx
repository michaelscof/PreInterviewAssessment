 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="education.aspx.cs" Inherits="IT_SOLUTIONS.education" MasterPageFile="~/User_Header.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">
    <title>Education Survey</title>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
   

     <div class="col-lg-12">
                <h1 class="page-header" style="margin-top:5px" align="center">
                   Education Survey
                </h1>    
     </div>

 <!--   <asp:Panel ID="panel_header" runat="server" Width="100%" 
         BorderStyle="None" CssClass="panel-primary" Direction="LeftToRight" >

    <asp:LinkButton ID="lbttenth" runat="server" ForeColor="blue" Text="Tenth" 
            Font-Size="Large" Width="50px" onclick="lbttenth_Click" CausesValidation="false"></asp:LinkButton>

    <asp:LinkButton ID="lbttwelve" runat="server" ForeColor="blue" Text="Twelth" 
            Font-Size="Large" Width="70px" onclick="lbttwelve_Click" CausesValidation="false"></asp:LinkButton>

    <asp:LinkButton ID="lblgrad" runat="server" ForeColor="blue" Text="Graduation" 
            Font-Size="Large" Width="100px" onclick="lblgrad_Click" CausesValidation="false"></asp:LinkButton>

    <asp:LinkButton ID="lblothers" runat="server" ForeColor="blue" Text="Others" 
            Font-Size="Large" Width="50px" onclick="lblothers_Click" CausesValidation="false"></asp:LinkButton>
    </asp:Panel> -->

    <asp:MultiView ID="MultiViewedu" runat="server" ActiveViewIndex="0" EnableTheming="true" >
    <asp:View ID="viewtenth" runat="server" ViewStateMode="Enabled" >
    <div class="container">

<center><h2>Tenth Details</h2></center>
<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<form role="form">
<div class="col-md-12">
<div class="col-md-2">
<label for="">Medium of Education:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
 <asp:RadioButtonList ID="RadioButtonListmedium" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="English"></asp:ListItem>
    <asp:ListItem Text="Hindi"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorheight" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListmedium" Display="Dynamic" ></asp:RequiredFieldValidator> 
       

</div>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Exam Board:</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList class="form-control" id="ddboard" runat="server">
    <asp:ListItem>CBSE</asp:ListItem>
    <asp:ListItem>ICSE</asp:ListItem>
    <asp:ListItem>UP Board</asp:ListItem>
    <asp:ListItem>RAJASTHAN board</asp:ListItem>
    <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorboard" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="ddboard" Display="dynamic" ></asp:RequiredFieldValidator>   
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Type of study:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">      
<asp:RadioButtonList ID="RadioButtontype" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Regular"></asp:ListItem>
    <asp:ListItem Text="Part time/Open schooling"></asp:ListItem>
    </asp:RadioButtonList> 
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtontype" Display="dynamic" ></asp:RequiredFieldValidator >

  

</div>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Had English in class Tenth?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">       
<asp:RadioButtonList ID="RadioButtonListeng" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListeng" Display="dynamic" ></asp:RequiredFieldValidator>
      </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">percentage:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="txtepercent" placeholder="Enter your percentage in english" runat="server"></asp:Textbox>
      <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="txtepercent" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the percentage" ForeColor="Red" ControlToValidate="txtepercent" Display="dynamic" ></asp:RequiredFieldValidator>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Had Maths in class Tenth?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
  <asp:RadioButtonList ID="RadioButtonListmath" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="txtepercent" Display="dynamic" ></asp:RequiredFieldValidator>
      </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">percentage:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="Txtmpercent" placeholder="Enter your percentage in Maths" runat="server"></asp:Textbox>
      <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="Txtmpercent" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the percentage" ForeColor="Red" ControlToValidate="Txtmpercent" Display="dynamic" ></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">School Pincode:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="Txtpin" placeholder="Enter the pincode" runat="server" MaxLength="6"></asp:Textbox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorpin" runat="server" ErrorMessage="Enter the Pin" ForeColor="Red" ControlToValidate="Txtpin" Display="dynamic" ></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidatorpinpre" runat="server" ErrorMessage="Value entered is incorrect" Display="Dynamic"  MinimumValue="100000" MaximumValue="999999" ControlToValidate="Txtpin" ForeColor="Red" Type="Integer"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div>
</div>
</div>
      
</div>
 <center><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="blue" Text="Next" 
            Font-Size="Large" Width="70px" onclick="lbttwelve_Click" CausesValidation="true"></asp:LinkButton></center>
    </asp:View>

    <asp:View ID="viewtwelve" runat="server" ViewStateMode="Enabled" >
     <div class="container">

<center><h2>Twelth Details</h2></center>
<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<div class="col-md-12">
<div class="col-md-2">
<label for="">Medium of Education:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
  <asp:RadioButtonList ID="RadioButtonListmedium12" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="English"></asp:ListItem>
    <asp:ListItem Text="Hindi"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListmedium12" Display="dynamic" ></asp:RequiredFieldValidator> 
       </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Exam Board:</label>
</div>
<div class="col-md-5">
    
<asp:DropDownList class="form-control" id="ddboard12" runat="server">
<asp:ListItem>CBSE</asp:ListItem>
    <asp:ListItem>ICSE</asp:ListItem>
    <asp:ListItem>UP Board</asp:ListItem>
    <asp:ListItem>RAJASTHAN board</asp:ListItem>
    <asp:ListItem></asp:ListItem>
</asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="ddboard12" Display="dynamic" ></asp:RequiredFieldValidator> 
</div>
<div class="col-lg-5"></div></div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Type of study:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">      
<asp:RadioButtonList ID="RadioButtonListtype12" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Regular"></asp:ListItem>
    <asp:ListItem Text="Part time/Open schooling"></asp:ListItem>
    </asp:RadioButtonList>  
   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListtype12" Display="dynamic" ></asp:RequiredFieldValidator> 
  
  </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Had English in class Twelth?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
 <asp:RadioButtonList ID="RadioButtonListeng12" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListeng12" Display="dynamic" ></asp:RequiredFieldValidator> 
  </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">percentage:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="txtpereng" placeholder="Enter your percentage in english" runat="server"></asp:Textbox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpereng" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter the Percentage" ForeColor="Red" ControlToValidate="txtpereng" Display="dynamic" ></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Had Maths in class Twelth?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">    
  <asp:RadioButtonList ID="RadioButtonListmath12" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListmath12" Display="dynamic" ></asp:RequiredFieldValidator>
  </div>

</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:10px;">
<div class="col-md-2">
<label for="">percentage:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="txtpermath" placeholder="Enter your percentage in Maths" runat="server"></asp:Textbox>
       <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpermath" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter the Percentage" ForeColor="Red" ControlToValidate="txtpermath" Display="dynamic" ></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">School Pincode:</label>
</div>
<div class="col-md-5">
 <asp:Textbox class="form-control" id="schoolpin12" placeholder="Enter the pincode" runat="server"></asp:Textbox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter the Pin" ForeColor="Red" ControlToValidate="schoolpin12" Display="dynamic" ></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Value entered is incorrect" Display="Dynamic"  MinimumValue="100000" MaximumValue="999999" ControlToValidate="schoolpin12" ForeColor="Red" Type="Integer"></asp:RangeValidator>
</div>
<div class="col-lg-5"></div>
</div>
</div>
       
</div>
<center><asp:LinkButton ID="LinkButton2" runat="server" ForeColor="blue" Text="Next" 
            Font-Size="Large" Width="100px" onclick="lblgrad_Click" CausesValidation="true"></asp:LinkButton></center>
    </asp:View>

     <asp:View ID="viewgrad" runat="server" ViewStateMode="Enabled" >
      <div class="container">

<center><h2>Graduation Details</h2></center>
<div class="col-md-12" style="border:0px;padding:0px;padding:
bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">
<div class="col-md-12">
<div class="col-md-2">
<label for="">Aggregate marks in percentage:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="aggregate" placeholder="Enter your aggreagate percentage" runat="server"></asp:Textbox>
        <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="aggregate" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter the percentage" ForeColor="Red" ControlToValidate="aggregate" Display="dynamic" ></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12">
<div class="col-md-2">
<label for="">Medium of Education:</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
  <asp:RadioButtonList ID="RadioButtonListmediumgrad" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="English"></asp:ListItem>
    <asp:ListItem Text="Hindi"></asp:ListItem>
    </asp:RadioButtonList> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListmediumgrad" Display="dynamic" ></asp:RequiredFieldValidator>
  </div>

</div>
<div class="col-lg-5"></div>
</div>
<div class="col-md-12" style="padding-top:20px;" >
<div class="col-md-2">
<label for="">Annual fees:</label>
</div>
<div class="col-md-5">
     <asp:Textbox class="form-control" id="Txtannual" placeholder="Enter your annual fee(in rs)" runat="server"></asp:Textbox>
 <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red" ControlToValidate="Txtannual" MaximumValue="99999999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter the fees" ForeColor="Red" ControlToValidate="Txtannual" Display="dynamic" ></asp:RequiredFieldValidator>
</div>
<div class="col-lg-5"></div>
</div>

<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Have you taken any educational loan</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">     
 <asp:RadioButtonList ID="RadioButtonListloan" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorloan" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListloan" Display="dynamic" ></asp:RequiredFieldValidator>

  </div>

</div>
<div class="col-lg-5"></div>
</div>


<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Did/Do you work part time</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">    
  <asp:RadioButtonList ID="RadioButtonListpart" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList> 
  <asp:RequiredFieldValidator ID="RequiredFieldValidatorpart" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="RadioButtonListpart" Display="dynamic" ></asp:RequiredFieldValidator>

  </div>

</div>
<div class="col-lg-5"></div>
</div>     
</div>
</div>
 <center><asp:LinkButton ID="LinkButton3" runat="server" ForeColor="blue" Text="Next" 
            Font-Size="Large" Width="50px" onclick="lblothers_Click" CausesValidation="true"></asp:LinkButton></center>
    </asp:View>

     <asp:View ID="viewothers" runat="server" ViewStateMode="Enabled" >
      <div class="container">

<center><h2>Other Details</h2></center>
<div class="col-md-12" style="border:0px;padding:0px;padding-bottom:10px;margin-top:50px;margin-left:200px;margin-right:-100px;">

    <div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Which programming languages do you know:</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddlanguages" runat="server" >
         
        <asp:ListItem Value="-1">Select Languages</asp:ListItem>
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>C++</asp:ListItem>
        <asp:ListItem>JAVA</asp:ListItem>
        <asp:ListItem>Web Designing</asp:ListItem>
        <asp:ListItem>ASP.NET</asp:ListItem>
        <asp:ListItem>PHP</asp:ListItem>
        <asp:ListItem>Visual Basic</asp:ListItem>
        <asp:ListItem>Javascript</asp:ListItem>
        <asp:ListItem>COBOL</asp:ListItem>
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="Btnadd" runat="server" Text="+" 
       CausesValidation="false" BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
            onclick="Btnadd_Click">
        </asp:Button>
    <asp:Button ID="Btnremove" runat="server" Text="-" BackColor="#3333FF" 
      CausesValidation="false" ForeColor="White" BorderStyle="None" onclick="Btnremove_Click">
       </asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="languages" runat="server" Visible="True" style="padding-top:10px" SelectionMode="Multiple" Width="200px" >
    </asp:ListBox>
  <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidatorlang" runat="server" ErrorMessage="List cannot be empty" ForeColor="Red" ControlToValidate="languages" Display="dynamic" ></asp:RequiredFieldValidator> -->

    </div></div>
</div>
<div class="col-lg-5"></div></div>

 <div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Most interesting subjects:</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddmsubjects" runat="server">
          
        <asp:ListItem Value="-1">Select Subjects</asp:ListItem>
        <asp:ListItem>Maths</asp:ListItem>
        <asp:ListItem>Physics</asp:ListItem>
        <asp:ListItem>Computer</asp:ListItem>
        <asp:ListItem>Chemistry</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Hindi</asp:ListItem>
        <asp:ListItem>Biology</asp:ListItem>
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="Btnaddm" runat="server" Text="+" CausesValidation="false"
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" 
            onclick="Btnaddm_Click">
        </asp:Button>
    <asp:Button ID="Btnremovem" runat="server" Text="-" CausesValidation="false"
    BackColor="#3333FF"  ForeColor="White" BorderStyle="None" 
            onclick="Btnremovem_Click" >
    </asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="Msubjects" runat="server" Visible="True" style="padding-top:10px" SelectionMode="Multiple" Width="200px" >
    </asp:ListBox>
  <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidatormsub" runat="server" ErrorMessage="List cannot be empty" ForeColor="Red" ControlToValidate="Msubjects" Display="dynamic" ></asp:RequiredFieldValidator> -->

    </div></div>
</div>
<div class="col-lg-5"></div></div>

 <div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">Least interesting subjects:</label>
</div>
<div class="col-md-5">
    <asp:DropDownList CssClass="form-control" ID="ddlsubjects" runat="server" > 
        
        <asp:ListItem Value="-1">Select Subjects</asp:ListItem>
        <asp:ListItem>Maths</asp:ListItem>
        <asp:ListItem>Physics</asp:ListItem>
        <asp:ListItem>Chemistry</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Hindi</asp:ListItem>
        <asp:ListItem>Biology</asp:ListItem>
    </asp:DropDownList>  
    <div class="col-md-12" style="padding-top:10px"><center>
    <asp:Button ID="btnaddl" runat="server" Text="+"  
        BackColor="#3333FF" BorderStyle="None" ForeColor="White" CausesValidation="false"
            onclick="btnaddl_Click">
        </asp:Button>
    <asp:Button ID="btnremovel" runat="server" Text="-" BackColor="#3333FF" CausesValidation="false"
         ForeColor="White" BorderStyle="None" onclick="btnremovel_Click">
         </asp:Button>
        </center></div>
    <div class="col-lg-12";><div class="col-lg-2"></div>
       <div class="col-lg-5">
    <asp:ListBox ID="lsubjects" runat="server" Visible="True" style="padding-top:10px" SelectionMode="Multiple" Width="200px" >
    </asp:ListBox>
  <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidatorlsub" runat="server" ErrorMessage="List cannot be empty" ForeColor="Red" ControlToValidate="lsubjects" Display="dynamic" ></asp:RequiredFieldValidator> -->

    </div></div>
</div>
<div class="col-lg-5"></div></div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">In the list,what are the top three colleges in your opinion?</label>
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="ddlist1" runat="server"> 
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidatoropt1" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="ddlist1" Display="dynamic" ></asp:RequiredFieldValidator>
 
</div>
</div>
<div class="col-md-12" style="padding-top:0px;">
<div class="col-md-2">
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="ddlist2" runat="server"> 
</asp:DropDownList> 
<asp:RequiredFieldValidator ID="RequiredFieldValidatoropt2" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="ddlist2" Display="dynamic" ></asp:RequiredFieldValidator>

</div>
</div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="ddlist3" runat="server"> 
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidatoropt3" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="ddlist3" Display="dynamic" ></asp:RequiredFieldValidator>
 
</div>
</div>
<div class="col-md-12" style="padding-top:20px;">
<div class="col-md-2">
<label for="">What are you currently doing?</label>
</div>
<div class="col-md-5">
<asp:DropDownList CssClass="form-control" ID="current" runat="server"> 

    <asp:ListItem>Graduation</asp:ListItem>
    <asp:ListItem>Post Graduation</asp:ListItem>
    <asp:ListItem>Working</asp:ListItem>

</asp:DropDownList> 
<asp:RequiredFieldValidator ID="RequiredFieldValidatorcurrent" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="current" Display="dynamic" ></asp:RequiredFieldValidator>

</div>
</div>
<div class="col-md-12">
<div class="col-md-2">
<label for="">Do you have a teaching experience?</label>
</div>
<div class="col-md-5">
    
<div class="form-control"  style="float:left;">    
  <asp:RadioButtonList ID="teaching" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Yes"></asp:ListItem>
    <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorteach" runat="server" ErrorMessage="select one option" ForeColor="Red" ControlToValidate="teaching" Display="dynamic" ></asp:RequiredFieldValidator>
 
 
  </div>

</div>
<div class="col-lg-5"></div>
</div>

</div>
 <div class="col-md-12"> <center>
           <asp:button id="btnsubmit" class="btn btn-danger" CausesValidation="true"
               style="background-color:purple;border:none;padding:10px;font-size:13px;border-radius:0px;margin-right:3px;"  
               runat="server" Text="Submit" onclick="btnsubmit_Click"></asp:button>
   
           <asp:button ID="btnreset" class="btn btn-danger"  
               style="background-color:green;border:none;padding:10px;font-size:13px;border-radius:0px;" 
               runat="server" Text="Reset" onclick="btnreset_Click" ></asp:button></center></div>
 <center><asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" HeaderText="Validation errors" runat="server" ShowMessageBox="True" /></center>
 </div>
    </asp:View>
    </asp:MultiView>
   
  


 
</asp:Content>
