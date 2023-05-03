<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_registration.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="../CSS/sb_register.css" rel="stylesheet" />
    <style type="text/css">
        .btn {
            border-radius: 15px;
            transition: transform .2s ease;
            height: 40px;
        }
        .btn:hover {
            color: white;
            background-color:#B97836;
            transform: scale(1.1);
            transition: 250ms;
        }
        .auto-style1 {
            font-size: 100px;
        }
    </style>
    <script src="jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <fieldset
            style="text-align: center; background-image: url(../Media/LoginandSignup/logbackg2.jpg); background-size: contain;">
            <legend style="text-align: center; " class="auto-style1">Sign Up</legend>
             <br />
            <asp:HyperLink ID="lnkSpaceBunLogo" runat="server" ImageHeight="80px" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" NavigateUrl="~/sb_index.aspx"></asp:HyperLink>
             <br />
             <br />
            <div>
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ValidUsername" runat="server" ErrorMessage="Username is required!" ForeColor="#CC0000" ToolTip="Username is required!" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ValidPassword" runat="server" ErrorMessage="Password is required!" ForeColor="#CC0000" ToolTip="Password is required!" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" ></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Confirm password is required!" ForeColor="#CC0000" ToolTip="Confirm password is required!" ControlToValidate="txtConfirmPassword">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required!" ForeColor="#CC0000" ToolTip="Email is required!" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPhoneNo" runat="server" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone No is required!" ForeColor="#CC0000" ToolTip="Phone No is required!" ControlToValidate="txtPhoneNo">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <asp:CheckBox ID="chkSignUp" runat="server" Text="I have read and accept the "/>
                    <asp:HyperLink ID="privacyLink" runat="server">Privacy Policy</asp:HyperLink>
                 <asp:CustomValidator ID="chkSignUpCustomValidator" runat="server"
                        ErrorMessage="You must accept the terms and conditions to sign up"
                        OnServerValidate="chkSignUpCustomValidator_ServerValidate"
                        ValidateEmptyText="true" ForeColor="#CC0000" ToolTip="You must accept the terms and conditions to sign up">*</asp:CustomValidator>

                 <br />
                 <br />
                 Already a member?
                 <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="sb_login.aspx">Login</asp:HyperLink>
                 <br />
                 <br />
                 <asp:Button ID="btnSignUp" runat="server" class="btn" Text="Sign Up" ValidationGroup="SignUp" BorderColor="#B97836" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#B97836" BackColor="#1A1A1A" Height="40px" Width="90px" OnClick="btnSignUp_Click" />
                 <br />
                 <br />
                 <asp:ValidationSummary ID="SignUpValidSummary" runat="server" DisplayMode="List" ForeColor="#CC0000" />
                 <br />
             </div>
         </fieldset>
    </form>
</body>
</html>
