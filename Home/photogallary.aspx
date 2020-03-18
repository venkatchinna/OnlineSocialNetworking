<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="photogallary.aspx.cs" Inherits="Home_photogallary" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <table style="width: 100%; position: static">
        <tr>
            <td style="width: 30%; text-align: right;">
                <strong><span style="color: #ffffff">
                Photos</span></strong></td>
            <td style="width: 70%">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" /></td>
        </tr>
        <tr>
            <td style="width: 30%; text-align: right;">
                <strong><span style="color: #ffffff">
                Description</span></strong></td>
            <td style="width: 70%">
                <asp:TextBox ID="txtdec" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 30%">
            </td>
            <td style="width: 70%">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    OnClick="btnsubmit_Click" Style="position: static" Text="Submit" Width="73px" /></td>
        </tr>
        <tr>
            <td style="width: 30%">
            </td>
            <td style="width: 70%">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="width: 100%">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966"
                    BorderStyle="Groove" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1"
                    GridLines="Both" RepeatColumns="3" Width="100%">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <ItemTemplate>
                        &nbsp;<asp:Image ID="Image1" runat="server" BorderColor="#0000C0" BorderStyle="Groove"
                            BorderWidth="3px" Height="150px" ImageUrl='<%# Eval("purl", "{0}") %>' Width="150px" /><br />
                        <asp:Label ID="desLabel" runat="server" Font-Bold="True" ForeColor="#C00000" Text='<%# Eval("des") %>'></asp:Label><br />
                        <br />
                    </ItemTemplate>
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [purl], [des] FROM [tblphotogallary] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

