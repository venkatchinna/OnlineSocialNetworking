<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="RequestFrnds.aspx.cs" Inherits="Home_RequestFrnds" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="vertical-align: middle; width: 100%; text-align: center">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="req_from" DataValueField="req_from">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [req_from] FROM [tblRequest] WHERE ([req_to] = @req_to)">
                    <SelectParameters>
                        <asp:SessionParameter Name="req_to" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource2"
                    ForeColor="#333333">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <EditItemTemplate>
                        fnm:
                        <asp:TextBox ID="fnmTextBox" runat="server" Text='<%# Bind("fnm") %>'>
                        </asp:TextBox><br />
                        mnm:
                        <asp:TextBox ID="mnmTextBox" runat="server" Text='<%# Bind("mnm") %>'>
                        </asp:TextBox><br />
                        lnm:
                        <asp:TextBox ID="lnmTextBox" runat="server" Text='<%# Bind("lnm") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <InsertItemTemplate>
                        fnm:
                        <asp:TextBox ID="fnmTextBox" runat="server" Text='<%# Bind("fnm") %>'>
                        </asp:TextBox><br />
                        mnm:
                        <asp:TextBox ID="mnmTextBox" runat="server" Text='<%# Bind("mnm") %>'>
                        </asp:TextBox><br />
                        lnm:
                        <asp:TextBox ID="lnmTextBox" runat="server" Text='<%# Bind("lnm") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <strong>From: </strong>
                        <asp:Label ID="fnmLabel" runat="server" Text='<%# Bind("fnm") %>'></asp:Label><br />
                        <strong>MiddleName: </strong>
                        <asp:Label ID="mnmLabel" runat="server" Text='<%# Bind("mnm") %>'></asp:Label><br />
                        <strong>LastName:: </strong>
                        <asp:Label ID="lnmLabel" runat="server" Text='<%# Bind("lnm") %>'></asp:Label><br />
                        <strong>State:: </strong>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>'></asp:Label><br />
                        <strong>City: </strong>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>'></asp:Label><br />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [fnm], [mnm], [lnm], [state], [city] FROM [tbllogin] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="email" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                    Text="Accept" /><asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                        Text="Reject" /></td>
        </tr>
    </table>
</asp:Content>

