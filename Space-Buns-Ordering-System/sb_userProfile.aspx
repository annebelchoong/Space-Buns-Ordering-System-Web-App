<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_userProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_userProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 217px;
    }
        .auto-style3 {
            width: 217px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        width: 757px;
    }
    .auto-style5 {
        width: 757px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">User Profile</span>
                    <br />
                    <asp:Button ID="btnEditProfile" runat="server" class="btn" Text="Edit Profile" PostBackUrl="~/sb_editProfile.aspx" />
                    <asp:Button ID="btnChangePassword" runat="server" class="btn" Text="Change Password" PostBackUrl="~/sb_changePassword.aspx" />
                    <br />
                    </div>
                    <div>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblFName" runat="server" ForeColor="#999999" Text="First Name"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblLName" runat="server" ForeColor="#999999" Text="Last Name"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUFName" runat="server" ForeColor="White" Text="Corn"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblULName" runat="server" ForeColor="White" Text="Jena"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUsername" runat="server" ForeColor="#999999" Text="Username"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUUsername" runat="server" ForeColor="White" Text="corn"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblEmail" runat="server" ForeColor="#999999" Text="Email Address"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUEmail" runat="server" ForeColor="White" Text="cornjena@gmail.com"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblPhoneNo" runat="server" ForeColor="#999999" Text="Phone No"></asp:Label>
                            </td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUPhoneNo" runat="server" ForeColor="White" Text="0105647982"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblAddress" runat="server" ForeColor="#999999" Text="Delivery Address"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblUAddress" runat="server" ForeColor="White" Text="502, Jalan Bananas, D-05-02, Portex Residence, 80100, Paya Jetaling "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblPostCode" runat="server" ForeColor="#999999" Text="Post Code"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblState" runat="server" ForeColor="#999999" Text="State"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUPostCode" runat="server" ForeColor="White" Text="80100"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblUState" runat="server" ForeColor="White" Text="Kuala Lumpur"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblDoBirth" runat="server" ForeColor="#999999" Text="Date of Birth"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblUDoBirth" runat="server" ForeColor="White" Text="02/06/1995"></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
</asp:Content>


