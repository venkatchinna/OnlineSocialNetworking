<%@ Page Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="height: 17px; text-align: center">
                <strong><span style="font-size: 32pt;"><span style="font-family: Verdana"><span style="color: #996633">
                    <span
                    style="text-decoration: underline; font-size: 24pt;">Sign in</span> </span>
                </span>
                </span></strong>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="font-size: 12pt; color: #663333">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; UserID:&nbsp;</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtemail" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right; height: 28px;">
                <strong><span style="font-size: 12pt; color: #663333">Password: </span></strong>
            </td>
            <td style="width: 50%; height: 28px;">
                <asp:TextBox ID="txtpass" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Button ID="btnlogin" runat="server" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    OnClick="Button1_Click" Style="position: static" Text="Login" Width="72px" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" PostBackUrl="~/Register.aspx">Sign up</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" PostBackUrl="~/forget.aspx">Forget Password ?</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                &nbsp;</td>
            <td style="width: 50%">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [profile1]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

