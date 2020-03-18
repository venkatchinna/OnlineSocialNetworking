<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="scrap.aspx.cs" Inherits="Home_scrap" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td style="width: 100%; background-color: #999966">
                <strong>My Scraps..</strong></td>
        </tr>
        <tr>
            <td style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                    Width="100%">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sname" HeaderText="Sender's Name" SortExpression="sname" />
                        <asp:BoundField DataField="sdetails" HeaderText="Scrap Details" SortExpression="sdetails" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblScrap] WHERE [sid] = @original_sid"
                    InsertCommand="INSERT INTO [tblScrap] ([sdetails], [sname]) VALUES (@sdetails, @sname)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [sdetails], [sname], [sid] FROM [tblScrap] WHERE ([sch] = @sch)"
                    UpdateCommand="UPDATE [tblScrap] SET [sdetails] = @sdetails, [sname] = @sname WHERE [sid] = @original_sid AND [sdetails] = @original_sdetails AND [sname] = @original_sname">
                    <DeleteParameters>
                        <asp:Parameter Name="original_sid" Type="Int32" />
                        <asp:Parameter Name="original_sdetails" Type="String" />
                        <asp:Parameter Name="original_sname" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sdetails" Type="String" />
                        <asp:Parameter Name="sname" Type="String" />
                        <asp:Parameter Name="original_sid" Type="Int32" />
                        <asp:Parameter Name="original_sdetails" Type="String" />
                        <asp:Parameter Name="original_sname" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="sch" SessionField="uname" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sdetails" Type="String" />
                        <asp:Parameter Name="sname" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

