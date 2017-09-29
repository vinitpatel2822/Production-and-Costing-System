<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="place_order.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           

              &nbsp;&nbsp;&nbsp;
           

              <!-- Form validations -->              
              <div class="row">
                  
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Place Order
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
                                              <asp:TextBox ID="tb_date" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                              <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="tb_date"></asp:CalendarExtender>

                                          </div>
                                      </div>                                                                                                      
                          
                                      
                                      
                                        <div class="form-group ">
                                         <asp:Label ID="Label13" class="control-label col-lg-2" runat="server" Text="Client Name"></asp:Label>
                                         <div class="col-lg-10">                
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlclientname" SetFocusOnError="True"></asp:RequiredFieldValidator>                       
                                          <asp:DropDownList ID="ddlclientname"  class="form-control " runat="server" AutoPostBack="true" ></asp:DropDownList>
                                         </div>
                                      </div>



                                           
                                       <div class="form-group ">
                                         <asp:Label ID="Label5" class="control-label col-lg-2" runat="server" Text="Order Description"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_order_description" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_order_description" class="form-control" runat="server"  TextMode="MultiLine"></asp:TextBox>
                                          </div>
                                      </div>

                                      <div class="form-group ">
                                         <asp:Label ID="Label6" class="control-label col-lg-2" runat="server" Text="Quantity"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_quantity" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_quantity" class="form-control" placeholder="Pcs." runat="server"></asp:TextBox>
                                            

                                          </div>
                                      </div>
                                       
                                 

                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                            <br /> <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" />
                                             
                                             
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


