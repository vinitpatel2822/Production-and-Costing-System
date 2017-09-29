<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_order.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
         <header class="panel-heading" >
                              Order Record
                          </header> <br/>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"  DataKeyNames="o_id" DataSourceID="SqlDataSource1" Height="164px" Width="829px" CellPadding="4" ForeColor="#333333" GridLines="Vertical">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="o_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="o_id"></asp:BoundField>
                 <asp:BoundField DataField="o_date" HeaderText="Date" SortExpression="o_date"></asp:BoundField>
                 <asp:BoundField DataField="o_client_name" HeaderText="Client Name" SortExpression="o_client_name"></asp:BoundField>
                 <asp:BoundField DataField="o_order_description" HeaderText="Order Desc." SortExpression="o_order_description"></asp:BoundField>
                 <asp:BoundField DataField="o_quantity" HeaderText="Quantity" SortExpression="o_quantity"></asp:BoundField>
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [order_tbl] WHERE [o_id] = @original_o_id AND [o_date] = @original_o_date AND [o_client_name] = @original_o_client_name AND [o_order_description] = @original_o_order_description AND [o_quantity] = @original_o_quantity" InsertCommand="INSERT INTO [order_tbl] ([o_date], [o_client_name], [o_order_description], [o_quantity]) VALUES (@o_date, @o_client_name, @o_order_description, @o_quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order_tbl]" UpdateCommand="UPDATE [order_tbl] SET [o_date] = @o_date, [o_client_name] = @o_client_name, [o_order_description] = @o_order_description, [o_quantity] = @o_quantity WHERE [o_id] = @original_o_id AND [o_date] = @original_o_date AND [o_client_name] = @original_o_client_name AND [o_order_description] = @original_o_order_description AND [o_quantity] = @original_o_quantity">
             <DeleteParameters>
                 <asp:Parameter Name="original_o_id" Type="Int32" />
                 <asp:Parameter Name="original_o_date" DbType="Date" />
                 <asp:Parameter Name="original_o_client_name" Type="String" />
                 <asp:Parameter Name="original_o_order_description" Type="String" />
                 <asp:Parameter Name="original_o_quantity" Type="Int64" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="o_date" DbType="Date" />
                 <asp:Parameter Name="o_client_name" Type="String" />
                 <asp:Parameter Name="o_order_description" Type="String" />
                 <asp:Parameter Name="o_quantity" Type="Int64" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="o_date" DbType="Date" />
                 <asp:Parameter Name="o_client_name" Type="String" />
                 <asp:Parameter Name="o_order_description" Type="String" />
                 <asp:Parameter Name="o_quantity" Type="Int64" />
                 <asp:Parameter Name="original_o_id" Type="Int32" />
                 <asp:Parameter Name="original_o_date" DbType="Date" />
                 <asp:Parameter Name="original_o_client_name" Type="String" />
                 <asp:Parameter Name="original_o_order_description" Type="String" />
                 <asp:Parameter Name="original_o_quantity" Type="Int64" />
             </UpdateParameters>
         </asp:SqlDataSource>
        </div>
</asp:Content>

