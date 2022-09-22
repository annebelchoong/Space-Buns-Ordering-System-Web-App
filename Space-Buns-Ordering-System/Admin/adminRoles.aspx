<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminRoles.aspx.cs" Inherits="Space_Buns_Ordering_System.Admin.adminRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
                <tr>
                    <td colspan="3">Membership and Role Management</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Users:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="adminName" DataValueField="adminID" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin] WHERE ([adminID] = @adminID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlUsers" Name="adminID" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
&nbsp;&nbsp;
                        <asp:Button ID="btnGetUsers" runat="server" OnClick="btnGetUsers_Click" Text="Get Users" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Create Role:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Roles:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="RoleName" DataValueField="RoleId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vw_aspnet_Roles] WHERE ([RoleId] = @RoleId)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlRoles" Name="RoleId" PropertyName="SelectedValue" Type="Object" />
                            </SelectParameters>
                        </asp:SqlDataSource>
&nbsp;&nbsp;
                        <asp:Button ID="btnGetRoles" runat="server" OnClick="btnGetRoles_Click" Text="Get Roles" />
&nbsp;
                        <asp:Button ID="btnGetUsersinRole" runat="server" OnClick="btnGetUsersinRole_Click" Text="Get User in Role" />
                        <br />
                        <br />
                        <asp:ListBox ID="lstUsers" runat="server" DataSourceID="SqlDataSource2" DataTextField="RoleName" DataValueField="RoleId"></asp:ListBox>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Role to user</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
    </form>
</asp:Content>
