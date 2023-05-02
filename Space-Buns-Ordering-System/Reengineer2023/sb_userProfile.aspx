<%@ Page Title="" Language="C#" MasterPageFile="~/Reengineer2023/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_userProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.Reengineer2023.sb_userProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }

        .auto-style2 {
            color: #fff;
            font-size: x-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash-content" style="/*background-color: #f5f5f5; margin: 80px 0px 0px -20px; border-radius: 20px; */">
        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="fas fa-user bg-transparent"></i>
                    <span class="text" style="color: #FFFFFF">User Profile </span>
                    <br />
                    <asp:Button ID="btnUpdateProfile" runat="server" class="userProfileButtons" Text="Update Profile" PostBackUrl="~/Reengineer2023/sb_updateProfile.aspx" OnClick="btnUpdateProfile_Click" />
                    <asp:Button ID="btnChangePassword" runat="server" class="userProfileButtons" Text="Change Password" PostBackUrl="~/Reengineer2023/sb_updatePassword.aspx" />
                    <br />
                </div>
                <strong>
                    <asp:Label ID="username" runat="server" Text="Username: " ForeColor="White" CssClass="auto-style1"></asp:Label>
                </strong>
                <asp:Label ID="lblUsername" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                <%--<asp:LoginName ID="LoginName1" runat="server" ForeColor="white" CssClass="auto-style1" />--%>
                <br />
                <div>
                    <span class="auto-style2"><strong>
                        <br />
                        Name: </strong></span>
                    <asp:Label ID="lblName" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                    <br class="auto-style1" />
                    <br class="auto-style2" />
                    <span class="text-white"><strong><span class="auto-style1">Email:</span></strong><span class="auto-style1"> </span></span>
                    <asp:Label ID="lblEmail" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                    <br class="auto-style1" />
                    <br class="auto-style2" />
                    <span class="auto-style2"><strong>Phone No: </strong></span>
                    <asp:Label ID="lblPhone" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                    <br class="auto-style1" />
                    <br class="auto-style2" />
                    <span class="text-white"><strong><span class="auto-style1">Street:</span></strong><span class="auto-style1"> </span></span>
                    <asp:Label ID="lblStreet" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                    <br class="auto-style1" />
                    <br class="auto-style2" />
                    <span class="text-white"><strong><span class="auto-style1">Postcode:</span></strong><span class="auto-style1"> </span></span>
                    <asp:Label ID="lblZipcode" runat="server" ForeColor="white" CssClass="auto-style2"></asp:Label>
                    <span class="text-white">
                        <span class="auto-style1">
                            <%--<asp:Label ID="lblUserProfile" runat="server" ForeColor="white"></asp:Label>--%>
                        </span>
                        <br />
                    </span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
