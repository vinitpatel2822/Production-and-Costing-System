<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_client.aspx.cs" Inherits="Default2" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div>
    
         <header class="panel-heading" >
                              Client List
                          </header> <br/>

           <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource2"  CellPadding="4" ForeColor="#333333" GridLines="Vertical">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                   <asp:BoundField DataField="c_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="c_id"></asp:BoundField>
                   <asp:BoundField DataField="c_name" HeaderText="Client Name" SortExpression="c_name"></asp:BoundField>
                   <asp:BoundField DataField="c_address" HeaderText="Address" SortExpression="c_address"></asp:BoundField>
                   <asp:BoundField DataField="c_state" HeaderText="State" SortExpression="c_state"></asp:BoundField>
                   <asp:BoundField DataField="c_city" HeaderText="City" SortExpression="c_city"></asp:BoundField>
                   <asp:BoundField DataField="c_mobile_no" HeaderText="Mobile No." SortExpression="c_mobile_no"></asp:BoundField>
                   <asp:BoundField DataField="c_email_id" HeaderText="Email ID" SortExpression="c_email_id"></asp:BoundField>
                   <asp:BoundField DataField="c_order_description" HeaderText="Order Desc." SortExpression="c_order_description"></asp:BoundField>
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#394A59" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <sortedascendingcellstyle backcolor="#E9E7E2" />
               <sortedascendingheaderstyle backcolor="#506C8C" />
               <sorteddescendingcellstyle backcolor="#FFFDF8" />
               <sorteddescendingheaderstyle backcolor="#6F8DAE" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [client_tbl] WHERE [c_id] = @original_c_id AND [c_name] = @original_c_name AND [c_address] = @original_c_address AND [c_state] = @original_c_state AND [c_city] = @original_c_city AND [c_mobile_no] = @original_c_mobile_no AND (([c_email_id] = @original_c_email_id) OR ([c_email_id] IS NULL AND @original_c_email_id IS NULL)) AND [c_order_description] = @original_c_order_description" InsertCommand="INSERT INTO [client_tbl] ([c_name], [c_address], [c_state], [c_city], [c_mobile_no], [c_email_id], [c_order_description]) VALUES (@c_name, @c_address, @c_state, @c_city, @c_mobile_no, @c_email_id, @c_order_description)" SelectCommand="SELECT * FROM [client_tbl]" UpdateCommand="UPDATE [client_tbl] SET [c_name] = @c_name, [c_address] = @c_address, [c_state] = @c_state, [c_city] = @c_city, [c_mobile_no] = @c_mobile_no, [c_email_id] = @c_email_id, [c_order_description] = @c_order_description WHERE [c_id] = @original_c_id AND [c_name] = @original_c_name AND [c_address] = @original_c_address AND [c_state] = @original_c_state AND [c_city] = @original_c_city AND [c_mobile_no] = @original_c_mobile_no AND (([c_email_id] = @original_c_email_id) OR ([c_email_id] IS NULL AND @original_c_email_id IS NULL)) AND [c_order_description] = @original_c_order_description" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
               <DeleteParameters>
                   <asp:Parameter Name="original_c_id" Type="Int32" />
                   <asp:Parameter Name="original_c_name" Type="String" />
                   <asp:Parameter Name="original_c_address" Type="String" />
                   <asp:Parameter Name="original_c_state" Type="String" />
                   <asp:Parameter Name="original_c_city" Type="String" />
                   <asp:Parameter Name="original_c_mobile_no" Type="Int64" />
                   <asp:Parameter Name="original_c_email_id" Type="String" />
                   <asp:Parameter Name="original_c_order_description" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="c_name" Type="String" />
                   <asp:Parameter Name="c_address" Type="String" />
                   <asp:Parameter Name="c_state" Type="String" />
                   <asp:Parameter Name="c_city" Type="String" />
                   <asp:Parameter Name="c_mobile_no" Type="Int64" />
                   <asp:Parameter Name="c_email_id" Type="String" />
                   <asp:Parameter Name="c_order_description" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="c_name" Type="String" />
                   <asp:Parameter Name="c_address" Type="String" />
                   <asp:Parameter Name="c_state" Type="String" />
                   <asp:Parameter Name="c_city" Type="String" />
                   <asp:Parameter Name="c_mobile_no" Type="Int64" />
                   <asp:Parameter Name="c_email_id" Type="String" />
                   <asp:Parameter Name="c_order_description" Type="String" />
                   <asp:Parameter Name="original_c_id" Type="Int32" />
                   <asp:Parameter Name="original_c_name" Type="String" />
                   <asp:Parameter Name="original_c_address" Type="String" />
                   <asp:Parameter Name="original_c_state" Type="String" />
                   <asp:Parameter Name="original_c_city" Type="String" />
                   <asp:Parameter Name="original_c_mobile_no" Type="Int64" />
                   <asp:Parameter Name="original_c_email_id" Type="String" />
                   <asp:Parameter Name="original_c_order_description" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pncConnectionString %>" SelectCommand="SELECT * FROM [client_tbl]"></asp:SqlDataSource>

        </div>


</asp:Content>

