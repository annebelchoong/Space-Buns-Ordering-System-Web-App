<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_login.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center; background-image: url(../Media/LoginandSignup/logbackg2.jpg); background-size: contain;">
            <legend style="text-align: center; " class="auto-style1">Login</legend>
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
                 <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ValidPassword" runat="server" ErrorMessage="Password is required!" ForeColor="#CC0000" ToolTip="Password is required!" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                 <br />
                 <br />Not a member?
                 <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/Reengineer2023/sb_registration.aspx">Sign Up</asp:HyperLink>
                 <br />
                 <br />
                 <asp:Button ID="btnLogin" runat="server" class="btn" Text="Login" BorderColor="#B97836" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#B97836" BackColor="#1A1A1A" Height="40px" Width="90px" OnClick="btnLogin_Click" />
                 <br />
                 <br />
                 <asp:ValidationSummary ID="LoginValidSummary" runat="server" DisplayMode="List" ForeColor="#CC0000" />
                 <br />
             </div>
         </fieldset>
    </form>
</body>
</html>
