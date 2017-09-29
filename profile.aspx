<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <header class="panel-heading" >
                              Registered Users
                          </header> <br/><br/>
                              <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="u_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical">
                                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                  <Columns>
                                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                                      <asp:BoundField DataField="u_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="u_id"></asp:BoundField>
                                      <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name"></asp:BoundField>
                                      <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name"></asp:BoundField>
                                      <asp:BoundField DataField="birth_date" HeaderText=" Birth Date" SortExpression="birth_date"></asp:BoundField>
                                      <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender"></asp:BoundField>
                                      <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address"></asp:BoundField>
                                      <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country"></asp:BoundField>
                                      <asp:BoundField DataField="state" HeaderText="State" SortExpression="state"></asp:BoundField>
                                      <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
                                      <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." SortExpression="mobile_no"></asp:BoundField>
                                      <asp:BoundField DataField="email_id" HeaderText="Email ID" SortExpression="email_id"></asp:BoundField>
                                      <asp:BoundField DataField="user_name" HeaderText="User Name" SortExpression="user_name"></asp:BoundField>
                                      <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password"></asp:BoundField>
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

                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pncsystemConnectionString %>" DeleteCommand="DELETE FROM [reg_user_tbl] WHERE [u_id] = @original_u_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [birth_date] = @original_birth_date AND [gender] = @original_gender AND [address] = @original_address AND [country] = @original_country AND [state] = @original_state AND [city] = @original_city AND [mobile_no] = @original_mobile_no AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL)) AND [user_name] = @original_user_name AND [password] = @original_password" InsertCommand="INSERT INTO [reg_user_tbl] ([first_name], [last_name], [birth_date], [gender], [address], [country], [state], [city], [mobile_no], [email_id], [user_name], [password]) VALUES (@first_name, @last_name, @birth_date, @gender, @address, @country, @state, @city, @mobile_no, @email_id, @user_name, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [reg_user_tbl]" UpdateCommand="UPDATE [reg_user_tbl] SET [first_name] = @first_name, [last_name] = @last_name, [birth_date] = @birth_date, [gender] = @gender, [address] = @address, [country] = @country, [state] = @state, [city] = @city, [mobile_no] = @mobile_no, [email_id] = @email_id, [user_name] = @user_name, [password] = @password WHERE [u_id] = @original_u_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [birth_date] = @original_birth_date AND [gender] = @original_gender AND [address] = @original_address AND [country] = @original_country AND [state] = @original_state AND [city] = @original_city AND [mobile_no] = @original_mobile_no AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL)) AND [user_name] = @original_user_name AND [password] = @original_password">
                                  <DeleteParameters>
                                      <asp:Parameter Name="original_u_id" Type="Int32" />
                                      <asp:Parameter Name="original_first_name" Type="String" />
                                      <asp:Parameter Name="original_last_name" Type="String" />
                                      <asp:Parameter Name="original_birth_date" DbType="Date" />
                                      <asp:Parameter Name="original_gender" Type="String" />
                                      <asp:Parameter Name="original_address" Type="String" />
                                      <asp:Parameter Name="original_country" Type="String" />
                                      <asp:Parameter Name="original_state" Type="String" />
                                      <asp:Parameter Name="original_city" Type="String" />
                                      <asp:Parameter Name="original_mobile_no" Type="Int64" />
                                      <asp:Parameter Name="original_email_id" Type="String" />
                                      <asp:Parameter Name="original_user_name" Type="String" />
                                      <asp:Parameter Name="original_password" Type="String" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="first_name" Type="String" />
                                      <asp:Parameter Name="last_name" Type="String" />
                                      <asp:Parameter Name="birth_date" DbType="Date" />
                                      <asp:Parameter Name="gender" Type="String" />
                                      <asp:Parameter Name="address" Type="String" />
                                      <asp:Parameter Name="country" Type="String" />
                                      <asp:Parameter Name="state" Type="String" />
                                      <asp:Parameter Name="city" Type="String" />
                                      <asp:Parameter Name="mobile_no" Type="Int64" />
                                      <asp:Parameter Name="email_id" Type="String" />
                                      <asp:Parameter Name="user_name" Type="String" />
                                      <asp:Parameter Name="password" Type="String" />
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="first_name" Type="String" />
                                      <asp:Parameter Name="last_name" Type="String" />
                                      <asp:Parameter Name="birth_date" DbType="Date" />
                                      <asp:Parameter Name="gender" Type="String" />
                                      <asp:Parameter Name="address" Type="String" />
                                      <asp:Parameter Name="country" Type="String" />
                                      <asp:Parameter Name="state" Type="String" />
                                      <asp:Parameter Name="city" Type="String" />
                                      <asp:Parameter Name="mobile_no" Type="Int64" />
                                      <asp:Parameter Name="email_id" Type="String" />
                                      <asp:Parameter Name="user_name" Type="String" />
                                      <asp:Parameter Name="password" Type="String" />
                                      <asp:Parameter Name="original_u_id" Type="Int32" />
                                      <asp:Parameter Name="original_first_name" Type="String" />
                                      <asp:Parameter Name="original_last_name" Type="String" />
                                      <asp:Parameter Name="original_birth_date" DbType="Date" />
                                      <asp:Parameter Name="original_gender" Type="String" />
                                      <asp:Parameter Name="original_address" Type="String" />
                                      <asp:Parameter Name="original_country" Type="String" />
                                      <asp:Parameter Name="original_state" Type="String" />
                                      <asp:Parameter Name="original_city" Type="String" />
                                      <asp:Parameter Name="original_mobile_no" Type="Int64" />
                                      <asp:Parameter Name="original_email_id" Type="String" />
                                      <asp:Parameter Name="original_user_name" Type="String" />
                                      <asp:Parameter Name="original_password" Type="String" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>

                          

</asp:Content>

