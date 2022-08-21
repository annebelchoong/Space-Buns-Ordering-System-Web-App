<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_accountTest.aspx.cs" Inherits="Space_Buns_Ordering_System.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/sb_login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            width: 465px;
        }
        .auto-style5 {
            width: 568px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center;background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
            <legend>Login</legend>
            <a href="sb_master.Master">
                <img id="companylogo" src="Media/icons/SpaceBunsLogo.png" alt="Space Buns Logo" width="120px"
                    style="padding-top: 5%;"> </a>

            <div class="auto-style1">

        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td class="auto-style5">
                            <table cellpadding="0" class="auto-style4">
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username" ClientIDMode="Static">Username</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:TextBox ID="Username" runat="server" placeholder="Username" class="logInput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ControlToValidate="Username" 
                                            ErrorMessage="Username is required." ToolTip="User Name is required." 
                                            ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="Password" class="logInput"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                            ErrorMessage="Password is required." ToolTip="Password is required." 
                                            ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:HyperLink ID="forgetPwLink" runat="server" NavigateUrl="~/sb_forgetPwTest.aspx">Forget Password</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="loginButton" runat="server" CommandName="Login" Text="Login" 
                                            ValidationGroup="Login1"  />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="notMember">
                                        <asp:HyperLink ID="notAMemLink" runat="server" NavigateUrl="~/sb_registerTest.aspx">Not a member?</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
            </div>
            </fieldset>
    </form>
</body>
</html>
