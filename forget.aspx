<%@ Page Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center; height: 49px;">
                <strong><span style="font-size: 24pt; color: #ff3300; font-family: Chiller">Forget Password
                    ?</span></strong></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="font-size: 12pt; color: #ffffff"><strong>UserID</strong></span></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtemail" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right; color: white;">
                <strong>
                Security Question</strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtsque" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="color: #ffffff"><strong>
                Ans</strong></span></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtsans" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="color: #ffffff"><strong>Password</strong></span></td>
            <td style="width: 50%">
                <asp:Label ID="lblpass" runat="server" Font-Bold="True" ForeColor="Blue" Style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Submit" Width="78px" OnClick="btnsubmit_Click" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblerror" runat="server" Style="position: static" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

