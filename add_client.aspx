<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_client.aspx.cs" Inherits="_Default" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           

              <!-- Form validations -->              
              <div class="row">
                  
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Add Client
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="" >

                                     
                                      <div class="form-group ">
                                         <asp:Label ID="Label2" class="control-label col-lg-2" runat="server" Text="Client Name"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_cname" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_cname" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                         <asp:Label ID="Label3" class="control-label col-lg-2" runat="server" Text="Address"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_addr" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_addr" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            

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
                                         <asp:Label ID="Label4" class="control-label col-lg-2" runat="server" Text="City"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" SetFocusOnError="True" ControlToValidate="ddlcity"></asp:RequiredFieldValidator>
                                          <asp:DropDownList ID="ddlcity"  class="form-control " runat="server"></asp:DropDownList>
                                              
                                        </div>
                                      </div>
                                      
                                      
                                                                       
                                     
                                   
                                       <div class="form-group ">
                                         <asp:Label ID="Label7" class="control-label col-lg-2" runat="server" Text="Mobile No."></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_mno" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_mno" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label8" class="control-label col-lg-2" runat="server" Text="Email ID"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_mailid" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_mailid" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                         <asp:Label ID="Label9" class="control-label col-lg-2" runat="server" Text="Order Description"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_order_description" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_order_description" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            
                                              <br />
                                          </div>
                                      </div>
                                       
                                 

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                            <br /> <asp:Button ID="btn1" class="btn btn-primary" runat="server" Text="Save" OnClick="btn1_Click" CausesValidation="True" />
                                             
                                            
                                          </div>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lblmsg" runat="server" ForeColor="#394A59"></asp:Label>
                                      </div>
                                  </form>
                              </div>

                          </div>
                      </section>
                  </div>
              </div>

</asp:Content>


