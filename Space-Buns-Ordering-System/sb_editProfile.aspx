<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_editProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_editProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">User Profile</span>
                    <br />
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
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
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
                                <asp:TextBox ID="txtDoB" runat="server"></asp:TextBox>
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
