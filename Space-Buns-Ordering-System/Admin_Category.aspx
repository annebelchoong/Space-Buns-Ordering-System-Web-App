<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_Category.aspx.cs" Inherits="Space_Buns_Ordering_System.Admin_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 441px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 696px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style6 {
            height: 47px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            margin-top: 13;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2" style="margin-left: 2%; margin-top: 1%; margin-right: 2%;">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: xx-large; text-decoration: underline overline;" class="auto-style6">CATEGORY</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="3" style="vertical-align: top; font-weight: bold; font-style: italic;">Category Name :&nbsp;&nbsp;
                    <asp:TextBox ID="txtCatName0" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Set Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" />
                </td>
                <td class="auto-style4" rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic;">Category List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic;">Search :&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#999999" Height="24px">Search</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style6" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps;">Name</td>
                            <td class="auto-style7" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps;">Availability</td>
                            <td class="auto-style6" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps;">Action</td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Promotion</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;" class="auto-style7">Chicken</td>
                                        <td class="auto-style7" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;" class="auto-style7">
                                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Fish</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink11" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Beef</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink12" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Lamb</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink13" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Meatless</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            <asp:HyperLink ID="HyperLink7" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink14" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin;">Drinks</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Not Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">
                                            &nbsp;<asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink15" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                                        <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin;">Snacks</td>
                                        <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin;">Not Available</td>
                                        <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin;">
                                            &nbsp;<asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink16" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
</asp:Content>
