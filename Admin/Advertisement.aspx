<%@ Page Language="C#" MasterPageFile="~/Admin/adminhome.master" AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Admin_Advertisement" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    &nbsp; &nbsp;&nbsp;&nbsp;<table style="width: 100%; position: static">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 36pt; color: #ffffff; font-family: Chiller">Advertisement</span></strong></td>
        </tr>
        <tr>
            <td style="width: 54%; text-align: right">
                <strong><span style="width: 50%; color: #ffffff">Advertisement</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtaave" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaave"
                    ErrorMessage="PLease Give Adertisement Detail">*</asp:RequiredFieldValidator><span
                        style="color: #ffffff"><strong> </strong></span>
            </td>
        </tr>
        <tr style="font-weight: bold; color: #ffffff">
            <td style="width: 54%; text-align: right">
                <span>Description</span></td>
            <td style="width: 50%; color: #000000">
                <asp:TextBox ID="txtaadis" runat="server" Style="position: static"></asp:TextBox><span
                    style="color: #ffffff"> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaadis"
                    ErrorMessage="Description iS not Filled">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 54%; text-align: right">
                <strong><span style="color: #ffffff">Add Type</span></strong></td>
            <td style="width: 50%">
                <asp:TextBox ID="txtaaddtype" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaaddtype"
                    ErrorMessage="Add Type Is Not Defined">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 54%; text-align: right">
                <span style="color: #ffffff">Upload Image</span></td>
            <td style="width: 50%">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" /></td>
        </tr>
        <tr>
            <td style="width: 54%">
            </td>
            <td style="width: 50%">
                <asp:Button ID="Button1" runat="server" BackColor="#C0C0FF" Font-Bold="True" ForeColor="#000040"
                    OnClick="Button1_Click" Style="position: static" Text="Submit" Width="98px" /></td>
        </tr>
        <tr>
            <td style="width: 54%">
            </td>
            <td style="width: 50%">
                <asp:Label ID="lblsuccess" runat="server" Font-Bold="True" ForeColor="#000040" Style="position: static"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 54%">
            </td>
            <td style="width: 50%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" DataKeyNames="aaid" DataSourceID="SqlDataSource1" Width="100%">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <Columns>
                        <asp:ImageField DataAlternateTextField="photo" DataAlternateTextFormatString="{0}"
                            DataImageUrlField="photo" DataImageUrlFormatString="{0}">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="aaid" HeaderText="Advertisement ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="aaid" />
                        <asp:BoundField DataField="aid" HeaderText="Admin UserID" SortExpression="aid" />
                        <asp:BoundField DataField="aadv" HeaderText="Advertisement" SortExpression="aadv" />
                        <asp:BoundField DataField="aadis" HeaderText="Advertisement Dec." SortExpression="aadis" />
                        <asp:BoundField DataField="aatype" HeaderText="Advertisement Type" SortExpression="aatype" />
                        <asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbladd] WHERE [aaid] = @original_aaid"
                    InsertCommand="INSERT INTO [tbladd] ([aid], [aadv], [aadis], [aatype], [photo]) VALUES (@aid, @aadv, @aadis, @aatype, @photo)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbladd]"
                    UpdateCommand="UPDATE [tbladd] SET [aid] = @aid, [aadv] = @aadv, [aadis] = @aadis, [aatype] = @aatype, [photo] = @photo WHERE [aaid] = @original_aaid AND [aid] = @original_aid AND [aadv] = @original_aadv AND [aadis] = @original_aadis AND [aatype] = @original_aatype AND [photo] = @original_photo">
                    <DeleteParameters>
                        <asp:Parameter Name="original_aaid" Type="Int32" />
                        <asp:Parameter Name="original_aid" Type="String" />
                        <asp:Parameter Name="original_aadv" Type="String" />
                        <asp:Parameter Name="original_aadis" Type="String" />
                        <asp:Parameter Name="original_aatype" Type="String" />
                        <asp:Parameter Name="original_photo" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="aid" Type="String" />
                        <asp:Parameter Name="aadv" Type="String" />
                        <asp:Parameter Name="aadis" Type="String" />
                        <asp:Parameter Name="aatype" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                        <asp:Parameter Name="original_aaid" Type="Int32" />
                        <asp:Parameter Name="original_aid" Type="String" />
                        <asp:Parameter Name="original_aadv" Type="String" />
                        <asp:Parameter Name="original_aadis" Type="String" />
                        <asp:Parameter Name="original_aatype" Type="String" />
                        <asp:Parameter Name="original_photo" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="aid" Type="String" />
                        <asp:Parameter Name="aadv" Type="String" />
                        <asp:Parameter Name="aadis" Type="String" />
                        <asp:Parameter Name="aatype" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;
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
    &nbsp; &nbsp; &nbsp; &nbsp;</asp:Content>
