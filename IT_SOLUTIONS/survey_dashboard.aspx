<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="survey_dashboard.aspx.cs" Inherits="IT_SOLUTIONS.user_dashboard" MasterPageFile="~/User_Header.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Linking" runat="server">

    <title>Survey Dashboard</title>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" runat="server">
   
    <div class="container">
<div class="col-md-12" style="border:1px solid grey;padding:0px;padding-bottom:10px;margin-top:100px;box-shadow:0px 5px 5px rgb(200,200,200);">
<div class="col-md-12" style="background-color:black;color:#FFFFFF;padding:6px;font-size:15px;" >Dashboard
</div>
             <div class="row" style="margin:50px 0px 0px 10px">
             <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-primary" ID="Personal" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-user fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">20 Reward Points</div>
                                        <div class="h3">Personal</div>
                                        <asp:Label ID="lblpersonal" runat="server" Text="0"></asp:Label>  
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="personal_sur" 
                                onclick="personal_sur_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-red" ID="PanelFamily" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-home fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">10 Reward Points</div>
                                        <div class="h3">Family</div>
                                         <asp:Label ID="lblfamily" runat="server" Text="0"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="family_sur" 
                                onclick="family_sur_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                     
                     <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-green" ID="Paneledu" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-education fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">30 Reward Points</div>
                                        <div class="h3">Education</div>
                                         <asp:Label ID="lbledu" runat="server" Text="0"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="education_sur" 
                                onclick="education_sur_Click">
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    </div>

                     <div class="row" style="margin:10px 0px 0px 10px">
             <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-purple" ID="Panel1" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-book fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">20 Reward Points</div>
                                        <div class="h3">Career Aspiration</div>
                                         <asp:Label ID="Lblcareer" runat="server" Text="0"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="lbcar" onclick="lbcareer_Click" 
                                >
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-yellow" ID="Panel2" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-futbol-o fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">10 Reward Points</div>
                                        <div class="h3">Extra Curricular</div>
                                         <asp:Label ID="Lblcur" runat="server" Text="0"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="lbextra" onclick="lbextra_Click" >
                                
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>

                     <div class="col-lg-4 col-md-6">
                        <asp:Panel cssclass="panel panel-orange" ID="Panel3" runat="server">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="glyphicon glyphicon-globe fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                      <div class=" h5">30 Reward Points</div>
                                        <div class="h3">Locality</div>
                                         <asp:Label ID="lbllocality" runat="server" Text="0"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton runat="server" ID="locality" onclick="locality_Click" >
                                
                                <div class="panel-footer">
                                    <span class="pull-left">Fill Survey</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </asp:LinkButton>
                        </asp:Panel>
                    </div>
                    </div>
                    <p style="color:orange;">Note:Surveys once filled cannot be modified.Please fill the data carefully.</p>
</div>
</div>


</asp:Content>
