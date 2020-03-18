<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="requestUser.aspx.cs" Inherits="Home_requestUser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="text-transform: capitalize; width: 100%; color: black; font-family: verdana;
                background-color: white; font-variant: normal">
                Request User From Here...<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="email" DataValueField="email" Enabled="False" Font-Bold="True"
                    ForeColor="#C00000" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-transform: capitalize; width: 100%; color: black; font-family: verdana;
                background-color: white; font-variant: normal; height: 188px;">
                <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="email" DataSourceID="SqlDataSource1"
                    GridLines="Horizontal" HeaderText="Your User Information is as below:" Width="100%">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
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
                        email:
                        <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>'></asp:Label><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
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
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        fnm:
                        <asp:Label ID="fnmLabel" runat="server" Text='<%# Bind("fnm") %>'></asp:Label><br />
                        mnm:
                        <asp:Label ID="mnmLabel" runat="server" Text='<%# Bind("mnm") %>'></asp:Label><br />
                        lnm:
                        <asp:Label ID="lnmLabel" runat="server" Text='<%# Bind("lnm") %>'></asp:Label><br />
                        email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>'></asp:Label><br />
                        city:
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>'></asp:Label><br />
                        state:
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>'></asp:Label><br />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [fnm], [mnm], [lnm], [email], [city], [state] FROM [tbllogin] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="email" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-transform: capitalize; width: 100%; color: black; font-family: verdana;
                background-color: white; font-variant: normal">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Request Now" />
                <asp:Button ID="Button2" runat="server" Text="Close" />
                &nbsp;
                <asp:Label ID="lblText" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [email] FROM [tbllogin] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="email" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

