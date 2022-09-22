<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfile/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_userProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_userProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="dash-content" style="/*background-color: #f5f5f5; margin: 80px 0px 0px -20px; border-radius: 20px; */">
        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="fas fa-user bg-transparent"></i>
                    <span class="text" style="color: #FFFFFF">User Profile </span>
                    <br />
                    <asp:Button ID="btnUpdateProfile" runat="server" class="userProfileButtons" Text="Update Profile" PostBackUrl="~/UserProfile/sb_updateProfile.aspx" OnClick="btnEditProfile_Click" />
                    <asp:Button ID="btnChangePassword" runat="server" class="userProfileButtons" Text="Change Password" PostBackUrl="~/UserProfile/sb_changePassword.aspx" />
                    <br />
                </div>
                <asp:Label ID="username" runat="server" Text="Username" ForeColor="white"></asp:Label>
                <asp:LoginName ID="LoginName1" runat="server" ForeColor="white" />
                <div>
                    <asp:Label ID="lblName" runat="server" ForeColor="white"></asp:Label><br />
                    <asp:Label ID="lblEmail" runat="server" ForeColor="white"></asp:Label><br />
                    <asp:Label ID="lblPhone" runat="server" ForeColor="white"></asp:Label><br />
                    <asp:Label ID="lblStreet" runat="server" ForeColor="white"></asp:Label><br />
                    <asp:Label ID="lblZipcode" runat="server" ForeColor="white"></asp:Label>
                    <%--<asp:Label ID="lblUserProfile" runat="server" ForeColor="white"></asp:Label>--%>
                    <br />
                    <%--<table style="width: 100%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblFName" runat="server" ForeColor="#515051" Text="First Name"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lblLName" runat="server" ForeColor="#515051" Text="Last Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUFName" runat="server" ForeColor="#b9b3b9" Text="Corn"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lblULName" runat="server" ForeColor="#b9b3b9" Text="Jena"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUsername" runat="server" ForeColor="#515051" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUUsername" runat="server" ForeColor="#b9b3b9" Text="corn"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblEmail" runat="server" ForeColor="#515051" Text="Email Address"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUEmail" runat="server" ForeColor="#b9b3b9" Text="cornjena@gmail.com"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblPhoneNo" runat="server" ForeColor="#515051" Text="Phone No"></asp:Label>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUPhoneNo" runat="server" ForeColor="#b9b3b9" Text="0105647982"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblAddress" runat="server" ForeColor="#515051" Text="Delivery Address"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUAddress" runat="server" ForeColor="#b9b3b9" Text="502, Jalan Bananas, D-05-02, Portex Residence, 80100, Paya Jetaling "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblPostCode" runat="server" ForeColor="#515051" Text="Post Code"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lblState" runat="server" ForeColor="#515051" Text="State"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUPostCode" runat="server" ForeColor="#b9b3b9" Text="80100"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lblUState" runat="server" ForeColor="#b9b3b9" Text="Kuala Lumpur"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblDoBirth" runat="server" ForeColor="#515051" Text="Date of Birth"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUDoBirth" runat="server" ForeColor="#b9b3b9" Text="02/06/1995"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

