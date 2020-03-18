<%@ Page Language="C#" MasterPageFile="~/Profile/profile1.master" AutoEventWireup="true" CodeFile="profile1.aspx.cs" Inherits="Profile_profile1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <span style="font-size: 36pt; color: #ffffff; font-family: Chiller"><strong>Profile</strong></span></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <span style="font-size: 12pt; color: #ffffff"><strong>Photo</strong></span></td>
            <td style="width: 50%; text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static; text-align: left" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">First Name</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtfnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Middle Name</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtmnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Last Name</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtlnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Gender</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:RadioButton ID="rbtmale" runat="server" Style="position: static" Font-Bold="True" ForeColor="White" Text="Male" Checked="True" GroupName="1" />
                <asp:RadioButton ID="RadioButton2" runat="server" Style="position: static" Font-Bold="True" ForeColor="White" Text="Female" GroupName="1" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Birth of date</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:DropDownList ID="ddlday" runat="server" Style="position: static">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" Style="position: static">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" Style="position: static">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">City</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtct" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">State</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtstate" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Pin</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtpin" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Phone no.</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtphone" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right;">
                <strong><span style="font-size: 12pt; color: #ffffff">Mobile no.</span></strong></td>
            <td style="width: 50%; text-align: left">
                <asp:TextBox ID="txtmobile" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%; text-align: left">
                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Submit" Width="89px" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;
</asp:Content>

