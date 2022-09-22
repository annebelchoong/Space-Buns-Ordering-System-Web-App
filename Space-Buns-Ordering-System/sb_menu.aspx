<%--<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_menu.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_menu" %>--%>

<%@ Page Title="Menu | Space Buns" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_menu.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_menu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-area">

        <nav class="menu-nav">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CaptionAlign="Bottom" CellSpacing="30" Height="649px" Width="1000px">
                            <HeaderStyle Font-Bold="True"  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Font-Size="X-Large" ForeColor="White"/>
                            <ItemTemplate >
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="77px" Width="120px" ImageAlign="Baseline"/>
                                <br />
                                <asp:Label ID="nameLabel" runat="server" ForeColor= "185,120,54" Font-Size="30px" Font-Bold="True" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="descriptionLabel" ForeColor= "156,156,156" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Price (RM):
                                <asp:Label ID="unitPriceLabel" ForeColor= "255,255,255" runat="server" Text='<%# Eval("unitPrice") %>' />
                                <br />
<br />
                            </ItemTemplate>
                         
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.picture, Product.unitPrice, Product.description, Category.categoryName FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </nav>

        <main class="menu-content">
        </main>
    </div>

</asp:Content>
