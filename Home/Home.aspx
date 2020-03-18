<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home_Home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                <strong><span style="color: #663333">&nbsp;Your FriendList</span></strong></td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [email], [Photos], [fnm], [pid] FROM [profile1] WHERE ([email] = @email)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [profile1] WHERE [pid] = @original_pid">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="frnd" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_pid" Type="Int32" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_Photos" Type="String" />
                        <asp:Parameter Name="original_fnm" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Photos" Type="String" />
                        <asp:Parameter Name="fnm" Type="String" />
                        <asp:Parameter Name="original_pid" Type="Int32" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_Photos" Type="String" />
                        <asp:Parameter Name="original_fnm" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Photos" Type="String" />
                        <asp:Parameter Name="fnm" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; text-align: center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource3"
                    ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:ImageField DataAlternateTextField="Photos" DataAlternateTextFormatString="{0}"
                            DataImageUrlField="Photos">
                            <ControlStyle BorderColor="#C00000" BorderStyle="Groove" BorderWidth="3px" Height="150px"
                                Width="150px" />
                            <ItemStyle BorderColor="#C00000" BorderStyle="Groove" BorderWidth="3px" Height="150px"
                                Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="fnm" HeaderText="Friend's Name" SortExpression="fnm" />
                        <asp:HyperLinkField DataNavigateUrlFields="email" DataNavigateUrlFormatString="~/Home/ViewProfile.aspx?em={0}"
                            DataTextField="email" DataTextFormatString="Check Profile" HeaderText="Profile"
                            Text="Profile" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

