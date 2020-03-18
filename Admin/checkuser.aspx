<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="checkuser.aspx.cs" Inherits="Admin_checkuser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table style="width: 100%; position: static">
        <tr>
            <td style="width: 100%; vertical-align: middle; text-align: center;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="city">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT DISTINCT [city] FROM [profile1]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100%; vertical-align: middle; height: 21px; text-align: left;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server"
                    AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="pid" DataSourceID="SqlDataSource2"
                    GridLines="Vertical" Width="100%" HorizontalAlign="Center">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <Columns>
                        <asp:ImageField DataAlternateTextField="Photos" DataAlternateTextFormatString="{0}"
                            DataImageUrlField="Photos" DataImageUrlFormatString="{0}">
                            <ControlStyle Height="150px" Width="150px" />
                            <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" />
                            <FooterStyle Height="150px" HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="email" HeaderText="UserID" SortExpression="email" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True"
                            SortExpression="pid" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="Gainsboro" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [profile1] WHERE [pid] = @original_pid"
                    InsertCommand="INSERT INTO [profile1] ([Photos], [email], [city]) VALUES (@Photos, @email, @city)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Photos], [email], [city], [pid] FROM [profile1] WHERE ([city] = @city)"
                    UpdateCommand="UPDATE [profile1] SET [Photos] = @Photos, [email] = @email, [city] = @city WHERE [pid] = @original_pid AND [Photos] = @original_Photos AND [email] = @original_email AND [city] = @original_city">
                    <DeleteParameters>
                        <asp:Parameter Name="original_pid" Type="Int32" />
                        <asp:Parameter Name="original_Photos" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Photos" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="original_pid" Type="Int32" />
                        <asp:Parameter Name="original_Photos" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Photos" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
        </tr>
    </table>
</asp:Content>

