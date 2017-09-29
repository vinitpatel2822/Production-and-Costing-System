<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_delivery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
         <header class="panel-heading" >
                              Delivery Report
                          </header> <br/>
         <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="d_id" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="Vertical">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="d_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="d_id"></asp:BoundField>
                 <asp:BoundField DataField="d_date" HeaderText="Date" SortExpression="d_date"></asp:BoundField>
                 <asp:BoundField DataField="d_time" HeaderText="Time" SortExpression="d_time"></asp:BoundField>
                 <asp:BoundField DataField="d_client_name" HeaderText="Name" SortExpression="d_client_name"></asp:BoundField>
                 <asp:BoundField DataField="d_address" HeaderText="Address" SortExpression="d_address"></asp:BoundField>
                 <asp:BoundField DataField="d_mobile_no" HeaderText="Mobile No." SortExpression="d_mobile_no"></asp:BoundField>
                 <asp:BoundField DataField="d_email_id" HeaderText="Email ID" SortExpression="d_email_id"></asp:BoundField>
                 <asp:BoundField DataField="d_order_description" HeaderText="Order Desc." SortExpression="d_order_description"></asp:BoundField>
                 <asp:BoundField DataField="d_quantity" HeaderText="Quantity" SortExpression="d_quantity"></asp:BoundField>
                 <asp:BoundField DataField="d_vehicle_no" HeaderText="Vehicle No." SortExpression="d_vehicle_no"></asp:BoundField>
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [delivery_tbl] WHERE [d_id] = @original_d_id AND [d_date] = @original_d_date AND [d_time] = @original_d_time AND [d_client_name] = @original_d_client_name AND [d_address] = @original_d_address AND [d_mobile_no] = @original_d_mobile_no AND (([d_email_id] = @original_d_email_id) OR ([d_email_id] IS NULL AND @original_d_email_id IS NULL)) AND [d_order_description] = @original_d_order_description AND [d_quantity] = @original_d_quantity AND [d_vehicle_no] = @original_d_vehicle_no" InsertCommand="INSERT INTO [delivery_tbl] ([d_date], [d_time], [d_client_name], [d_address], [d_mobile_no], [d_email_id], [d_order_description], [d_quantity], [d_vehicle_no]) VALUES (@d_date, @d_time, @d_client_name, @d_address, @d_mobile_no, @d_email_id, @d_order_description, @d_quantity, @d_vehicle_no)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [delivery_tbl]" UpdateCommand="UPDATE [delivery_tbl] SET [d_date] = @d_date, [d_time] = @d_time, [d_client_name] = @d_client_name, [d_address] = @d_address, [d_mobile_no] = @d_mobile_no, [d_email_id] = @d_email_id, [d_order_description] = @d_order_description, [d_quantity] = @d_quantity, [d_vehicle_no] = @d_vehicle_no WHERE [d_id] = @original_d_id AND [d_date] = @original_d_date AND [d_time] = @original_d_time AND [d_client_name] = @original_d_client_name AND [d_address] = @original_d_address AND [d_mobile_no] = @original_d_mobile_no AND (([d_email_id] = @original_d_email_id) OR ([d_email_id] IS NULL AND @original_d_email_id IS NULL)) AND [d_order_description] = @original_d_order_description AND [d_quantity] = @original_d_quantity AND [d_vehicle_no] = @original_d_vehicle_no">
             <DeleteParameters>
                 <asp:Parameter Name="original_d_id" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_d_date" />
                 <asp:Parameter DbType="Time" Name="original_d_time" />
                 <asp:Parameter Name="original_d_client_name" Type="String" />
                 <asp:Parameter Name="original_d_address" Type="String" />
                 <asp:Parameter Name="original_d_mobile_no" Type="Int64" />
                 <asp:Parameter Name="original_d_email_id" Type="String" />
                 <asp:Parameter Name="original_d_order_description" Type="String" />
                 <asp:Parameter Name="original_d_quantity" Type="Int32" />
                 <asp:Parameter Name="original_d_vehicle_no" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter DbType="Date" Name="d_date" />
                 <asp:Parameter DbType="Time" Name="d_time" />
                 <asp:Parameter Name="d_client_name" Type="String" />
                 <asp:Parameter Name="d_address" Type="String" />
                 <asp:Parameter Name="d_mobile_no" Type="Int64" />
                 <asp:Parameter Name="d_email_id" Type="String" />
                 <asp:Parameter Name="d_order_description" Type="String" />
                 <asp:Parameter Name="d_quantity" Type="Int32" />
                 <asp:Parameter Name="d_vehicle_no" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter DbType="Date" Name="d_date" />
                 <asp:Parameter DbType="Time" Name="d_time" />
                 <asp:Parameter Name="d_client_name" Type="String" />
                 <asp:Parameter Name="d_address" Type="String" />
                 <asp:Parameter Name="d_mobile_no" Type="Int64" />
                 <asp:Parameter Name="d_email_id" Type="String" />
                 <asp:Parameter Name="d_order_description" Type="String" />
                 <asp:Parameter Name="d_quantity" Type="Int32" />
                 <asp:Parameter Name="d_vehicle_no" Type="String" />
                 <asp:Parameter Name="original_d_id" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_d_date" />
                 <asp:Parameter DbType="Time" Name="original_d_time" />
                 <asp:Parameter Name="original_d_client_name" Type="String" />
                 <asp:Parameter Name="original_d_address" Type="String" />
                 <asp:Parameter Name="original_d_mobile_no" Type="Int64" />
                 <asp:Parameter Name="original_d_email_id" Type="String" />
                 <asp:Parameter Name="original_d_order_description" Type="String" />
                 <asp:Parameter Name="original_d_quantity" Type="Int32" />
                 <asp:Parameter Name="original_d_vehicle_no" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
        </div>
</asp:Content>


