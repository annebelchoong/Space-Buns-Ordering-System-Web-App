<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_forgetPassword.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_forgetPw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_forgetPw.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 664px;
            text-align: center;
        }
        .auto-style2 {
            width: 664px;
        }
         .btn{
            justify-content:center;
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
        input:focus {
            border: 1px solid white;
        }

        .input{
            height: 12px;
            border-radius: 6px;
            border: 1px #B97836 solid;
            background-color: #1A1A1A;
            margin: 10px 0px;
            padding: 10px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center;background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
             <legend>Forget Your Password?</legend>
                <a href="sb_master.Master">
                    <img id="companylogo" src="Media/Icons/SpaceBunsLogo.png" alt="Space Buns Logo" width="120px"
                        style="padding-top: 5%;"> </a>
                <div>
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Width="666px"  >
                        <UserNameTemplate>
                            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" class="auto-style1">
                                <tr>
                                    <td>
                                        <table cellpadding="0" class="auto-style2" >
                                            <tr>
                                                <td align="center" colspan="2">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">Enter your Username to receive your password.</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="UserName">Username</asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:TextBox ID="Username" runat="server" CssClass="input"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Username is required." ForeColor="Red" ToolTip="Username is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" >
                                                    <asp:Button ID="submitButton" runat="server" class="btn" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </UserNameTemplate>
                    </asp:PasswordRecovery>
                </div>
            </fieldset>
    </form>
</body>
</html>