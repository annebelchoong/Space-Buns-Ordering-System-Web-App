<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_forgotPassword.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_forgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
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
            <legend style="text-align: center; " class="auto-style1">Forgot Password</legend>
             <br />
            <asp:HyperLink ID="lnkSpaceBunLogo" runat="server" ImageHeight="80px" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" NavigateUrl="~/sb_index.aspx"></asp:HyperLink>
             <br />
             <br />
            <div>
                <asp:Label ID="lblText" runat="server" Text="Please enter your email address to receive a password reset link."></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ValidEmail" runat="server" ErrorMessage="Email is required!" ForeColor="#CC0000" ToolTip="Email is required!" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                 <br />
                 <br />
             </div>
             
             <div>
                 
                 <asp:Button ID="btnSubmit" runat="server" class="btn" Text="Submit" BorderColor="#B97836" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#B97836" BackColor="#1A1A1A" Height="40px" Width="90px" OnClick="btnSubmit_Click" />
                 <br />
                 <br />
                 <asp:Label ID="lblMessage" runat="server"></asp:Label>
                 <br />
                 <asp:ValidationSummary ID="forgotPasswordValidSummary" runat="server" DisplayMode="List" ForeColor="#CC0000" />
                 <br />
             </div>
         </fieldset>
    </form>
</body>
</html>