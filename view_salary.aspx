<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_salary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
         <header class="panel-heading" >
                              Salary Record
                          </header> <br/>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="s_id" DataSourceID="SqlDataSource1" Height="221px" Width="961px" CellPadding="4" ForeColor="#333333" GridLines="Vertical">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="s_id" HeaderText="s_id" InsertVisible="False" ReadOnly="True" SortExpression="s_id"></asp:BoundField>
                 <asp:BoundField DataField="s_date" HeaderText="s_date" SortExpression="s_date"></asp:BoundField>
                 <asp:BoundField DataField="s_production" HeaderText="s_production" SortExpression="s_production"></asp:BoundField>
                 <asp:BoundField DataField="corugation" HeaderText="corugation" SortExpression="corugation"></asp:BoundField>
                 <asp:BoundField DataField="pasting" HeaderText="pasting" SortExpression="pasting"></asp:BoundField>
                 <asp:BoundField DataField="printing" HeaderText="printing" SortExpression="printing"></asp:BoundField>
                 <asp:BoundField DataField="punching" HeaderText="punching" SortExpression="punching"></asp:BoundField>
                 <asp:BoundField DataField="packing" HeaderText="packing" SortExpression="packing"></asp:BoundField>
                 <asp:BoundField DataField="total" HeaderText="total" SortExpression="total"></asp:BoundField>
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [salary_tbl] WHERE [s_id] = @original_s_id AND [s_date] = @original_s_date AND [s_production] = @original_s_production AND [corugation] = @original_corugation AND [pasting] = @original_pasting AND [printing] = @original_printing AND [punching] = @original_punching AND [packing] = @original_packing AND [total] = @original_total" InsertCommand="INSERT INTO [salary_tbl] ([s_date], [s_production], [corugation], [pasting], [printing], [punching], [packing], [total]) VALUES (@s_date, @s_production, @corugation, @pasting, @printing, @punching, @packing, @total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [salary_tbl]" UpdateCommand="UPDATE [salary_tbl] SET [s_date] = @s_date, [s_production] = @s_production, [corugation] = @corugation, [pasting] = @pasting, [printing] = @printing, [punching] = @punching, [packing] = @packing, [total] = @total WHERE [s_id] = @original_s_id AND [s_date] = @original_s_date AND [s_production] = @original_s_production AND [corugation] = @original_corugation AND [pasting] = @original_pasting AND [printing] = @original_printing AND [punching] = @original_punching AND [packing] = @original_packing AND [total] = @original_total">
             <DeleteParameters>
                 <asp:Parameter Name="original_s_id" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_s_date" />
                 <asp:Parameter Name="original_s_production" Type="Int64" />
                 <asp:Parameter Name="original_corugation" Type="Int32" />
                 <asp:Parameter Name="original_pasting" Type="Int32" />
                 <asp:Parameter Name="original_printing" Type="Int32" />
                 <asp:Parameter Name="original_punching" Type="Int32" />
                 <asp:Parameter Name="original_packing" Type="Int32" />
                 <asp:Parameter Name="original_total" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter DbType="Date" Name="s_date" />
                 <asp:Parameter Name="s_production" Type="Int64" />
                 <asp:Parameter Name="corugation" Type="Int32" />
                 <asp:Parameter Name="pasting" Type="Int32" />
                 <asp:Parameter Name="printing" Type="Int32" />
                 <asp:Parameter Name="punching" Type="Int32" />
                 <asp:Parameter Name="packing" Type="Int32" />
                 <asp:Parameter Name="total" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter DbType="Date" Name="s_date" />
                 <asp:Parameter Name="s_production" Type="Int64" />
                 <asp:Parameter Name="corugation" Type="Int32" />
                 <asp:Parameter Name="pasting" Type="Int32" />
                 <asp:Parameter Name="printing" Type="Int32" />
                 <asp:Parameter Name="punching" Type="Int32" />
                 <asp:Parameter Name="packing" Type="Int32" />
                 <asp:Parameter Name="total" Type="Int32" />
                 <asp:Parameter Name="original_s_id" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_s_date" />
                 <asp:Parameter Name="original_s_production" Type="Int64" />
                 <asp:Parameter Name="original_corugation" Type="Int32" />
                 <asp:Parameter Name="original_pasting" Type="Int32" />
                 <asp:Parameter Name="original_printing" Type="Int32" />
                 <asp:Parameter Name="original_punching" Type="Int32" />
                 <asp:Parameter Name="original_packing" Type="Int32" />
                 <asp:Parameter Name="original_total" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
        </div>
</asp:Content>

