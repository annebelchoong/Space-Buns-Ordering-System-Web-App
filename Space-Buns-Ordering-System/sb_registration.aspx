<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_registration.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_register.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            width: 550px;
        }

        .auto-style5 {
            width: 544px;
        }

        .btn {
            display: flex;
            align: center;
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
            margin-left: 120px;
        }

        btn:hover {
            text-decoration: none;
            color: white;
            background-color: #B97836;
            transition: 250ms;
        }
    </style>
    <script src="jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var btn = $("#CreateUserWizard1___CustomNav0_StepNextButtonButton");
            btn.parent().attr('align', 'left');

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center; background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
            <legend>Sign Up</legend>
            <asp:HyperLink ID="lnkSpaceBunLogo" runat="server" ImageHeight="80px" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" NavigateUrl="~/sb_index.aspx"></asp:HyperLink>

            <div class="auto-style2">
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="557px" align="center" CreateUserButtonText="Sign Up" ContinueDestinationPageUrl="~/UserProfile/sb_editProfile.aspx">
                    <CreateUserButtonStyle BackColor="Black" CssClass="btn" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <i class='fas fa-user-alt'></i>
                                            <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username">Username</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:TextBox ID="Username" runat="server" placeholder="Username (min 6 max 12)" OnTextChanged="Username_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="Password (min 8 max 12)"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server"
                                                AssociatedControlID="ConfirmPassword">Password Confirmation</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Email</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:TextBox ID="Email" runat="server" placeholder="spacebuns@gmail.com"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:Label ID="PhoneNoLabel" runat="server" Text="Phone Number"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:TextBox ID="PhoneNo" runat="server" placeholder="0123456789" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="signupRow">
                                            <asp:CheckBox ID="chkboxSignUp" runat="server" ValidationGroup="CheckBox" />
                                            I have read and accept the
                                    <asp:HyperLink ID="privacyLink" runat="server">Privacy Policy</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="auto-style5">Already a member?
                                    <asp:HyperLink ID="loginLink" runat="server" NavigateUrl="~/sb_login.aspx">Login</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="auto-style5">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="auto-style5">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep runat="server">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td align="center">Complete</td>
                                    </tr>
                                    <tr>
                                        <td>Your account has been successfully created.</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Button ID="btnContinue" runat="server" class="btn" CausesValidation="False" CommandName="Continue"
                                                Text="Continue" ValidationGroup="CreateUserWizard1" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                </asp:CreateUserWizard>
            </div>
        </fieldset>
    </form>
</body>
</html>
