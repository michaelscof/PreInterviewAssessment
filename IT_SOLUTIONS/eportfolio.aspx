<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eportfolio.aspx.cs" Inherits="IT_SOLUTIONS.eportfolio" MasterPageFile="~/User_Header.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">

    <title>E-Portfolio</title>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
   
   <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="margin-top:5px" align="center">
                  My E-Portfolio
                </h1>    
            </div></div></div>
  <!--<body style="background-image:url(/project pics/location2.jpg)">        -->
 <div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px; margin-right:100px; box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >Portfolio
</div>
<div class="container">
<div class="col-lg-2" style="border:0px solid grey;padding:0px;padding-bottom:10px;margin-top:50px; margin-right:50px; ">
   
         <asp:Panel  ID="Personal" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading">
                            </div>
                  <center>
                      <asp:LinkButton ID="about" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="about_Click"  >  
                                <center><i class="fa fa-user fa-3x"></i></center>
                                <asp:Label runat="server">About Me</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>
                        
    <asp:Panel  ID="Panel1" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading">
                            </div>
                  <center>
                      <asp:LinkButton ID="locality" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="locality_Click"  >  
                                <center><i class="glyphicon glyphicon-globe fa-3x"></i></center>
                                <asp:Label ID="Label1" runat="server">Locality</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>
                        
       <asp:Panel  ID="Panel2" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading">
                            </div>
                  <center>
                      <asp:LinkButton ID="family" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="family_Click"   >  
                                <center><i class="fa fa-female fa-3x"></i></center>
                                <asp:Label ID="Label2" runat="server">Family</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>
                        
        <asp:Panel ID="Panel3" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading"> 
                            </div>
                  <center>
                      <asp:LinkButton ID="career" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="career_Click" >  
                                <center><i class="glyphicon glyphicon-education fa-2x" style="Margin-top:0px;" ></i></center>
                                <asp:Label ID="Label3" runat="server">Career Aspiration</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>
         <asp:Panel  ID="Panel4" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading">
                            </div>
                  <center>
                      <asp:LinkButton ID="academics" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="academics_Click" >  
                                <center><i class="fa fa-book fa-3x"></i></center>
                                <asp:Label ID="Label4" runat="server">Academics</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>

        <asp:Panel  ID="Panel5" runat="server" Height="100px" Width="150px" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <div class="panel-heading">
                            </div>
                  <center>
                      <asp:LinkButton ID="extra" runat="server" BackColor="White" 
                                BorderStyle="None" CausesValidation="False" ForeColor="Black" 
                          Width="100px" Height="50px" onclick="extra_Click"  >  
                                <center><i class="fa fa-futbol-o fa-3x"></i></center>
                                <asp:Label ID="Label5" runat="server">Extra-Curricular</asp:Label>
                                </asp:LinkButton></center>
                        </asp:Panel>
</div>
    <asp:MultiView ID="MultiViewfolio" runat="server" ActiveViewIndex="0" EnableTheming="true"  >
<asp:View ID="foliopersonal" runat="server" ViewStateMode="Enabled" >
<div class="container">
<div class="col-md-8" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                  About Me
                </h1> 

 
                        <h3 class="page-header" style="margin-top:5px; margin-left:15px;" align="left">
                  Basic Details
                </h3> 
                        <div class="col-lg-12" style="padding-top:10px; padding-bottom:10px; margin-left:5px;" >
                            <table class="table table-bordered table-hover table-responsive table-condensed table-striped" >
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="landline" Width="130px" Text="Landline Number"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lbllandline" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblpancard" Width="130px" Text="Pancard"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="Lblpan" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lblaccount" Width="130px" Text="Bank Account"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblbank" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lbladhaarcard" Width="130px" Text="Adhaar Card"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="Lbladhaar" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lbllicence" Width="130px" Text="Driving Licence"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lbldriving" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lblvoter" Width="130px" Text="Voter Id"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblvoterid" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lblpass" Width="130px" Text="Passport"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblpassport" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="Lblh" Width="130px" Text="Height"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblheight" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="Lblw" Width="130px" Text="Weight"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblweight" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                             <tr>
                            <td>
                             <b><asp:Label runat="server" ID="lblspecs" Width="130px" Text="Spectacles"></asp:Label></b>
                            </td>
                            <td>
                            <asp:Label runat="server" ID="lblspectacles" CssClass="glyphicon" Width="130px"></asp:Label>
                            </td>
                            </tr>

                          
                            
                            
                            </table>
                        </div>

</div>
</div>



</asp:View>    
<asp:View ID="foliolocality" runat="server">
<div class="container">
<div class="col-md-8" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                  Locality Details
                </h1> 

                <div class="container">
                
                <div class="col-lg-12" style="padding-bottom:20px;"> 
                
                <div class="col-lg-3" style="border:0px;padding-top:20px;margin-left:40px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-40px">
                    <asp:Image ID="imglocality" BackColor="Green"
                        class="img-circle" runat="server" Height="80px" Width="80px" 
                        ImageUrl="~/project pics/location2.jpg" />
                         </div></center>
                <center><h3>PRESENT</h3></center>
                <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="prestate" Width="130px" Height="15px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="predistrict" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="precity" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="prelocality" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="prepin" Width="130px" Height="15px"></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                

                 <div class="container">
                <div class="col-lg-3" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-40px">
                    <asp:Image ID="Image1" BackColor="Green" 
                        class="img-circle" runat="server" Height="80px" Width="80px" 
                        ImageUrl="~/project pics/location2.jpg" /> </div></center>
                <center><h3>PERMANENT</h3></center>
                  <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="perstate" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="perdistrict" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="percity" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="perlocality" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="perpin" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                </div>
                </div>
                </div>
                </div>
                </div>

</asp:View> 

<asp:View ViewStateMode="Enabled" ID="viewfamily" runat="server">
<div class="container">
<div class="col-md-8" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                  Family
                </h1> 

                <div class="container">
                <div class="col-lg-12" style="padding-bottom:20px;">
               
                <div class="col-lg-3" style="border:0px;padding-top:20px;margin-left:40px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                    <center><div class="img-circle" style="margin-top:-50px;padding-bottom:10px">
                    <asp:Image ID="Image2" BackColor="Green" 
                        class="img-circle" runat="server" Height="80px" Width="80px" 
                            ImageUrl="~/project pics/father2.jpg" > </asp:Image>  </div></center>
                        <center><h3>FATHER</h3></center>
                <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgname" Width="25px"><i class="fa fa-user fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblfname" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgage" Width="25px"><i class="fa fa-birthday-cake fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblfage" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgqual" Width="25px"><i class="glyphicon glyphicon-education fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblfqual" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                             <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgoccupation" Width="25px"><i class=" glyphicon glyphicon-briefcase fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblfoccupation" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                

                 <div class="container">
                <div class="col-lg-3" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                    <center><div class="img-circle" style="margin-top:-70px;padding-bottom:10px">
                    <asp:Image ID="Image3" BackColor="Green" 
                        class="img-circle" runat="server" Height="100px" Width="100px" 
                            ImageUrl="~/project pics/mother3.jpg" /> </div></center>
                        <center><h3>MOTHER</h3></center>
               <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgmname" Width="25px"><i class="fa fa-user fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblmname" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgmage" Width="25px"><i class="fa fa-birthday-cake fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblmage" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgmqual" Width="25px"><i class="glyphicon glyphicon-education fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblmqual" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                             <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblgmoccupation" Width="25px"><i class=" glyphicon glyphicon-briefcase fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b><asp:Label runat="server" ID="lblmoccupation" Width="100px"></asp:Label></b>
                            </td>
                            </tr>
                            </table>
                </div> 
                </div>
                </div>
                </div>
                </div>
                </div>
</asp:View>

<asp:View ViewStateMode="Enabled" runat="server">
<div class="container">
<div class="col-md-8" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                Career Aspiration
                </h1> 
  <div class="col-lg-12" style="padding-top:10px; padding-bottom:10px; margin-left:5px;" >
                            <table class="table table-bordered table-hover table-responsive table-condensed table-striped" >
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblasp" Width="65px" Text="Why Its?"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="lblaspect"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblab" Width="150px" Text="Want to work Abroad?"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="lblabroad"></asp:Label></b>

                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblsector" Width="130px" Text="Preferred Sectors:"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="lblsectors"></asp:Label></b>

                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblrole" Width="130px" Text="Preferred IT roles:"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="lblroles"></asp:Label></b>

                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="lblcompany" Width="130px" Text="Dream Companies:"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="lblcompanies" ></asp:Label></b>

                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="salary" Width="130px" Text="Expected Salary?"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="esalary" ></asp:Label></b>

                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b><asp:Label runat="server" ID="preferrence" Width="230px" Text="First preferrence after graduation:"></asp:Label></b>
                            <b><asp:Label CssClass="label label-primary" runat="server" ID="fpreferrence"></asp:Label></b>

                            </td>
                            </tr>
                            </table>

</div>
</div>
</div>
</asp:View>

<asp:View runat="server" ID="vieweducation" ViewStateMode="Enabled">
<div class="container">
<div class="col-md-9" style="border:0px;padding-top:20px;margin-left:0px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                Academics
                </h1> 
                
                <div class="container">
                
                <div class="col-lg-12" style="padding-bottom:20px;"> 
                
                <div class="col-lg-4" style="border:0px;padding-top:20px;margin-left:0px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-60px">
                    <asp:Image ID="Image4" BackColor="Green"
                        class="img-circle" runat="server" Height="100px" Width="100px" 
                        ImageUrl="~/project pics/edu.jpg" /> </div></center>
                <center><h3>HIGH SCHOOL</h3></center>
                <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b>Medium:</b>
                            <b><asp:Label runat="server" ID="lblmedium10" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Board:</b>
                            <b><asp:Label runat="server" ID="lblboard10" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Type of study:</b>
                            <b><asp:Label runat="server" ID="lbltype10" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>English percentage:</b>
                            <b><asp:Label runat="server" ID="lblengper"  Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Maths Percentage:</b>
                            <b><asp:Label runat="server" ID="lblmathsper"  Height="15px"></asp:Label></b>
                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b>School Pin:</b>
                            <b><asp:Label runat="server" ID="lblschoolpin10"  Height="15px"></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                

                 <div class="container">
                <div class="col-lg-4" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-60px">
                    <asp:Image ID="Image5" BackColor="Green" 
                        class="img-circle" runat="server" Height="100px" Width="100px" ImageUrl="~/project pics/edu.jpg" /> </div></center>
                <center><h3>INTERMEDIATE</h3></center>
                  <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b>Medium:</b>
                            <b><asp:Label runat="server" ID="lblmedium12"  Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Board:</b>
                            <b><asp:Label runat="server" ID="lblboard12"  Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Type of Study:</b>
                            <b><asp:Label runat="server" ID="lbltype12" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>English Percentage:</b>
                            <b><asp:Label runat="server" ID="lblengper12" Width="130px" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Maths Percentage:</b>
                            <b><asp:Label runat="server" ID="lblmathsper12" Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                             <tr>
                            <td>
                            <b>School Pin:</b>
                            <b><asp:Label runat="server" ID="lblschoolpin12"  Height="15px" ></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                </div>
                </div>
                </div>

                 <div class="container">
                
                <div class="col-lg-12" style="padding-bottom:20px;"> 
                
                <div class="col-lg-4" style="border:0px;padding-top:20px;margin-left:0px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-60px">
                    <asp:Image ID="Image6" BackColor="Green" ImageUrl="~/project pics/edu.jpg"
                        class="img-circle" runat="server" Height="100px" Width="100px" /> </div></center>
                <center><h3>GRADUATION</h3></center>
                <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b>Aggregate percentage:</b>
                            <b><asp:Label runat="server" ID="lblpergrad" Height="30px"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Medium:</b>
                            <b><asp:Label runat="server" ID="lblmediumgrad"  Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Annual Fees:</b>
                            <b><asp:Label runat="server" ID="lblfeesgrad" Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Education Loan?</b>
                            <b><asp:Label runat="server" ID="lblloan" Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Work Part Time?</b>
                            <b><asp:Label runat="server" ID="lblparttime" Height="30px"></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                

                 <div class="container">
                <div class="col-lg-4" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
                <center><div class="img-circle" style="margin-top:-60px">
                    <asp:Image ID="Image7" BackColor="Green" ImageUrl="~/project pics/edu.jpg"
                        class="img-circle" runat="server" Height="100px" Width="100px" /> </div></center>
                <center><h3>OTHERS</h3></center>
                  <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td>
                            <b>Programming Lang:</b>
                            <b><asp:Label runat="server" ID="lblprogramminglang"  Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Most Interesting subjects:</b>
                            <b><asp:Label runat="server" ID="lblmost"  Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                             <b>Least Interesting subjects:</b>
                            <b><asp:Label runat="server" ID="lblleast"  Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <b>Top 3 Colleges:</b>
                            <b><asp:Label runat="server" ID="lbltop3"  Height="35px" ></asp:Label></b>
                            </td>
                            </tr>
                        
                             <tr>
                            <td>
                            <b>Teaching Experience?</b>
                            <b><asp:Label runat="server" ID="lblteachingexp"  Height="30px" ></asp:Label></b>
                            </td>
                            </tr>
                            </table>

                </div> 
                </div>
                </div>
                </div>


</div>
</div>

</asp:View>

<asp:View runat="server" ViewStateMode="Disabled" ID="viewcurricular">
<div class="container">
<div class="col-md-8" style="border:0px;padding-top:20px;margin-left:30px;margin-right:-80px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
<h1 class="page-header" style="margin-top:5px" align="center">
                Extra Curricular
                </h1> 
                                <div class="container">
                 <div class="col-lg-12" style="padding-bottom:20px;">
               
                <div class="col-lg-7" style="border:0px;padding-top:10px;margin-left:0px; margin-top:30px; box-shadow:0px 5px 5px rgb(200,200,200);">
           
                <table class="table table-bordered table-hover table-responsive table-condensed ">
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblhobby" Width="25px"><i class="glyphicon glyphicon-earphone fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Hobbies:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblhobbies" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblsport" Width="25px"><i class="fa fa-trophy fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Sports:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblsports" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblexer" Width="25px"><i class="fa fa-futbol-o fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Exercise:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblexercise" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="Health" Width="25px"><i class="fa fa-ambulance fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Health Checkup:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblhealth"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="lblhour" Width="25px"><i class="fa fa-clock-o fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Internet Hours:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblhours" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="social" Width="25px"><i class="fa fa-skype fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Active on social networking sites?</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblsocial" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="Linkedim" Width="25px"><i class="fa fa-linkedin fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Have Linkedin Profile?</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lbllinkedin" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="movies" Width="25px"><i class="glyphicon glyphicon-eye-open fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Movies:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblmovies"></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="books" Width="25px"><i class="fa fa-book fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Books</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblbooks" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="worship" Width="25px"><i class="fa fa-bell fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Worship:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblworship" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="socialservice" Width="25px"><i class="glyphicon glyphicon-briefcase fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>Social Service:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblsocialservice" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="cocurricular" Width="25px"><i class="fa fa-futbol-o fa-2x""></i></asp:Label> 
                            </td>
                            <td>
                            <b>Active in Co-Curricular activities?</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblcocurricular" ></asp:Label></b>
                            </td>
                            </tr>
                            <tr>
                            <td style="Width:20px;">
                            <asp:Label runat="server" ID="states" Width="25px"><i class="glyphicon glyphicon-globe fa-2x"></i></asp:Label> 
                            </td>
                            <td>
                            <b>States visited:</b>
                            <b><asp:Label runat="server" CssClass="label label-danger" ID="lblstates" ></asp:Label></b>
                            </td>
                            </tr>
                 </table>
</div>
</div>
</div>
</div>
</div>
</asp:View>

</asp:MultiView>   
</div>  
</div> 
</div>  
</asp:Content>
