<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_registration.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_registration" %>

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
                 <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="ValidUsername" runat="server" ErrorMessage="Username is required!" ForeColor="#CC0000" ToolTip="Username is required!" ControlToValidate="txtUsername" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password (min 8 max 12)"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="ValidPassword" runat="server" ErrorMessage="Password is required!" ForeColor="#CC0000" ToolTip="Password is required!" ControlToValidate="txtPassword" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="ValidPasswordLength" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must be at least 6 characters long" ValidationExpression="^.{6,}$" ForeColor="#CC0000" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>
                 <asp:RegularExpressionValidator ID="ValidPasswordComplexity" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must include at least one letter and one number" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$" ForeColor="#CC0000" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>
                 <%--<button type="button" onclick="togglePasswordVisibility()"><i class="fas fa-eye" id="btnVisible"></i></button>--%>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Confirm password is required!" ForeColor="#CC0000" ToolTip="Confirm password is required!" ControlToValidate="txtConfirmPassword" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords must match!" ForeColor="#CC0000" ValidationGroup="SignUp">*</asp:CompareValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtEmail" runat="server" placeholder="spacebuns@gmail.com"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required!" ForeColor="#CC0000" ToolTip="Email is required!" ControlToValidate="txtEmail" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="Invalid email address!" ControlToValidate="txtEmail" ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ForeColor="#CC0000" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPhoneNo" runat="server" placeholder="0123456789"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone No is required!" ForeColor="#CC0000" ToolTip="Phone No is required!" ControlToValidate="txtPhoneNo" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="regexPhoneNo" runat="server" ErrorMessage="Invalid phone number!" ControlToValidate="txtPhoneNo" ValidationExpression="^[0-9]{11}$" ForeColor="#CC0000" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>
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
                 <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Reengineer2023/sb_login.aspx">Login</asp:HyperLink>
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
   <%-- <script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("txtPassword");
        var visibilityButton = document.querySelector("button[onclick='togglePasswordVisibility()']");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            visibilityButton.innerHTML = "<i class='fas fa-eye-slash'></i>";
        } else {
            passwordInput.type = "password";
            visibilityButton.innerHTML = "<i class='fas fa-eye'></i>";
        }
    }
    </script>--%>
</body>
</html>
