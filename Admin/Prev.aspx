<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="Prev.aspx.cs" Inherits="Admin_Prev" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
        DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
        Width="100%">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="email" HeaderText="UserID" ReadOnly="True" SortExpression="email" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <EditRowStyle BackColor="#999999" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbllogin] WHERE [email] = @original_email AND [Status] = @original_Status"
        InsertCommand="INSERT INTO [tbllogin] ([email], [Status]) VALUES (@email, @Status)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [Status] FROM [tbllogin]"
        UpdateCommand="UPDATE [tbllogin] SET [Status] = @Status WHERE [email] = @original_email AND [Status] = @original_Status">
        <DeleteParameters>
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

