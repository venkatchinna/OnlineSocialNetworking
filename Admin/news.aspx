<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Admin_news" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;<table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 36pt; color: #ffffff; font-family: Chiller">&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;Admin News
                    Page &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></strong></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right; height: 26px;">
                <strong><span style="color: #ffffff">News</span></strong></td>
            <td style="width: 50%; height: 26px;">
                <asp:TextBox ID="txtnews" runat="server" Style="position: static"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnews"
                    ErrorMessage="please insert the news first">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: right">
                <strong><span style="color: #ffffff">Date</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtdate" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate"
                    ErrorMessage="please insret the date first">*</asp:RequiredFieldValidator></td>
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
                <strong><span style="color: #ffffff">News detail</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtndetail" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtndetail"
                    ErrorMessage="please fill the detail first">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 50%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="txtsend" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    Style="position: static" Text="Send" Width="98px" OnClick="txtsend_Click" /></td>
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
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="width: 100%">
                &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" DataKeyNames="anid" DataSourceID="SqlDataSource1" Width="100%">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <Columns>
                        <asp:BoundField DataField="anid" HeaderText="News ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="anid" />
                        <asp:BoundField DataField="anew" HeaderText="News" SortExpression="anew" />
                        <asp:BoundField DataField="andate" HeaderText="News Date" SortExpression="andate" />
                        <asp:BoundField DataField="andetail" HeaderText="News Details" SortExpression="andetail" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblanews] WHERE [anid] = @original_anid"
                    InsertCommand="INSERT INTO [tblanews] ([anew], [andate], [andetail]) VALUES (@anew, @andate, @andetail)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblanews]"
                    UpdateCommand="UPDATE [tblanews] SET [anew] = @anew, [andate] = @andate, [andetail] = @andetail WHERE [anid] = @original_anid AND [anew] = @original_anew AND [andate] = @original_andate AND [andetail] = @original_andetail">
                    <DeleteParameters>
                        <asp:Parameter Name="original_anid" Type="Int32" />
                        <asp:Parameter Name="original_anew" Type="String" />
                        <asp:Parameter Name="original_andate" Type="String" />
                        <asp:Parameter Name="original_andetail" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="anew" Type="String" />
                        <asp:Parameter Name="andate" Type="String" />
                        <asp:Parameter Name="andetail" Type="String" />
                        <asp:Parameter Name="original_anid" Type="Int32" />
                        <asp:Parameter Name="original_anew" Type="String" />
                        <asp:Parameter Name="original_andate" Type="String" />
                        <asp:Parameter Name="original_andetail" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="anew" Type="String" />
                        <asp:Parameter Name="andate" Type="String" />
                        <asp:Parameter Name="andetail" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;
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
    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</asp:Content>

