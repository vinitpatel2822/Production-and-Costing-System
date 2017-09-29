<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="print_challan.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           

              <!-- Form validations -->              
              <div class="row">
                  
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Print Challan
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="" >
                                       <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
                                       </asp:ToolkitScriptManager>
                                      
                                      
                                      <div class="form-group ">
                                         <asp:Label ID="Label2" class="control-label col-lg-2" runat="server" Text="Date"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_date" class="form-control" runat="server"></asp:TextBox>
                                              <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="tb_date"></asp:CalendarExtender>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                         <asp:Label ID="Label3" class="control-label col-lg-2" runat="server" Text="Time"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_time" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_time" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>

                                                                          
                                       <div class="form-group ">
                                         <asp:Label ID="Label1" class="control-label col-lg-2" runat="server" Text="Client Name"></asp:Label>
                                         <div class="col-lg-10">                
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlclientname" SetFocusOnError="True"></asp:RequiredFieldValidator>                       
                                          <asp:DropDownList ID="ddlclientname"  class="form-control " runat="server"></asp:DropDownList>
                                         </div>
                                      </div>
                                                                       
                                      <div class="form-group ">
                                          <asp:Label ID="Label6" class="control-label col-lg-2" runat="server" Text="Address"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_addr" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_addr" class="form-control " runat="server" TextMode="MultiLine"></asp:TextBox>
                                              
                                          </div>
                                     
                                      </div>

                                       

                                       <div class="form-group ">
                                         <asp:Label ID="Label10" class="control-label col-lg-2" runat="server" Text="Mobile No."></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_mno" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_mno" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label11" class="control-label col-lg-2" runat="server" Text="Email ID"></asp:Label>
                                          <div class="col-lg-10">
                                           
                                              <asp:TextBox ID="tb_mailid" class="form-control" runat="server"></asp:TextBox>
                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label12" class="control-label col-lg-2" runat="server" Text="Order Description"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_desc" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_desc" class="form-control" runat="server"  TextMode="MultiLine"></asp:TextBox>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                         <asp:Label ID="Label13" class="control-label col-lg-2" runat="server" Text="Quantity"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_quantity" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_quantity" class="form-control" placeholder="Pcs." runat="server"></asp:TextBox>
                                            

                                          </div>
                                      </div>
                                       <div class="form-group ">
                                         <asp:Label ID="Label14" class="control-label col-lg-2" runat="server" Text="Vehicle Number"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_vehno" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_vehno" class="form-control" runat="server"></asp:TextBox>
                                          </div><br />
                                      </div>

                                      

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                             <br /><asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" />
                                             
                                             
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

