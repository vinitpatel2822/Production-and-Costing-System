<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="costing.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     

             <div class="row">
                  <div class="col-lg-10">
                      <!--Costing info content start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Costing Info
                          </header>
                          <div class="panel-body">
                              <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
                                       </asp:ToolkitScriptManager>
                                <div class="form-group ">
                                         <asp:Label ID="Label14" class="control-label col-lg-2" runat="server" Text="Date :" ></asp:Label>
                                          <div class="col-lg-10">
                                             <asp:CalendarExtender runat="server" Enabled="True" TargetControlID="tb_date"></asp:CalendarExtender>

                                              <asp:TextBox ID="tb_date" class="form-control"  runat="server" TextMode="Date"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                               <div class="form-group ">
                                         <asp:Label ID="Label15" class="control-label col-lg-2" runat="server" Text="Client Name :" ></asp:Label>
                                          <div class="col-lg-10">
                                             
                                              <asp:TextBox ID="tb_cname" class="form-control"  runat="server" ></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                <div class="form-group ">
                                         <asp:Label ID="Label16" class="control-label col-lg-2" runat="server" Text="Product Info :" ></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_product" class="form-control" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                          </div>
                       </section>
                    </div>  
                 <div class="col-lg-4">
                      <!--Information content start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Information
                          </header>
                          <div class="panel-body">
                             
                                <div class="form-group ">
                                         <asp:Label ID="lbl1" class="control-label col-lg-2" runat="server" Text="Length" ></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_l" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_l" class="form-control" TextMode="Number" placeholder="mm" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="lbl2" class="control-label col-lg-2" runat="server" Text="Width"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_w" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_w" class="form-control" TextMode="Number" placeholder="mm" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="lbl3" class="control-label col-lg-2" runat="server" Text="Height"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_h" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="tb_h" class="form-control" TextMode="Number" placeholder="mm" runat="server"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                <div class="form-group ">
                                         <asp:Label ID="Label1" class="control-label col-lg-2" runat="server" Text="Ply"></asp:Label>
                                          <div class="col-lg-10">
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlply" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            
                                              
                                               <asp:DropDownList ID="ddlply"  class="form-control " runat="server" >
                                                 <asp:ListItem>--Select PLY--</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                                 <asp:ListItem>7</asp:ListItem>
                                                 <asp:ListItem>9</asp:ListItem>
                                               </asp:DropDownList> <br />                                          
                                          </div>
                                </div> 

                                                      
                               <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button ID="btn_cal" class="btn btn-primary" runat="server" Text="Calculate" OnClick="btn_cal_Click" /><br />
                                                
                                                                                                                             
                                          <asp:Label ID="lblmsg" runat="server" ForeColor="#CC3300"></asp:Label> <br />
                                      </div>

                              <div class="form-group ">
                                         <asp:Label ID="Label2" class="control-label col-lg-2" runat="server" Text="Sheet" Visible="False"></asp:Label>
                                          <div class="col-lg-10">
                                             
                                              <asp:TextBox ID="tb_ss" class="form-control" runat="server" Visible="False" ReadOnly="True"></asp:TextBox> <br />                          
                                                <asp:TextBox ID="tb_ss1" class="form-control" runat="server" Visible="False"></asp:TextBox> <br />                 
                                          </div>
                                </div>       
                            </div>
                        </section>

                         <section class="panel">
                          <header class="panel-heading">
                            Extra Charges
                          </header>
                          <div class="panel-body">
                             
                                <div class="form-group ">
                                         <asp:Label ID="Label17" class="control-label col-lg-2" runat="server" Text="Print:" ></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_print" class="form-control"  runat="server" TextMode="Number" placeholder="Rs."></asp:TextBox> <br />                                           
                                          
                                               </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label18" class="control-label col-lg-2" runat="server" Text="Labor:"></asp:Label>
                                          <div class="col-lg-10">
                                               
                                              <asp:TextBox ID="tb_labor" class="form-control" runat="server"  TextMode="Number" placeholder="Rs."></asp:TextBox> <br />                                           
                                         
                                               </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label19" class="control-label col-lg-2" runat="server" Text="Freight:"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_freight" class="form-control" runat="server" TextMode="Number" placeholder="Rs." ></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label20" class="control-label col-lg-2" runat="server" Text="Profit:"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_profit" class="form-control" runat="server" TextMode="Number" placeholder="%" ></asp:TextBox> <br />                                           
                                          </div>
                                </div> 

                               <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button ID="btn_final_price" class="btn btn-primary" runat="server" Text="Final PRICE" OnClick="btn_final_price_Click" /> <br/><br/>
                                               
                                          </div>   
                                    </div> 

                                 <div class="form-group ">
                                         <asp:Label ID="Label21" class="control-label col-lg-2" runat="server" Text="Final PRICE:" Visible="false"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_final_price" class="form-control"  runat="server" ReadOnly="true" Visible="false" ></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                               <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button ID="btn_c_submit" class="btn btn-primary" runat="server" Text="SUBMIT" OnClick="btn_c_submit_Click" Visible="false" /> <br/><br/>
                                              <asp:Label ID="lbl_msg" runat="server" Text="" ForeColor="#394A59" Visible="false"></asp:Label>
                                          </div>   
                                    </div> 
                           </div>
                          </section>

</div>


 <div class="col-lg-4">
           <!--Paper Specification start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Paper Specification
                          </header>
                          <div class="panel-body">
                                   <div class="form-group ">
                                         <asp:Label ID="Label11" class="control-label col-lg-2" runat="server" Text="Top Paper"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_tp" class="form-control" TextMode="Number" placeholder="Enter GSM" runat="server"></asp:TextBox><br />
                                                  <asp:DropDownList ID="ddl_tbf"  class="form-control " runat="server" >
                                                 <asp:ListItem>--Select BF--</asp:ListItem>
                                                 <asp:ListItem>12</asp:ListItem>
                                                 <asp:ListItem>16</asp:ListItem>
                                                 <asp:ListItem>18</asp:ListItem>
                                                 <asp:ListItem>20</asp:ListItem>
                                                 <asp:ListItem>22</asp:ListItem>
                                                 <asp:ListItem>24</asp:ListItem>
                                               </asp:DropDownList> <br />                                           
                                          </div>
                                   </div> 
                                    <div class="form-group ">
                                       <asp:Label ID="Label12" class="control-label col-lg-2" runat="server" Text="Flute Paper"></asp:Label>
                                        <div class="col-lg-10">     
                                         <asp:TextBox ID="tb_fp" class="form-control" TextMode="Number" placeholder="Enter GSM" runat="server"></asp:TextBox> <br />  
                                                <asp:DropDownList ID="ddl_fbf"  class="form-control " runat="server"  >
                                                 <asp:ListItem>--Select BF--</asp:ListItem>
                                                 <asp:ListItem>12</asp:ListItem>
                                                 <asp:ListItem>16</asp:ListItem>
                                                 <asp:ListItem>18</asp:ListItem>
                                                 <asp:ListItem>20</asp:ListItem>
                                                 <asp:ListItem>22</asp:ListItem>
                                                 <asp:ListItem>24</asp:ListItem>
                                               </asp:DropDownList> <br />                                             
                                          </div>
                                   </div>
                                    <div class="form-group ">
                                         <asp:Label ID="Label13" class="control-label col-lg-2" runat="server" Text="Liner Paper"></asp:Label>
                                          <div class="col-lg-10">
                                              <asp:TextBox ID="tb_lp" class="form-control" TextMode="Number" placeholder="Enter GSM" runat="server"></asp:TextBox> <br /> 
                                                  <asp:DropDownList ID="ddl_lbf"  class="form-control " runat="server" >
                                                 <asp:ListItem>--Select BF--</asp:ListItem>
                                                 <asp:ListItem>12</asp:ListItem>
                                                 <asp:ListItem>16</asp:ListItem>
                                                 <asp:ListItem>18</asp:ListItem>
                                                 <asp:ListItem>20</asp:ListItem>
                                                 <asp:ListItem>22</asp:ListItem>
                                                 <asp:ListItem>24</asp:ListItem>
                                               </asp:DropDownList> <br />                                              
                                          </div>
                                   </div>
                                    <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="btn_submit_Click"/>
                                               
                                          </div>   
                                    </div>  
                              
                                 
                                  
                                                          
                      </section>
                      <!--Output end-->

</div>

     <div class="col-lg-4">
                      <!--Information content start-->
                      <section class="panel">
                          <header class="panel-heading">
                            Weight
                          </header>
                          <div class="panel-body">
                             
                                <div class="form-group ">
                                         <asp:Label ID="Label3" class="control-label col-lg-2" runat="server" Text="Top" ></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_top_w" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label4" class="control-label col-lg-2" runat="server" Text="Flute"></asp:Label>
                                          <div class="col-lg-10">
                                               
                                              <asp:TextBox ID="tb_flute_w" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label5" class="control-label col-lg-2" runat="server" Text="Liner"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_liner_w" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label6" class="control-label col-lg-2" runat="server" Text="Total"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_total_w" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                           </div>
                          </section>

          <section class="panel">
                          <header class="panel-heading">
                            Rate
                          </header>
                          <div class="panel-body">
                             
                                <div class="form-group ">
                                         <asp:Label ID="Label7" class="control-label col-lg-2" runat="server" Text="Top" ></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_top_rate" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label8" class="control-label col-lg-2" runat="server" Text="Flute"></asp:Label>
                                          <div class="col-lg-10">
                                               
                                              <asp:TextBox ID="tb_flute_rate" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label9" class="control-label col-lg-2" runat="server" Text="Liner"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_liner_rate" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                                 <div class="form-group ">
                                         <asp:Label ID="Label10" class="control-label col-lg-2" runat="server" Text="Total"></asp:Label>
                                          <div class="col-lg-10">
                                              
                                              <asp:TextBox ID="tb_total_rate" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox> <br />                                           
                                          </div>
                                </div> 
                           </div>
                          </section>
         </div>

                  <asp:GridView ID="GridView_bf_rate" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bf_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                  <Columns>
                                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                      <asp:BoundField DataField="bf_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="bf_id"></asp:BoundField>
                                      <asp:BoundField DataField="bf" HeaderText="BF" SortExpression="bf"></asp:BoundField>
                                      <asp:BoundField DataField="bf_rate" HeaderText="Rate" SortExpression="bf_rate"></asp:BoundField>
                                  </Columns>
                                  <EditRowStyle BackColor="#999999" />
                                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                  <sortedascendingcellstyle backcolor="#E9E7E2" />
                                  <sortedascendingheaderstyle backcolor="#506C8C" />
                                  <sorteddescendingcellstyle backcolor="#FFFDF8" />
                                  <sorteddescendingheaderstyle backcolor="#6F8DAE" />
                                   </asp:GridView>

                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [bf_tbl] WHERE [bf_id] = @original_bf_id AND [bf] = @original_bf AND [bf_rate] = @original_bf_rate" InsertCommand="INSERT INTO [bf_tbl] ([bf], [bf_rate]) VALUES (@bf, @bf_rate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [bf_tbl]" UpdateCommand="UPDATE [bf_tbl] SET [bf] = @bf, [bf_rate] = @bf_rate WHERE [bf_id] = @original_bf_id AND [bf] = @original_bf AND [bf_rate] = @original_bf_rate">
                                       <DeleteParameters>
                                           <asp:Parameter Name="original_bf_id" Type="Int32" />
                                           <asp:Parameter Name="original_bf" Type="Int32" />
                                           <asp:Parameter Name="original_bf_rate" Type="Int32" />
                                       </DeleteParameters>
                                       <InsertParameters>
                                           <asp:Parameter Name="bf" Type="Int32" />
                                           <asp:Parameter Name="bf_rate" Type="Int32" />
                                       </InsertParameters>
                                       <UpdateParameters>
                                           <asp:Parameter Name="bf" Type="Int32" />
                                           <asp:Parameter Name="bf_rate" Type="Int32" />
                                           <asp:Parameter Name="original_bf_id" Type="Int32" />
                                           <asp:Parameter Name="original_bf" Type="Int32" />
                                           <asp:Parameter Name="original_bf_rate" Type="Int32" />
                                       </UpdateParameters>
                                   </asp:SqlDataSource>


</asp:Content>

