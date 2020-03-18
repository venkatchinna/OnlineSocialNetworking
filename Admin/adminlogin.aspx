<%@ Page Language="C#" MasterPageFile="~/Admin/Adminlogin.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Admin_adminlogin" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table style="width: 100%; position: static">
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="font-size: 12pt; color: #ffffff"><strong>Admin UserID:</strong></span></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtemail" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="please Insert the UserName ">*</asp:RequiredFieldValidator><span style="color: #ffffff"><strong>
                    </strong></span>
            </td>
        </tr>
        <tr style="font-weight: bold; color: #ffffff">
            <td style="width: 50%; height: 22px; text-align: right">
                <span style="font-size: 12pt">Password:</span></td>
            <td style="width: 50%; height: 22px">
                <asp:TextBox ID="txtpass" runat="server" Style="position: static" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                    ErrorMessage="Please Insert the Password">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Button6" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    OnClick="Button6_Click" Style="position: static" Text="Login" Width="68px" /></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblerror" runat="server" Font-Bold="True" ForeColor="Red" Style="position: static"></asp:Label><br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
