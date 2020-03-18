<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Home_Feedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 24pt; color: #ffffff; font-family: Chiller">Feedback</span></strong></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <span style="color: #ffffff"><strong>Name</strong></span></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtnm" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Address</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtadd" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">City</span></strong></td>
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
                <strong><span style="color: #ffffff">Country</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtcount" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Phone no.</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtphone" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Mobile</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtmobile" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">F.date</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtdate" runat="server" Style="position: static"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
            </td>
            <td style="width: 50%">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black"
                    DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black"
                    Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged"
                    TitleFormat="Month" Width="400px">
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
                        ForeColor="#333333" Width="1%" />
                    <TodayDayStyle BackColor="#CCCC99" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333"
                        Height="10pt" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"
                        Height="14pt" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Feedback</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtfeed" runat="server" Style="position: static" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Submit" Width="81px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblseccess" runat="server" Font-Bold="True" ForeColor="#FFFFC0" Style="position: static"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

