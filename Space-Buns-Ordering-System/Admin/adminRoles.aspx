<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminRoles.aspx.cs" Inherits="Space_Buns_Ordering_System.Admin.adminRoles" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="Javascript/adminDashboard.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-top: 1;
        }

        .btn {
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            /*            width: 150px;
            height: 20px;*/
            background-color: white;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
            margin-left: 48px;
            padding: 7px 12px;
        }

            .btn:hover {
                text-decoration: none;
                color: white;
                background-color: #B97836;
                transition: 250ms;
            }

        .modalBackground {
            background-color: black;
            filter: opacity(90) !important;
            opacity: 0.6 !important;
            z-index: 20;
        }

        .modalpopup {
            padding: 30px;
            position: relative;
            width: 35%;
            height: 460px;
            background-color: black;
            border-radius: 20px;
        }

        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
        }

        .auto-style3 {
            margin-left: 212px;
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            /*            width: 150px;
            height: 20px;*/
            background-color: black;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
            margin-left: 48px;
            padding: 7px 12px;
        }

            .auto-style3:hover {
                text-decoration: none;
                color: white;
                background-color: #B97836;
                transition: 250ms;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />

    <div class="container-fluid">
        <div class="row my-5">
            <h3 class="fs-4 mb-3"><strong>Membership and Role Management</strong></h3>
            <div class="col">
                <table class="table bg-white rounded shadow-sm ">
                    <tr>
                        <td class="auto-style1"><strong>Users:</strong></td>
                        <td>
                            <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUsers_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnGetUsers" runat="server" OnClick="btnGetUsers_Click" Text="Get Users" class="btn" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong></strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong>Create Role:</strong></td>
                        <td>
                            <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" class="btn" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong></strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong>Roles:</strong></td>
                        <td>
                            <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnGetRoles" runat="server" OnClick="btnGetRoles_Click" Text="Get Roles" class="btn" />
                            &nbsp;
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong>User List in Selected Role:</strong></td>
                        <td>
                            <asp:Button ID="btnGetUsersinRole" runat="server" OnClick="btnGetUsersinRole_Click" Text="Get User in Role" class="btn" />
                            <br />
                            <br />
                            <asp:ListBox ID="lstUsers" runat="server" Width="50%" CssClass="auto-style1"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong>Assign Role to user</strong></td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            &nbsp;
                            <asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" class="btn" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
                    <p class="auto-style2" color="white">Your roles are successfully being assign!</p>
                    <br />
                    <asp:Button ID="btnClose" runat="server" Text="Close" class="btn" CssClass="auto-style3" />
                </asp:Panel>

                <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="btnAssign" CancelControlID="btnClose" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
            </div>
        </div>
    </div>
</asp:Content>
