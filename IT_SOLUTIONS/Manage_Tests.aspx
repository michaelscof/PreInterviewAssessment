<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Tests.aspx.cs" Inherits="IT_SOLUTIONS.Manage_Tests" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Manage Tests</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/itsoln.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"  style="background-color:#000">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Admin_Dashboard.aspx"><i class="glyphicon glyphicon-home"></i> Admin-Home</a>
            </div>
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <asp:LinkButton ID="LbtnSignOut" runat="server" OnClick="LbtnSignOut_Click" CausesValidation="false"><i class="glyphicon glyphicon-off"></i>Sign Out</asp:LinkButton>
                    </li>
           </div>
           </nav>
    <div id="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <asp:LinkButton ID="LbtnManageUsers" runat="server" causesvalidation="false" 
                        onclick="LbtnManageUsers_Click"><i class="glyphicon glyphicon-user"></i> Manage All Users</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageTests" runat="server" OnClick="LbtnManageTests_Click" causesvalidation="false"><i class="glyphicon glyphicon-book"></i> Manage Tests</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnOtherActivities" runat="server" 
                        onclick="LbtnOtherActivities_Click"  causesvalidation="false"><i class="glyphicon glyphicon-th-large"></i> Other Details</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnManageChallenges" runat="server" 
                        causesvalidation="false" onclick="LbtnManageChallenges_Click"><i class="glyphicon glyphicon-tasks"></i> Manage Challenges</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LbtnSendMail" runat="server" causesvalidation="false" 
                        onclick="LbtnSendMail_Click"><i class="glyphicon glyphicon-send"></i> Send Mail</asp:LinkButton>
                </li>
            </ul>
        </div>
    </div> 
    <div class="container" style="margin-left:230px">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header panel-orange" align="center" style="margin-left:40px"><i class="glyphicon glyphicon-book"></i>Manage Online Tests
                </h1>
                </div>
                <asp:Button runat="server" CssClass="btn btn-lg btn-success col-lg-3" 
                ID="btnShow" Text="Add New Question" style="margin-left:50px" 
                onclick="btnShow_Click" CausesValidation="false"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-lg btn-danger col-lg-7" 
                id="btnShowQues" Text="Delete Question" CausesValidation="false" 
                style="margin-left:50px" onclick="btnShowQues_Click"/>
                </div>
                <br />
                <div class="col-lg-4">
                <form class="form-horizontal has-error has-success" role="form">
                <div class="form-group">
                <asp:Label CssClass="control-label col-lg-3" for="txtQues" runat="server" 
                        Text="&nbsp;&nbsp;Question:" Font-Bold="True" ID="lblQues" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtQues" placeholder="Type in the question" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldQues" runat="server" ErrorMessage="Please type in the question" ControlToValidate="txtQues"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                <asp:Label class="control-label col-lg-3" for="txtOption1" runat="server" 
                        Text="&nbsp;&nbsp;Option1:" Font-Bold="True" ID="lblOption1" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtOption1" placeholder="Type in the first option" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldOption1" runat="server" ErrorMessage="Please type in the first option" ControlToValidate="txtOption1"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                <asp:Label class="control-label col-lg-3" for="txtOption2" 
                        Text="&nbsp;&nbsp;Option2:" runat="server" id="lblOption2" Font-Bold="True" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtOption2" placeholder="Type in the second option" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldOption2" runat="server" ErrorMessage="Please type in the second option" ControlToValidate="txtOption2"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                <asp:Label class="control-label col-lg-3" for="txtOption3" 
                        Text="&nbsp;&nbsp;Option3:" ID="lblOption3" runat="server" Font-Bold="True" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtOption3" placeholder="Type in the third option" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldOption3" runat="server" ErrorMessage="Please type in the third option" ControlToValidate="txtOption3"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                <asp:Label class="control-label col-lg-3" for="txtOption4" 
                        Text="&nbsp;&nbsp;Option4:" ID="lblOption4" runat="server" Font-Bold="True" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtOption4" placeholder="Type in the fourth option" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldOption4" runat="server" ErrorMessage="Please type in the fourth option" ControlToValidate="txtOption4"></asp:RequiredFieldValidator>
                <br />
                <div class="form-group">
                <asp:Label class="control-label col-lg-3" for="txtAnswer" 
                        Text="&nbsp;&nbsp;Answer:" runat="server" ID="lblAnswer" Font-Bold="True" Visible="false"></asp:Label>
                <div class="col-lg-8">
                <asp:TextBox runat="server" id="txtAnswer" placeholder="Type in the correct answer" 
                        class="form-control" Height="34px" Visible="false"></asp:TextBox>
                </div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator forecolor="Red" ID="RequiredFieldAnswer" runat="server" ErrorMessage="Please type in the correct answer" ControlToValidate="txtAnswer"></asp:RequiredFieldValidator>
                <br />
                 <asp:Label ID="lblDisplayStatus" Text="The Question was inserted successfully" Visible="False" runat="server" 
                        Font-Bold="True" Font-Names="Calibri" ForeColor="#000"></asp:Label>
                <br />
                <div class="form-group">
                <asp:Button runat="server" ID="btnInsertAptitude" 
                        CssClass="btn btn-lg btn-warning col-lg-6" 
                        Text="Aptitude Section" onclick="btnInsertAptitude_Click" Visible="false"></asp:Button>
                <asp:Button runat="server" ID="btnInsertEnglish" 
                        CssClass="btn btn-lg btn-warning col-lg-5" Text="English Section"  
                        style="margin-left:10px" onclick="btnInsertEnglish_Click" Visible="false"></asp:Button>
                <br />
                <br />
                <br />
               </div>
      </form>
      </div>
      <div class="col-lg-8">
      <asp:Button ID="Del_Aptitude" CssClass="btn btn-lg btn-warning col-lg-5" 
              Text="Del from Aptitude Section" runat="server" 
              onclick="Del_Aptitude_Click" CausesValidation="false" Visible="false"/>
       <asp:Button ID="Del_English" CssClass="btn btn-lg btn-warning col-lg-5" 
              Text="Del from English Section" runat="server" onclick="Del_English_Click" CausesValidation="false" style="margin-left:50px" visible="false" />
              <br />
              <br />
              <br />
              <div class="form-group">
          <asp:TextBox ID="txtSearch" runat="server" placeholder="Type to search for a ques" CssClass="form-control col-lg-10" Width="400px" Visible="false"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                      ID="btnSearch" runat="server" Text="Search" 
                      CssClass="btn btn-primary control-label col-lg-2" Visible="false" 
                      CausesValidation="false" onclick="btnSearch_Click" /></div>
          <asp:SqlDataSource ID="SqlDataSourceSearchAptitude" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
              SelectCommand="Search_Aptitude" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtSearch" Name="Ques" PropertyName="Text" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSourceSearchEnglish" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
              SelectCommand="Search_English" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="txtSearch" Name="Ques" PropertyName="Text" 
                      Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
              <br /><br />
          <asp:GridView ID="GridViewDel" 
              CssClass="table table-bordered table-hover table-responsive table-striped"  
              runat="server" AllowPaging="True" PageSize="5" DataKeyNames="Ques" 
              onrowdatabound="GridViewDel_RowDataBound" AutoGenerateColumns="False" AllowSorting="true">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false"/>
                  <asp:TemplateField HeaderText="Question" SortExpression="Ques">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ques") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Ques") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Option A">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ans1") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ans1") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Option B">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ans2") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ans2") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Option C">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ans3") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("Ans3") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Option D">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ans4") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Bind("Ans4") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Correct Answer"><HeaderStyle Width="40px" />
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Correct_Ans") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label6" runat="server" Text='<%# Bind("Correct_Ans") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
          </div>
          <br />
          <asp:SqlDataSource ID="SqlDataSourceDel" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>"  
              DeleteCommand="Del_Aptitude"
              UpdateCommand="Update_Aptitude"  
              SelectCommand="SELECT * FROM [Aptitude_test]" 
              UpdateCommandType="StoredProcedure" DeleteCommandType="StoredProcedure">
              <DeleteParameters>
                  <asp:Parameter Name="Ques" Type="String" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Ques" Type="String" />
                  <asp:Parameter Name="Ans1" Type="String" />
                  <asp:Parameter Name="Ans2" Type="String" />
                  <asp:Parameter Name="Ans3" Type="String" />
                  <asp:Parameter Name="Ans4" Type="String" />
                  <asp:Parameter Name="Correct_Ans" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSourceDel1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
              DeleteCommand="Del_English" DeleteCommandType="StoredProcedure" 
              SelectCommand="Select * from English_test" UpdateCommand="Update_English" 
              UpdateCommandType="StoredProcedure">
              <DeleteParameters>
                  <asp:Parameter Name="Ques" Type="String" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Ques" Type="String" />
                  <asp:Parameter Name="Ans1" Type="String" />
                  <asp:Parameter Name="Ans2" Type="String" />
                  <asp:Parameter Name="Ans3" Type="String" />
                  <asp:Parameter Name="Ans4" Type="String" />
                  <asp:Parameter Name="Correct_Ans" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSourceSelect" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ALLUSERSConnectionString %>" 
              SelectCommand="Select_Aptitude" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="GridViewDel" Name="Ques" 
                      PropertyName="SelectedValue" Type="String" />
                  <asp:Parameter Name="Ans1" Type="String" />
                  <asp:Parameter Name="Ans2" Type="String" />
                  <asp:Parameter Name="Ans3" Type="String" />
                  <asp:Parameter Name="Ans4" Type="String" />
                  <asp:Parameter Name="Correct_Ans" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
      </div>
    </form>
</body>
</html>
