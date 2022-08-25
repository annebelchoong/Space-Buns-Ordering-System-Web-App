<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_login.aspx.cs" Inherits="Space_Buns_Ordering_System.account" %>

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
            width: 626px;
        }

        .auto-style5 {
            width: 568px;
        }

        .btn {
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            width: 90px;
            height: 40px;
            background-color: #1A1A1A;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
        }

        btn:hover {
            text-decoration: none;
            color: white;
            background-color: #B97836;
            transition: 250ms;
        }

        .auto-style6 {
            width: 630px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center; background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
            <legend>Login</legend>
            <asp:HyperLink ID="lnkSpaceBunsLogo" runat="server" ImageHeight="80px" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" NavigateUrl="~/sb_index.aspx"></asp:HyperLink>

            <div class="auto-style1">
                <asp:Login ID="Login1" runat="server" Width="81%">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;" style="width: 100px">
                            <tr>
                                <td class="auto-style5">
                                    <table cellpadding="0" class="auto-style4">
                                        <tr>
                                            <td align="center" class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">
                                                <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username" ClientIDMode="Static">Username</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">
                                                <asp:TextBox ID="Username" runat="server" placeholder="Username" class="logInput"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ControlToValidate="Username"
                                                    ErrorMessage="Username is required." ToolTip="User Name is required."
                                                    ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="Password" class="logInput"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                    ErrorMessage="Password is required." ToolTip="Password is required."
                                                    ValidationGroup="Login1" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">
                                                <asp:HyperLink ID="forgetPwLink" runat="server" NavigateUrl="~/sb_forgetPassword.aspx">Forget Password</asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="color: Red;" class="auto-style6">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:Button ID="loginButton" runat="server" class="btn" CommandName="Login" Text="Login"
                                                    ValidationGroup="Login1" PostBackUrl="sb_index.aspx" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:HyperLink ID="notAMemLink" runat="server" NavigateUrl="~/sb_registration.aspx">Not a member?</asp:HyperLink>
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
