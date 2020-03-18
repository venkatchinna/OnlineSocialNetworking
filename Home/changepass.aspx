<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="Home_changepass" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="vertical-align: middle; color: white; font-family: Chiller;
                text-align: center">
                <h2>Change Password</h2></td>
        </tr>
        <tr>
            <td style="width: 50%; color: white; text-align: right;">
                <strong>Current Password</strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; color: white; text-align: right; height: 26px;">
                <strong>New Password</strong></td>
            <td style="width: 50%; height: 26px;">
                <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not match Password" ControlToCompare="txtnpass" ControlToValidate="txtrepass">*</asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 50%; color: white; text-align: right">
                <strong>Re-Password</strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtrepass" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; color: white; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="Navy"
                    Text="Submit" OnClick="btnsubmit_Click" /></td>
        </tr>
    </table>
</asp:Content>

