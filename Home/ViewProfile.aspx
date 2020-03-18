<%@ Page Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Home_ViewProfile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 22px; background-color: #999966;
                text-align: center">
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 22px; background-color: #999966;
                text-align: center">
                <table style="width: 100%">
                    <tr>
                        <td style="vertical-align: middle; width: 100%; height: 21px; background-color: #999966;
                            text-align: center">
                            <strong>---Send A Scrap ---
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3"
                                    DataTextField="email" DataValueField="email" Enabled="False">
                                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT [email] FROM [profile1] WHERE ([email] = @email)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="email" QueryStringField="em" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 100%; text-align: left">
                            <table style="width: 100%">
                                <tr>
                                    <td style="vertical-align: top; width: 50%; height: 91px; text-align: right">
                                        <strong>Scrap:</strong></td>
                                    <td style="vertical-align: top; width: 50%; height: 91px; text-align: left">
                                        <asp:TextBox ID="txtScrap" runat="server" Height="81px" TextMode="MultiLine" Width="192px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; width: 50%; height: 91px; text-align: right">
                                    </td>
                                    <td style="vertical-align: top; width: 50%; height: 91px; text-align: left">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Send" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="vertical-align: top; width: 100%; height: 91px; text-align: left">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="100%">
                                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="sname" HeaderText="Sender" SortExpression="sname" />
                                                <asp:BoundField DataField="sdetails" HeaderText="Scraps" SortExpression="sdetails" />
                                            </Columns>
                                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT [sdetails], [sname] FROM [tblScrap] WHERE ([sch] = @sch)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="sch" PropertyName="SelectedValue"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 22px; background-color: #999966;
                text-align: center">
                <strong>Profile Details</strong></td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 22px; background-color: #999966;
                text-align: center">
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; text-align: center">
                <asp:FormView ID="FormView1" runat="server" BorderColor="Gray" BorderStyle="Groove"
                    BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    Width="100%">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <EditItemTemplate>
                        Photos:
                        <asp:TextBox ID="PhotosTextBox" runat="server" Text='<%# Bind("Photos") %>'>
                        </asp:TextBox><br />
                        fnm:
                        <asp:TextBox ID="fnmTextBox" runat="server" Text='<%# Bind("fnm") %>'>
                        </asp:TextBox><br />
                        mnm:
                        <asp:TextBox ID="mnmTextBox" runat="server" Text='<%# Bind("mnm") %>'>
                        </asp:TextBox><br />
                        lnm:
                        <asp:TextBox ID="lnmTextBox" runat="server" Text='<%# Bind("lnm") %>'>
                        </asp:TextBox><br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>'>
                        </asp:TextBox><br />
                        bdate:
                        <asp:TextBox ID="bdateTextBox" runat="server" Text='<%# Bind("bdate") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        pin:
                        <asp:TextBox ID="pinTextBox" runat="server" Text='<%# Bind("pin") %>'>
                        </asp:TextBox><br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>'>
                        </asp:TextBox><br />
                        mobile:
                        <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <InsertItemTemplate>
                        Photos:
                        <asp:TextBox ID="PhotosTextBox" runat="server" Text='<%# Bind("Photos") %>'>
                        </asp:TextBox><br />
                        fnm:
                        <asp:TextBox ID="fnmTextBox" runat="server" Text='<%# Bind("fnm") %>'>
                        </asp:TextBox><br />
                        mnm:
                        <asp:TextBox ID="mnmTextBox" runat="server" Text='<%# Bind("mnm") %>'>
                        </asp:TextBox><br />
                        lnm:
                        <asp:TextBox ID="lnmTextBox" runat="server" Text='<%# Bind("lnm") %>'>
                        </asp:TextBox><br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>'>
                        </asp:TextBox><br />
                        bdate:
                        <asp:TextBox ID="bdateTextBox" runat="server" Text='<%# Bind("bdate") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        pin:
                        <asp:TextBox ID="pinTextBox" runat="server" Text='<%# Bind("pin") %>'>
                        </asp:TextBox><br />
                        phone:
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>'>
                        </asp:TextBox><br />
                        mobile:
                        <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px"
                            Height="200px" ImageUrl='<%# Eval("Photos", "{0}") %>' Width="200px" /><br />
                        <br />
                        <strong>FirstName: </strong>
                        <asp:Label ID="fnmLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("fnm") %>'></asp:Label><br />
                        <br />
                        <strong>MiddleName: </strong>
                        <asp:Label ID="mnmLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("mnm") %>'></asp:Label><br />
                        <br />
                        <strong>LastName: </strong>
                        <asp:Label ID="lnmLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("lnm") %>'></asp:Label><br />
                        <br />
                        <strong>Gender: </strong>
                        <asp:Label ID="genderLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("gender") %>'></asp:Label><br />
                        <br />
                        <strong>B-Date: </strong>
                        <asp:Label ID="bdateLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("bdate") %>'></asp:Label><br />
                        <br />
                        <strong>City: </strong>
                        <asp:Label ID="cityLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("city") %>'></asp:Label><br />
                        <br />
                        <strong>State: </strong>
                        <asp:Label ID="stateLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("state") %>'></asp:Label><br />
                        <br />
                        <strong>Pin: </strong>
                        <asp:Label ID="pinLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("pin") %>'></asp:Label><br />
                        <br />
                        <strong>Phone: </strong>
                        <asp:Label ID="phoneLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("phone") %>'></asp:Label><br />
                        <br />
                        <strong>Mobile: </strong>
                        <asp:Label ID="mobileLabel" runat="server" Font-Bold="True" ForeColor="#993333" Text='<%# Bind("mobile") %>'></asp:Label><br />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [Photos], [fnm], [mnm], [lnm], [gender], [bdate], [city], [state], [pin], [phone], [mobile] FROM [profile1] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="email" QueryStringField="em" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; height: 21px; background-color: #999966;
                text-align: center">
                <strong>Photo Gallery</strong></td>
        </tr>
        <tr>
            <td style="vertical-align: middle; width: 100%; text-align: center">
                <asp:DataList ID="DataList1" runat="server" BorderColor="#404040" BorderStyle="Groove"
                    BorderWidth="3px" DataSourceID="SqlDataSource2" RepeatColumns="3" Width="100%">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" BorderColor="#C00000" BorderStyle="Groove"
                            BorderWidth="3px" Height="150px" ImageUrl='<%# Eval("purl", "{0}") %>' Width="150px" />&nbsp;<br />
                        <asp:Label ID="desLabel" runat="server" Font-Bold="True" Text='<%# Eval("des") %>'></asp:Label><br />
                        <br />
                    </ItemTemplate>
                </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [purl], [des] FROM [tblphotogallary] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="uname" QueryStringField="em" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

