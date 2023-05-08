<%@ Page Title="" Language="C#" MasterPageFile="~/Reengineer2023/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_updatePassword.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_updatePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .btn1 {
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            width: 150px;
            height: 40px;
            background-color: #1A1A1A;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
        }

        .btn1:hover {
            text-decoration: none;
            color: white;
            background-color: #B97836;
            transition: 250ms;
        }

        input {
            text-align: center;
            outline: none;
            color: white;
        }

        input[type=text]:focus, input[type=password]:focus, input[type=tel]:focus, input[type=email]:focus {
            border: 1px solid white;
        }

        .input {
            height: 30px;
            width: 300px;
            border-radius: 6px;
            border: 1px #B97836 solid;
            background-color: #1A1A1A;
            margin: 10px 0px;
            padding: 10px;
        }
    </style>

    <div class="dash-content">
        <div class="overview">
            <div class="title">
                <i class="fas fa-key bg-transparent"></i>
                <span class="text">Change Password</span>
                <br />
                <br />
            </div>
            <div>
                <table style="width: 80%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblNewPassword" runat="server" ForeColor="#999999" Text="New Password"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" class="input" placeholder="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblRetypePassword" runat="server" TextMode="Password" ForeColor="#999999" Text="Retype New Password"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password" class="input" placeholder="Retype New Password"></asp:TextBox>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btnSavePassword" runat="server" class="btn1" Text="Save Password" PostBackUrl="~/UserProfile/sb_userProfile.aspx" OnClick="btnSavePassword_Click" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
