<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_registerTest.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm1" %>

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
        
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <fieldset
            style="text-align: center;background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
             <legend>Sign Up</legend>
            <a href="sb_master.Master">
                <img id="companylogo" src="Media/Icons/SpaceBunsLogo.png" alt="Space Buns Logo" width="120px"
                    style="padding-top: 5%;"> </a>

        <div class="auto-style2" >
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="557px" CreateUserButtonText="Sign Up">
            <CreateUserButtonStyle BackColor="Black" CssClass="btn" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate >
                        <table>
                            <tr>
                                <td align="center" class="signupRow">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="signupRow">
                                     <i class='fas fa-user-alt'></i>
                                    <asp:Label ID="UsernameLabel" runat="server" AssociatedControlID="Username">Username</asp:Label>                                  
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="signupRow">
                                    <asp:TextBox ID="Username" runat="server" placeholder="Username (min 6 max 12)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ControlToValidate="Username" 
                                        ErrorMessage="Username is required." ToolTip="User Name is required." 
                                        ValidationGroup="CreateUserWizard1" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                        ErrorMessage="Password is required." ToolTip="Password is required." 
                                        ValidationGroup="CreateUserWizard1" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" 
                                        ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." 
                                        ValidationGroup="CreateUserWizard1" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                        ErrorMessage="Email is required." ToolTip="Email is required." 
                                        ValidationGroup="CreateUserWizard1" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                                    <asp:TextBox ID="PhoneNo" runat="server" placeholder="0123456789" pattern="^(01)[0-9][0-9]*[0-9]{7,8}$" required></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PhoneNoRequired" runat="server" ControlToValidate="PhoneNo" 
                                        ErrorMessage="Phone Number is required." ToolT ip="Phone Number is required." 
                                        ValidationGroup="CreateUserWizard1" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                                    <asp:HyperLink ID="loginLink" runat="server" NavigateUrl="~/sb_loginTest.aspx">Login</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style5">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" 
                                        ControlToValidate="ConfirmPassword" Display="Dynamic" 
                                        ErrorMessage="The Password and Confirmation Password must match." 
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style5">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
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
                                        Text="Continue" ValidationGroup="CreateUserWizard1" PostBackUrl="~/sb_userProfileTest.aspx" />
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
