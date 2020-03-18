<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="checkprofile.aspx.cs" Inherits="Home_checkprofile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <span style="font-size: 24pt; color: #ffffff; font-family: Chiller"><strong>Update Your
                    Profile</strong></span></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:TextBox ID="txtProEmail" runat="server" Style="position: static" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Chkprofile" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Check Profile" OnClick="Chkprofile_Click" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">First Name</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtfnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Middle Name</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtmnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Last Name</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtlnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Gender</span></strong></td>
            <td style="width: 50%">
                <asp:RadioButton ID="rbtmale" runat="server" Style="position: static" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" Style="position: static" Text="Female" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Birth of date</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtdate" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="color: #ffffff"><strong>City</strong></span></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtct" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">State</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtstate" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Pin</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtpin" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Phone no.</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtphone" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Mobile no.</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtmobile" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Update" Width="83px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblsuccess" runat="server" Font-Bold="True" ForeColor="#000040" Style="position: static"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

