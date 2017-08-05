<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="IT_SOLUTIONS.register" ClientIDMode="Static" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>IT Solutions-Register</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/itsoln.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</head>
<body alink="txtName">
    <form id="form2" runat="server">
    
    <asp:ScriptManager ID="scriptManager" runat="server">
    </asp:ScriptManager>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
               </div>
                <a class="navbar-brand" href="Start_Page.aspx"><i class="glyphicon glyphicon-education"></i>IT Solutions</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="p" href="User_Login.aspx">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="margin-top:5px" align="center">
                   Registration
                </h1>
                 <p style="font-size=40px" align="left" class="page-header lead">Instructions and prerequisites</p>
                 <p><ul><li>All fields are mandatory.</li></ul></p>
            </div>
            <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="register.aspx">Registration</a></li>
            <li role="presentation"><a href="User_Login.aspx">Login</a></li>
            </ul>
            <div class="col-lg-12">
            <div class="col-lg-6">
            <p class="page-header lead" align="left">Personal Details</p>
            
    <div class="form-group">
      <label class="control-label col-sm-2" for="txtName">Name</label>
      <div class="col-sm-10">
        <asp:Textbox ID="txtName" class="form-control" placeholder="Type your name here" runat="server" ></asp:Textbox>   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                    ErrorMessage="Please enter a value" ControlToValidate="txtName" 
                    Display="Dynamic" style="font-size:11px" Font-Bold="True" class="text-danger"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="gender">Gender</label>
      <div class="col-sm-10">          
          
        <div class="form-control"  style="float:left;">
      <asp:RadioButtonList ID="RadioButtonListgender" runat="server" 
        RepeatDirection="Horizontal">
    <asp:ListItem Text="Male"></asp:ListItem>
    <asp:ListItem Text="Female"></asp:ListItem> 
    </asp:RadioButtonList> 
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorgender" runat="server" ErrorMessage="Select one option" ForeColor="Red" ControlToValidate="RadioButtonListgender" Display="Dynamic"></asp:RequiredFieldValidator>
  </div>
      </div>
    </div> 
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="psva">DOB</label>
      <div class="col-sm-10">          
     <asp:Textbox class="form-control" id="txtdob" placeholder="DD/MM/YYYY"  runat="server"></asp:Textbox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatordob" runat="server" ErrorMessage="SElect your birthdate" ForeColor="Red" ControlToValidate="txtdob" Display="Dynamic"></asp:RequiredFieldValidator>
      </div>
    </div></div>
    
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
      <label class="control-label col-sm-2" for="Password1">email</label>
      <div class="col-sm-10">          
        <asp:Textbox class="form-control" id="txtemail" placeholder="enter email"  runat="server"></asp:Textbox>
          <asp:RegularExpressionValidator ID="RegularExpressionemail" runat="server" 
              ErrorMessage="email entered is not in correct format" ControlToValidate="txtemail"
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatormail" runat="server" ErrorMessage="Enter your email" ForeColor="Red" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
      </div>
    </div></div>

     <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Phone1">Mobile</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtmobile" placeholder="Enter your phone no." runat="server" MaxLength="11"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatormobile" runat="server" ErrorMessage="Enter the phone number" ForeColor="Red" ControlToValidate="txtmobile" Display="Dynamic"></asp:RequiredFieldValidator>

    </div>
    </div></div>

    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Pass1">Password</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtPassword" type="password" placeholder="Enter your password" runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
     
      </div>
    </div>
    </div>

     <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Pass2">Confirm Password</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtconfirmpassword" type="password" placeholder="confirm password" runat="server"></asp:Textbox>
    <asp:CompareValidator ID="CompareValidatortxtcpassword" runat="server" ControlToValidate="txtconfirmpassword" ForeColor="Red" ControlToCompare="txtPassword" Operator="Equal" Type="String" ErrorMessage="Password not matched"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassw" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="txtconfirmpassword" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    </div>
    </div>


      </div></div>

      <div class="col-lg-6">
                <p class="page-header lead" align="left">
                    College Details      
                  <div class="col-lg-12" >
    <div class="form-group" >
    <label class="control-label col-sm-2" for="college">College</label>
    <div class="col-sm-10">          
    <div ><asp:DropDownList ID="ddcollege" name="ddcollege" class="form-control"  style="float:left;" runat="server">
    <asp:ListItem Text="select college" Value="-1"></asp:ListItem>
    </asp:DropDownList></div></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcollege" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddcollege" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>


    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Discipline">Discipline</label>
    <div class="col-sm-10">          
    <div ><asp:DropDownList ID="dddiscipline" name="menu1" class="form-control"  style="float:left;" runat="server" >
           
    </asp:DropDownList></div></div></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatordisc" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="dddiscipline" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
        
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Major">Major</label>
    <div class="col-sm-10">          
    <div ><asp:DropDownList ID="ddmajor" name="menu1" class="form-control"  style="float:left;" runat="server" >
    </asp:DropDownList></div></div></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatormajor" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddmajor" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
        
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="Degree">Degree</label>
    <div class="col-sm-10">          
    <div ></div><asp:DropDownList ID="dddegree" name="menu1" class="form-control"  style="float:left;" runat="server" >
    </asp:DropDownList></div></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatordegree" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="dddegree" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>    
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="yos">Year of Starting</label>
    <div class="col-sm-10">  
    <div ></div>
    <asp:DropDownList ID="ddgradyos" name="menu1" class="form-control"  style="float:left;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddgradyos_SelectedIndexChanged"  ></asp:DropDownList>
    </div></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatoryos" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddgradyos" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
    <div class="col-lg-12" style="padding:10px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="yoc">Year of Passing</label>
    <div class="col-sm-10"> 
    <div ></div>    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"> 
    <ContentTemplate>    
    <asp:DropDownList ID="ddgradyoc" name="menu1" class="form-control"  style="float:left;" runat="server"></asp:DropDownList>
    </ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID="ddgradyoc" EventName="SelectedIndexChanged" />
    </Triggers>
    </asp:UpdatePanel>
      
    <asp:RequiredFieldValidator ID="RequiredFieldValidatoryoc" runat="server" ErrorMessage="Select one value" ForeColor="Red" ControlToValidate="ddgradyoc" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
    </div></div></div>
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="percent">Percentage</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="Txtpercent" placeholder="Enter your percentage" runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorperc" runat="server" ErrorMessage="Enter your percentage" ForeColor="Red" ControlToValidate="Txtpercent" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorpercent" Type="Integer" runat="server" ErrorMessage="Incorrect value" ForeColor="red" MinimumValue="0" MaximumValue="100" ControlToValidate="Txtpercent" display="Dynamic"></asp:RangeValidator>
    </div>
    </div></div>
    </div>
    </div>
    <div class="col-lg-12">
    <div class="col-lg-6">
    <p class="page-header lead" align="left">10th Details</p> 
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="yopten">Year of passing</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txttenyop"  runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldyopten" runat="server" ErrorMessage="Enter the passing year" ForeColor="Red" ControlToValidate="txttenyop" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatortenyop" runat="server" ErrorMessage="Incorrect value" Type="Integer" Display="Dynamic" MinimumValue="2009" MaximumValue="2016" ControlToValidate="txttenyop"></asp:RangeValidator> 
    </div>
    </div></div>

    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="percentten">Percentage</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txttenpercent" placeholder="Enter your percentage" runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldtenper" runat="server" ErrorMessage="Enter the passing percentage" ForeColor="Red" ControlToValidate="txttenpercent" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator10per" runat="server" ErrorMessage="Incorrect value" Type="Integer" Display="Dynamic" MinimumValue="0" MaximumValue="100" ControlToValidate="txttenpercent"></asp:RangeValidator>
    </div>
    </div></div>

    </div>
      
    <div class="col-lg-6">
    <p class="page-header lead" align="left">
    12th Details
    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="yoptwelve">Year of passing</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtinteryop"  runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldintyop" runat="server" ErrorMessage="Enter the passing year" ForeColor="Red" ControlToValidate="txtinteryop" Display="Dynamic"></asp:RequiredFieldValidator>
   
    </div>
    </div></div>

    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="percenttwelve">Percentage</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtinterpercent" placeholder="Enter your percentage" runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldintper" runat="server" ErrorMessage="Enter the percentage" ForeColor="Red" ControlToValidate="txtinterpercent" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorintper" runat="server" ErrorMessage="Incorrect value" Type="Integer" MinimumValue="0" MaximumValue="100" ControlToValidate="txtinterpercent"></asp:RangeValidator>

    </div>
    </div></div>

    </div>
      
    <div class="col-lg-12">
                <p class="page-header lead" align="left">
                    Security
                    </div>
    <div class="col-lg-12">
    <div class="col-lg-6">             
    <div class="form-group">
    <label class="control-label col-sm-2" for="yoc">Security question</label>
    <div class="col-sm-10">          
    <div ></div><asp:DropDownList ID="ddquestion" class="form-control"  style="float:left;" runat="server" >
    </asp:DropDownList></div></div>
    <asp:RequiredFieldValidator ID="RequiredFieldques" runat="server" ErrorMessage="select one question" ForeColor="Red" ControlToValidate="ddquestion" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>

    <div class="col-lg-12" style="padding:20px 0px 0px 0px;">
    <div class="form-group" >
    <label class="control-label col-sm-2" for="percenttwelve">Answer</label>
    <div class="col-sm-10">          
    <asp:Textbox class="form-control" id="txtanswer" placeholder="Type your answer of the question here" runat="server"></asp:Textbox>
    <asp:RequiredFieldValidator ID="RequiredFieldans" runat="server" ErrorMessage="Enter the answer" ForeColor="Red" ControlToValidate="txtanswer" Display="Dynamic"></asp:RequiredFieldValidator>

    </div>
    </div></div>
    </div>

         
    </div>
      
    
    </div>
      
    <div class="col-lg-12">   
    <div class="col-lg-6">
            <p class="page-header lead" align="left">User Image</p>
            <label class="control-label col-sm-2" for="profile">Profile Image</label>
      <div class="col-sm-10">  
      <div><asp:FileUpload ID="fileuploadimage" class="form-control" style="float:left;" runat="server" text="Upload" onclick="UploadButton_Click" ></asp:FileUpload>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorpic" runat="server" ErrorMessage="upload your picture" ForeColor="Red" ControlToValidate="fileuploadimage" Display="Dynamic"></asp:RequiredFieldValidator>
      <asp:Label ID="StatusLabel" runat="server" Text="upload status"></asp:Label>
      </div>
      </div>      
      </div>

             <div class="col-lg-6">
                <p class="page-header lead" align="left">
                    Interview Location
                    <div><asp:DropDownList ID="location" name="menu2" class="form-control"  style="float:left;" runat="server" >
                        </asp:DropDownList></div>
      <asp:RequiredFieldValidator ID="RequiredFieldlocation" runat="server" ErrorMessage="select location" ForeColor="Red" ControlToValidate="location" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>

             </div> 
             </div>
             </div>
               <div><center><asp:Button ID="Btnsubmit" runat="server" CausesValidation="true" 
                       Text="Submit" onclick="Btnsubmit_Click" style="background-color:purple;border:none;padding:5px;font-size:13px" ForeColor="White"></asp:Button></center>
                     </div> 

        </form>
        
       
  
             
       
</body>
</html>
 