<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="afeedback.aspx.cs" Inherits="Admin_afeedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp;&nbsp;<table style="width: 100%; position: static">
        <tr>
            <td style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1" Width="100%">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <Columns>
                        <asp:BoundField DataField="fid" HeaderText="Feedback ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="fid" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="add" HeaderText="Address" SortExpression="add" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile No." SortExpression="mobile" />
                        <asp:BoundField DataField="fdate" HeaderText="Feedback Date" SortExpression="fdate" />
                        <asp:BoundField DataField="feedback" HeaderText="Feedback" SortExpression="feedback" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblfeed] WHERE [fid] = @original_fid"
                    InsertCommand="INSERT INTO [tblfeed] ([Name], [add], [city], [state], [country], [phone], [mobile], [fdate], [feedback]) VALUES (@Name, @add, @city, @state, @country, @phone, @mobile, @fdate, @feedback)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblfeed]"
                    UpdateCommand="UPDATE [tblfeed] SET [Name] = @Name, [add] = @add, [city] = @city, [state] = @state, [country] = @country, [phone] = @phone, [mobile] = @mobile, [fdate] = @fdate, [feedback] = @feedback WHERE [fid] = @original_fid AND [Name] = @original_Name AND [add] = @original_add AND [city] = @original_city AND [state] = @original_state AND [country] = @original_country AND [phone] = @original_phone AND [mobile] = @original_mobile AND [fdate] = @original_fdate AND [feedback] = @original_feedback">
                    <DeleteParameters>
                        <asp:Parameter Name="original_fid" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_add" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_mobile" Type="String" />
                        <asp:Parameter Name="original_fdate" Type="String" />
                        <asp:Parameter Name="original_feedback" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="add" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="fdate" Type="String" />
                        <asp:Parameter Name="feedback" Type="String" />
                        <asp:Parameter Name="original_fid" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_add" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_mobile" Type="String" />
                        <asp:Parameter Name="original_fdate" Type="String" />
                        <asp:Parameter Name="original_feedback" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="add" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="fdate" Type="String" />
                        <asp:Parameter Name="feedback" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
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
    &nbsp; &nbsp;
</asp:Content>

