<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="searchUser.aspx.cs" Inherits="Home_searchUser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="text-transform: capitalize; width: 100%; color: black; font-family: verdana;
                background-color: white; font-variant: normal">
                Your searched information is listed below:</td>
        </tr>
        <tr>
            <td style="text-transform: capitalize; width: 100%; color: black; font-family: verdana;
                background-color: white; font-variant: normal">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="email"
                    DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                    Width="100%">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 100%">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: 20px">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("fnm", "{0}") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("lnm", "{0}") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("city", "{0}") %>'></asp:Label>,<asp:Label
                                                ID="Label5" runat="server" Text='<%# Eval("state", "{0}") %>'></asp:Label></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="email" DataNavigateUrlFormatString="requestUser.aspx?id={0}"
                            DataTextField="email" HeaderText="Show Details" Target="_blank" Text="Request Now" />
                    </Columns>
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [fnm], [lnm], [email], [city], [state] FROM [tbllogin] WHERE (([fnm] LIKE   @fnm + '%') OR ([email] LIKE   @email + '%') OR ([city] LIKE   @city + '%') OR ([state] LIKE   @state + '%') OR ([lnm] LIKE   @lnm + '%') AND ([email] NOT LIKE   @email2 + '%')) ORDER BY [email]">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="fnm" QueryStringField="sd" Type="String" />
                        <asp:QueryStringParameter Name="email" QueryStringField="sd" Type="String" />
                        <asp:QueryStringParameter Name="city" QueryStringField="sd" Type="String" />
                        <asp:QueryStringParameter Name="state" QueryStringField="sd" Type="String" />
                        <asp:QueryStringParameter Name="lnm" QueryStringField="sd" Type="String" />
                        <asp:SessionParameter Name="email2" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

