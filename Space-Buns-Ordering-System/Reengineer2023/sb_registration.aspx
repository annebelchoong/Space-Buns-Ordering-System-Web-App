<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_registration.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <fieldset
            style="text-align: center; background-image: url(Media/Login&Signup/logbackg2.jpg); background-size: contain;">
            <legend style="text-align: center">Sign Up</legend>
            <asp:HyperLink ID="lnkSpaceBunLogo" runat="server" ImageHeight="80px" ImageUrl="~/Media/Icons/SpaceBunsLogo.png" NavigateUrl="~/sb_index.aspx"></asp:HyperLink>
             <br />
             <br />
            <div>
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                 <br />
                 <br />
             </div>
             <div>
                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No:"></asp:Label>
            </div>
             <div>
                 <asp:TextBox ID="txtPhoneNo" runat="server" OnTextChanged="txtPhoneNo_TextChanged"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" />
                 <br />
                 <br />
             </div>
         </fieldset>
    </form>
</body>
</html>
