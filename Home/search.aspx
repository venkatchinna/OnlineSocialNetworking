<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Home_search" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Style="width: 100%;
        position: static">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="email" HeaderText="UserID" SortExpression="email" />
            <asp:BoundField DataField="lnm" HeaderText="Last Name" SortExpression="lnm" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:TemplateField></asp:TemplateField>
        </Columns>
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [email], [Photos], [fnm], [lnm], [city], [state] FROM [profile1] WHERE (([email] LIKE  + @email + '%') OR ([fnm] LIKE  + @fnm + '%') OR ([lnm] LIKE  + @lnm + '%') OR ([city] LIKE  + @city + '%') OR ([state] LIKE  + @state + '%') AND ([email] NOT LIKE '%' + @email2 + '%')) ORDER BY [email]&#13;&#10;">
        <SelectParameters>
            <asp:QueryStringParameter Name="email" QueryStringField="sd" Type="String" />
            <asp:QueryStringParameter Name="fnm" QueryStringField="sd" Type="String" />
            <asp:QueryStringParameter Name="lnm" QueryStringField="sd" Type="String" />
            <asp:QueryStringParameter Name="city" QueryStringField="sd" Type="String" />
            <asp:QueryStringParameter Name="state" QueryStringField="sd" Type="String" />
            <asp:SessionParameter Name="email2" SessionField="uname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

