<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_accountTest.aspx.cs" Inherits="Space_Buns_Ordering_System.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link href="CSS/sb_login.css" rel="stylesheet" />--%>
    </head>
<body>
    <form id="form1" runat="server">
        <fieldset
            style="text-align: center;background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
            <legend>Login</legend>
            <a href="sb_master.Master">
                <img id="companylogo" src="Media/icons/SpaceBunsLogo.png" alt="Space Buns Logo" width="120px"
                    style="padding-top: 5%;"> </a>

        <asp:Login ID="Login1" runat="server">
        </asp:Login>
            </fieldset>
    </form>
</body>
</html>
