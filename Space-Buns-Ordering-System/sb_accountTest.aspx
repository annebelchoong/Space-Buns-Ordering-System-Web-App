<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_accountTest.aspx.cs" Inherits="Space_Buns_Ordering_System.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center">Log In</td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Image ID="Image1" runat="server" Height="100px" ImageAlign="Middle" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" Width="130px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="lblUsername" runat="server" AssociatedControlID="UserName">Username</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
				<td class="auto-style2"><asp:label runat="server" AssociatedControlID="Password" ID="lblPassword">Password</asp:label></td>
			</tr>
                                <tr>
                                    <td align="right" class="auto-style2">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">Not a member?
                                        <asp:HyperLink ID="hlRegisterHere" runat="server">Register Here</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
    </form>
</body>
</html>
