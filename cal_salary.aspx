﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cal_salary.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

                  <div class="row">
                  <div class="col-lg-6">
                      <!--Information content start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Information
                          </header>
                          <div class="panel-body">
                              <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
                                       </asp:ToolkitScriptManager>

                              <div class="form-group ">
                                          <asp:Label ID="lbl1" class="control-label col-lg-2" runat="server" Text="Date"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                             <asp:TextBox ID="tb_date" class="form-control" runat="server"></asp:TextBox><br />
                                              <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="tb_date"></asp:CalendarExtender>

                                          </div>
                                      </div>     
                              


                                <div class="form-group ">
                                         <asp:Label ID="lbl2" class="control-label col-lg-2" runat="server" Text="Production"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_production" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_production" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                                      
                               <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button ID="btn_cal" class="btn btn-primary" runat="server" Text="Calculate" OnClick="btn_cal_Click" />
                                              <asp:Button ID="btn_rate" class="btn btn-primary" runat="server" Text="Change rate" OnClick="btn_rate_Click" />
 
                                                                                                                             
                                          <asp:Label ID="lblmsg" runat="server" ForeColor="#CC3300"></asp:Label>
                                      </div>
                            </div>
                         </section>

                      <!--Output content start-->
                  
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rate_id" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                          <Columns>
                              <asp:BoundField DataField="rate_id" HeaderText="rate_id" InsertVisible="False" ReadOnly="True" SortExpression="rate_id" />
                              <asp:BoundField DataField="corugation" HeaderText="corugation" SortExpression="corugation" />
                              <asp:BoundField DataField="printing" HeaderText="printing" SortExpression="printing" />
                              <asp:BoundField DataField="pasting" HeaderText="pasting" SortExpression="pasting" />
                              <asp:BoundField DataField="punching" HeaderText="punching" SortExpression="punching" />
                              <asp:BoundField DataField="packing" HeaderText="packing" SortExpression="packing" />
                          </Columns>
                      </asp:GridView>
                            
                      
                      
                          
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [salary_rate_tbl] WHERE [rate_id] = @original_rate_id AND [corugation] = @original_corugation AND [printing] = @original_printing AND [pasting] = @original_pasting AND [punching] = @original_punching AND [packing] = @original_packing" InsertCommand="INSERT INTO [salary_rate_tbl] ([corugation], [printing], [pasting], [punching], [packing]) VALUES (@corugation, @printing, @pasting, @punching, @packing)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [salary_rate_tbl]" UpdateCommand="UPDATE [salary_rate_tbl] SET [corugation] = @corugation, [printing] = @printing, [pasting] = @pasting, [punching] = @punching, [packing] = @packing WHERE [rate_id] = @original_rate_id AND [corugation] = @original_corugation AND [printing] = @original_printing AND [pasting] = @original_pasting AND [punching] = @original_punching AND [packing] = @original_packing">
                          <DeleteParameters>
                              <asp:Parameter Name="original_rate_id" Type="Int32" />
                              <asp:Parameter Name="original_corugation" Type="Int32" />
                              <asp:Parameter Name="original_printing" Type="Int32" />
                              <asp:Parameter Name="original_pasting" Type="Int32" />
                              <asp:Parameter Name="original_punching" Type="Int32" />
                              <asp:Parameter Name="original_packing" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="corugation" Type="Int32" />
                              <asp:Parameter Name="printing" Type="Int32" />
                              <asp:Parameter Name="pasting" Type="Int32" />
                              <asp:Parameter Name="punching" Type="Int32" />
                              <asp:Parameter Name="packing" Type="Int32" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="corugation" Type="Int32" />
                              <asp:Parameter Name="printing" Type="Int32" />
                              <asp:Parameter Name="pasting" Type="Int32" />
                              <asp:Parameter Name="punching" Type="Int32" />
                              <asp:Parameter Name="packing" Type="Int32" />
                              <asp:Parameter Name="original_rate_id" Type="Int32" />
                              <asp:Parameter Name="original_corugation" Type="Int32" />
                              <asp:Parameter Name="original_printing" Type="Int32" />
                              <asp:Parameter Name="original_pasting" Type="Int32" />
                              <asp:Parameter Name="original_punching" Type="Int32" />
                              <asp:Parameter Name="original_packing" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                            
                      
                      
                          
</div>
            
     
                        

                     

     <div class="col-lg-6">
           <!--Output content start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Salary Result
                          </header>
                          <div class="panel-body">
                                   <div class="form-group ">
                                         <asp:Label ID="Label11" class="control-label col-lg-2" runat="server" Text="Corugation"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_m1_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div> 
                                    <div class="form-group ">
                                         <asp:Label ID="Label12" class="control-label col-lg-2" runat="server" Text="Printing"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_m2_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div>
                                    <div class="form-group ">
                                         <asp:Label ID="Label13" class="control-label col-lg-2" runat="server" Text="Pasting"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_m3_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div>
                                    <div class="form-group ">
                                         <asp:Label ID="Label14" class="control-label col-lg-2" runat="server" Text="Punching"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_m4_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div>
                                    <div class="form-group ">
                                         <asp:Label ID="Label15" class="control-label col-lg-2" runat="server" Text="Packing"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_m5_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div>
                                    <div class="form-group ">
                                         <asp:Label ID="Label6" class="control-label col-lg-2" runat="server" Text="Total"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_total_op" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                   </div>


                          </div>


                      </section>
                      <!--Output end-->

         

</div>
</asp:Content>

