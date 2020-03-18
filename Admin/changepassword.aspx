<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="Admin_changepassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;<table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 36pt; color: #ffffff; font-family: Chiller">Change Password</span></strong></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Current Password</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtpass" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right; height: 26px;">
                <strong><span style="color: #ffffff">Password</span></strong></td>
            <td style="width: 50%; height: 26px;">
                <asp:TextBox ID="txtnewpass" runat="server" Style="position: static" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass"
                    ControlToValidate="txtrepass" ErrorMessage="Does not match password">*</asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Re-Password</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtrepass" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Submit" Width="98px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblsuccess" runat="server" Font-Bold="True" ForeColor="#000040" Style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

