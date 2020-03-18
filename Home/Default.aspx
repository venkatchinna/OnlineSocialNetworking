<%@ Page language="c#" Inherits="SimpleChat._Default"   CodeFile="Default.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 268px; POSITION: absolute; TOP: 196px" cellSpacing="1"
				cellPadding="1" width="300" border="0">
				<TR>
					<TD>
						<asp:Label id="Label1" runat="server">Channel</asp:Label></TD>
					<TD>
						<asp:TextBox id="TB_Channel" runat="server" ReadOnly="True">1</asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required" ControlToValidate="TB_Channel"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="height: 26px">
						<asp:Label id="Label2" runat="server">UserID</asp:Label></TD>
					<TD style="height: 26px">
						<asp:TextBox id="TB_Username" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="* Required" ControlToValidate="TB_Username"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="height: 26px"></TD>
					<TD style="height: 26px">
						<asp:Button id="BT_Enter" runat="server" Text="Go For Chat" onclick="BT_Enter_Click"></asp:Button></TD>
				</TR>
			</TABLE>
		</form>
	

</body>
</HTML>
