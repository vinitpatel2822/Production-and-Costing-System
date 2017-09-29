<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_new_user.aspx.cs" Inherits="_Default"  EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           

              <!-- Form validations -->              
              <div class="row">
                  
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Add New User
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="" >
                                       <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
                                       </asp:ToolkitScriptManager>
                                      <div class="form-group ">
                                         <asp:Label ID="Label1" class="control-label col-lg-2" runat="server" Text="First Name"></asp:Label>
                                          
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_fname" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_fname" class="form-control" runat="server"></asp:TextBox>
                                            
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                         <asp:Label ID="Label2" class="control-label col-lg-2" runat="server" Text="Last Name"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_lname" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_lname" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                         <asp:Label ID="Label3" class="control-label col-lg-2" runat="server" Text="Birthdate"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_bdate" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_bdate" class="form-control" runat="server"></asp:TextBox>
                                              <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="tb_bdate"></asp:CalendarExtender>

                                          </div>
                                      </div>
                                      <div class="form-group ">
                                         <asp:Label ID="Label4" class="control-label col-lg-2" runat="server" Text="Gender"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="True" ControlToValidate="rdbl1"></asp:RequiredFieldValidator>
                                        <asp:radiobuttonlist ID="rdbl1" class="control-label col-lg-2" runat="server">
                                            <asp:listitem ID="rb1"  class="form-control" runat="server" Text="Male" GroupName="grp1" />
                                            <asp:listitem ID="rb2"  class="form-control" runat="server" Text="Female" GroupName="grp1" />
                                        </asp:radiobuttonlist>     
                                          </div>
                                      </div>                                      
                                      <div class="form-group ">
                                          <asp:Label ID="Label5" class="control-label col-lg-2" runat="server" Text="Address"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_addr" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_addr" class="form-control " runat="server" TextMode="MultiLine"></asp:TextBox>
                                              
                                          </div>
                                     
                                      </div>

                                       <div class="form-group ">
                                         <asp:Label ID="Label13" class="control-label col-lg-2" runat="server" Text="Country"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="True" ControlToValidate="ddlcountry"></asp:RequiredFieldValidator>
                                          <asp:DropDownList ID="ddlcountry"  class="form-control " runat="server" AutoPostBack="true" onSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList>
                                         </div>
                                      </div>
                                      <div class="form-group ">
                                         <asp:Label ID="Label6" class="control-label col-lg-2" runat="server" Text="State"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlstate" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                          <asp:DropDownList ID="ddlstate"  class="form-control " runat="server" AutoPostBack="true" onSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList>
                                         </div>
                                      </div>

                                       <div class="form-group ">
                                         <asp:Label ID="Label7" class="control-label col-lg-2" runat="server" Text="City"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" SetFocusOnError="True" ControlToValidate="ddlcity"></asp:RequiredFieldValidator>
                                          <asp:DropDownList ID="ddlcity"  class="form-control " runat="server"></asp:DropDownList>
                                              
                                        </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label8" class="control-label col-lg-2" runat="server" Text="Mobile No."></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_mno" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_mno" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label9" class="control-label col-lg-2" runat="server" Text="Email ID"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_mailid" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label10" class="control-label col-lg-2" runat="server" Text="User Name"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" SetFocusOnError="True" ControlToValidate="tb_username"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_username" class="form-control" runat="server" OnTextChanged="tb_username_TextChanged"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label11" class="control-label col-lg-2" runat="server" Text="Password"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Visible="True" SetFocusOnError="True" ControlToValidate="tb_password"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label12" class="control-label col-lg-2" runat="server" Text="Confirm Password"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:CompareValidator ID="CompareValidator1" runat="server" SetFocusOnError="True" ControlToValidate="tb_cpassword" ControlToCompare="tb_password"></asp:CompareValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" SetFocusOnError="True" ControlToValidate="tb_cpassword"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_cpassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                          </div><br />
                                      </div>

                                      

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                             <asp:Button ID="btn1" class="btn btn-primary" runat="server" Text="Save" OnClick="btn1_Click" CausesValidation="True" />
                                             
                                            
                                          </div>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lblmsg" runat="server" ForeColor="#CC3300"></asp:Label>
                                      </div>
                                  </form>
                              </div>

                          </div>
                      </section>
                  </div>
              </div>

</asp:Content>

