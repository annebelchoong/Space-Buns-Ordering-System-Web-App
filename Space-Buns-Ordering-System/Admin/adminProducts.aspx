<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminProducts.aspx.cs" Inherits="Space_Buns_Ordering_System.adminProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 430px;
        }

        .auto-style2 {
            width: 1223px;
        }

        .auto-style5 {
            width: 781px;
        }

        .auto-style6 {
            width: 74px;
        }

        .auto-style9 {
            width: 363px;
        }

        .auto-style10 {
            width: 1677px;
        }

        .auto-style17 {
            width: 1260px;
        }

        .auto-style18 {
            width: 155px;
        }

        .auto-style19 {
            width: 109px;
        }

        .auto-style20 {
            width: 1000px;
        }

        .auto-style21 {
            width: 1260px;
            height: 44px;
        }

        .auto-style22 {
            width: 1677px;
            height: 44px;
        }

        .auto-style23 {
            width: 730px;
            height: 44px;
        }

        .auto-style24 {
            width: 363px;
            height: 44px;
        }

        .auto-style25 {
            width: 109px;
            height: 44px;
        }

        .auto-style26 {
            width: 155px;
            height: 44px;
        }

        .auto-style27 {
            width: 1000px;
            height: 44px;
        }

        .auto-style28 {
            width: 730px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <h1 class="fs-1 mb-3">Products</h1>
        <table class="auto-style2" style="margin: 1% 2% 5% 2%;">
            <tr>
                <%--<td colspan="3" style="font-weight: bold; font-size: xx-large; text-decoration: underline overline; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style6">PRODUCT</td>--%>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="3" style="vertical-align: top; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Product Name :&nbsp;&nbsp;
                    <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
                    Product Description :<br />
                    &nbsp;<asp:TextBox ID="txtProdDesc" runat="server" Height="90px" TextMode="MultiLine" Width="303px"></asp:TextBox>
                    <br />
                    <br />
                    Product Price :
                    <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Product Quantity :
                    <asp:TextBox ID="txtProdQuantity" runat="server" TextMode="Number" Width="78px"></asp:TextBox>
                    <br />
                    <br />
                    Product Image :<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    Product Category :
                    <asp:DropDownList ID="ddlProdStatus" runat="server">
                        <asp:ListItem>Chicken</asp:ListItem>
                        <asp:ListItem>Fish</asp:ListItem>
                        <asp:ListItem>Beef</asp:ListItem>
                        <asp:ListItem>Lamb</asp:ListItem>
                        <asp:ListItem>Meatless</asp:ListItem>
                        <asp:ListItem>Promotion</asp:ListItem>
                        <asp:ListItem>Drinks</asp:ListItem>
                        <asp:ListItem>Snacks</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Set Status :
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
                <td rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style5">Product List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style5">Search :&nbsp;
                    <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="ProductID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style21" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Name</td>
                            <td class="auto-style22" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Image</td>
                            <td class="auto-style23" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Price (RM)</td>
                            <td class="auto-style24" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Quantity</td>
                            <td class="auto-style25" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Category</td>
                            <td class="auto-style26" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Availability</td>
                            <td class="auto-style27" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Action</td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin;">Double Trouble</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">17</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">50</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Chicken</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Crispy Deluxe</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">60</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Chicken</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink20" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Queen Chick</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">40</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Chicken</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink21" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Salmon Fillet</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">55</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Fish</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink22" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Jelly Fish</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish2.jpeg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">64</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Fish</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink23" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Little Burgermaid</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">13</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">58</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Fish</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink7" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink24" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">You Got Beef</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">35</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Beef</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink25" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Beefy Bros</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton8" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">57</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Beef</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink26" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">King Of Cheese</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton9" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">17</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">42</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Beef</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink27" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">City Buns</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton10" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">68</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Lamb</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink11" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink28" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Spicy Swiss</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton11" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">39</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Lamb</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink12" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink29" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Greek Lamb</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton12" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">48</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Lamb</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink13" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink30" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Mushy Shrooms</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton13" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">11</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">51</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Meatless</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink14" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink31" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Vegelicious</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton14" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">12</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">69</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Meatless</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink15" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink32" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Rice Patties</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton15" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">65</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Meatless</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink16" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink33" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Alien&#39;s Day Special</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton16" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/Alien Day.png" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">21</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Promotion</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink17" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink34" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Hari Raya Special</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton17" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/HariRayaPoster.png" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">18</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">12</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Promotion</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink18" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink35" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Buy 1 Free 1</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton18" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/Buy1Free1.png" Width="65px" />
                            </td>
                            <td class="auto-style28" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">-</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">-</td>
                            <td class="auto-style19" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">Promotion</td>
                            <td class="auto-style18" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">Available</td>
                            <td class="auto-style20" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">
                                <asp:HyperLink ID="HyperLink19" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink36" runat="server" CssClass="active" Font-Underline="True">Delete</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
