<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="Deletefriends.aspx.cs" Inherits="Home_Deletefriends" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 100%; height: 21px">
                &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="req_from,req_to" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="req_from" HeaderText="Friends UserID" ReadOnly="True"
                            SortExpression="req_from" />
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
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblRequest] WHERE [req_from] = @original_req_from AND [req_to] = @original_req_to AND [rid] = @original_rid AND [status] = @original_status"
                    InsertCommand="INSERT INTO [tblRequest] ([req_from], [req_to], [status]) VALUES (@req_from, @req_to, @status)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [rid], [req_from], [req_to], [status] FROM [tblRequest] WHERE (([req_to] = @req_to) AND ([status] = @status))"
                    UpdateCommand="UPDATE [tblRequest] SET [rid] = @rid, [status] = @status WHERE [req_from] = @original_req_from AND [req_to] = @original_req_to AND [rid] = @original_rid AND [status] = @original_status">
                    <DeleteParameters>
                        <asp:Parameter Name="original_req_from" Type="String" />
                        <asp:Parameter Name="original_req_to" Type="String" />
                        <asp:Parameter Name="original_rid" Type="Int32" />
                        <asp:Parameter Name="original_status" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="rid" Type="Int32" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="original_req_from" Type="String" />
                        <asp:Parameter Name="original_req_to" Type="String" />
                        <asp:Parameter Name="original_rid" Type="Int32" />
                        <asp:Parameter Name="original_status" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="req_to" SessionField="uname" Type="String" />
                        <asp:Parameter DefaultValue="y" Name="status" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="req_from" Type="String" />
                        <asp:Parameter Name="req_to" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

