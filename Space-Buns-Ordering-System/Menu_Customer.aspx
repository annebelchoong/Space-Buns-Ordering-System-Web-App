<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="Menu_Customer.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-area">

        <nav class="menu-nav">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White">
                            <HeaderStyle Font-Bold="True"  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"/>
                            <ItemTemplate >
                                <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' Height="120" Width="120"/>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [picture], [unitPrice], [description] FROM [Product]"></asp:SqlDataSource>
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

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White">
                            <HeaderStyle Font-Bold="True"  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"/>
                            <ItemTemplate >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' Height="250px" Width="300px" ImageAlign="AbsMiddle"/>
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

        <main class="menu-content">
        </main>
    </div>
</asp:Content>
