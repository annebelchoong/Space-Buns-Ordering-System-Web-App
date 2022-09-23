<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminUserProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.Admin.adminUserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/sb_adminDashboard.css" rel="stylesheet" />
    <style type="text/css">
        .btn{
            justify-content:center;
            text-decoration: none;
            cursor: pointer;
            font-size: 0.8em;
            transition: transform .2s ease;
            width: 180px;
            height: 30px;
            background-color: #1A1A1A;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
            padding: 0px;
        }
        .btn:hover {
            text-decoration: none;
            color: white;
            background-color: #B97836;
            transition: 250ms;
        }
        </style>
            <div class="container-fluid">
                <div class="row my-5" >
                    <h3 class="fs-4 mb-3">
                          <i class="fas fa-user bg-transparent"></i>
                          <span class="text" style="color: black">User Profile </span>
                          <strong>&nbsp;
                    <asp:Button ID="btnUpdateProfile" runat="server" class="btn" Text="Update Profile" PostBackUrl="~/UserProfile/sb_updateProfile.aspx" />
                    &nbsp;
                    <asp:Button ID="btnChangePassword" runat="server" class="btn" Text="Change Password" PostBackUrl="~/UserProfile/sb_changePassword.aspx" />
                        </strong></h3>
                    <div class="dash-content" <%--style="background-color: #f5f5f5; margin: 80px 0px 0px -20px; border-radius: 20px; --%>">
                            <div class="overview">
                                    </div>
                                    <asp:Label ID="username" runat="server" Text="Username" ForeColor="black"></asp:Label>
                                    <asp:LoginName ID="LoginName1" runat="server" ForeColor="black" />
                                    <div>
                                        <asp:Label ID="lblName" runat="server" ForeColor="black"></asp:Label><br />
                                        <asp:Label ID="lblEmail" runat="server" ForeColor="black"></asp:Label><br />
                                        <asp:Label ID="lblPhone" runat="server" ForeColor="black"></asp:Label><br />
                                        <asp:Label ID="lblStreet" runat="server" ForeColor="black"></asp:Label><br />
                                        <asp:Label ID="lblZipcode" runat="server" ForeColor="black"></asp:Label>
                                    </div>
                                    <br />
                            </div>
                    </div>
            </div>
</asp:Content>