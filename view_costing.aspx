<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_costing.aspx.cs" Inherits="view_costing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <header class="panel-heading" >
                              Costing Record
                          </header> <br/>

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="costing_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="costing_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="costing_id"></asp:BoundField>
            <asp:BoundField DataField="c_name" HeaderText="Name" SortExpression="c_name"></asp:BoundField>
            <asp:BoundField DataField="c_date" HeaderText="Date" SortExpression="c_date"></asp:BoundField>
            <asp:BoundField DataField="c_info" HeaderText="Desc." SortExpression="c_info"></asp:BoundField>
            <asp:BoundField DataField="c_ply" HeaderText="Ply" SortExpression="c_ply"></asp:BoundField>
            <asp:BoundField DataField="c_sheet_size" HeaderText="Sheet Size" SortExpression="c_sheet_size"></asp:BoundField>
            <asp:BoundField DataField="c_weight" HeaderText="Weight" SortExpression="c_weight"></asp:BoundField>
            <asp:BoundField DataField="c_rate" HeaderText="Init. Rate" SortExpression="c_rate"></asp:BoundField>
            <asp:BoundField DataField="c_print" HeaderText="Print" SortExpression="c_print"></asp:BoundField>
            <asp:BoundField DataField="c_labor" HeaderText="Labor" SortExpression="c_labor"></asp:BoundField>
            <asp:BoundField DataField="c_freight" HeaderText="Freight" SortExpression="c_freight"></asp:BoundField>
            <asp:BoundField DataField="c_profit" HeaderText="Profit" SortExpression="c_profit"></asp:BoundField>
            <asp:BoundField DataField="c_final_rate" HeaderText="Final Rate" SortExpression="c_final_rate"></asp:BoundField>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [costing_tbl] WHERE [costing_id] = @original_costing_id AND [c_name] = @original_c_name AND [c_date] = @original_c_date AND [c_info] = @original_c_info AND [c_ply] = @original_c_ply AND [c_sheet_size] = @original_c_sheet_size AND [c_weight] = @original_c_weight AND [c_rate] = @original_c_rate AND [c_print] = @original_c_print AND [c_labor] = @original_c_labor AND [c_freight] = @original_c_freight AND [c_profit] = @original_c_profit AND [c_final_rate] = @original_c_final_rate" InsertCommand="INSERT INTO [costing_tbl] ([c_name], [c_date], [c_info], [c_ply], [c_sheet_size], [c_weight], [c_rate], [c_print], [c_labor], [c_freight], [c_profit], [c_final_rate]) VALUES (@c_name, @c_date, @c_info, @c_ply, @c_sheet_size, @c_weight, @c_rate, @c_print, @c_labor, @c_freight, @c_profit, @c_final_rate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [costing_tbl]" UpdateCommand="UPDATE [costing_tbl] SET [c_name] = @c_name, [c_date] = @c_date, [c_info] = @c_info, [c_ply] = @c_ply, [c_sheet_size] = @c_sheet_size, [c_weight] = @c_weight, [c_rate] = @c_rate, [c_print] = @c_print, [c_labor] = @c_labor, [c_freight] = @c_freight, [c_profit] = @c_profit, [c_final_rate] = @c_final_rate WHERE [costing_id] = @original_costing_id AND [c_name] = @original_c_name AND [c_date] = @original_c_date AND [c_info] = @original_c_info AND [c_ply] = @original_c_ply AND [c_sheet_size] = @original_c_sheet_size AND [c_weight] = @original_c_weight AND [c_rate] = @original_c_rate AND [c_print] = @original_c_print AND [c_labor] = @original_c_labor AND [c_freight] = @original_c_freight AND [c_profit] = @original_c_profit AND [c_final_rate] = @original_c_final_rate">
        <DeleteParameters>
            <asp:Parameter Name="original_costing_id" Type="Int32" />
            <asp:Parameter Name="original_c_name" Type="String" />
            <asp:Parameter Name="original_c_date" DbType="Date" />
            <asp:Parameter Name="original_c_info" Type="String" />
            <asp:Parameter Name="original_c_ply" Type="Int32" />
            <asp:Parameter Name="original_c_sheet_size" Type="String" />
            <asp:Parameter Name="original_c_weight" Type="String" />
            <asp:Parameter Name="original_c_rate" Type="String" />
            <asp:Parameter Name="original_c_print" Type="Int32" />
            <asp:Parameter Name="original_c_labor" Type="Int32" />
            <asp:Parameter Name="original_c_freight" Type="Int32" />
            <asp:Parameter Name="original_c_profit" Type="Int32" />
            <asp:Parameter Name="original_c_final_rate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="c_name" Type="String" />
            <asp:Parameter Name="c_date" DbType="Date" />
            <asp:Parameter Name="c_info" Type="String" />
            <asp:Parameter Name="c_ply" Type="Int32" />
            <asp:Parameter Name="c_sheet_size" Type="String" />
            <asp:Parameter Name="c_weight" Type="String" />
            <asp:Parameter Name="c_rate" Type="String" />
            <asp:Parameter Name="c_print" Type="Int32" />
            <asp:Parameter Name="c_labor" Type="Int32" />
            <asp:Parameter Name="c_freight" Type="Int32" />
            <asp:Parameter Name="c_profit" Type="Int32" />
            <asp:Parameter Name="c_final_rate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="c_name" Type="String" />
            <asp:Parameter Name="c_date" DbType="Date" />
            <asp:Parameter Name="c_info" Type="String" />
            <asp:Parameter Name="c_ply" Type="Int32" />
            <asp:Parameter Name="c_sheet_size" Type="String" />
            <asp:Parameter Name="c_weight" Type="String" />
            <asp:Parameter Name="c_rate" Type="String" />
            <asp:Parameter Name="c_print" Type="Int32" />
            <asp:Parameter Name="c_labor" Type="Int32" />
            <asp:Parameter Name="c_freight" Type="Int32" />
            <asp:Parameter Name="c_profit" Type="Int32" />
            <asp:Parameter Name="c_final_rate" Type="String" />
            <asp:Parameter Name="original_costing_id" Type="Int32" />
            <asp:Parameter Name="original_c_name" Type="String" />
            <asp:Parameter Name="original_c_date" DbType="Date" />
            <asp:Parameter Name="original_c_info" Type="String" />
            <asp:Parameter Name="original_c_ply" Type="Int32" />
            <asp:Parameter Name="original_c_sheet_size" Type="String" />
            <asp:Parameter Name="original_c_weight" Type="String" />
            <asp:Parameter Name="original_c_rate" Type="String" />
            <asp:Parameter Name="original_c_print" Type="Int32" />
            <asp:Parameter Name="original_c_labor" Type="Int32" />
            <asp:Parameter Name="original_c_freight" Type="Int32" />
            <asp:Parameter Name="original_c_profit" Type="Int32" />
            <asp:Parameter Name="original_c_final_rate" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

