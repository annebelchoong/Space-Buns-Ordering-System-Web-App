<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="Admin_Product.aspx.cs" Inherits="Space_Buns_Ordering_System.Admin_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 430px;
        }
        .auto-style2 {
            width: 1223px;
        }
        .auto-style3 {
            width: 306px;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 781px;
        }
        .auto-style6 {
            width: 74px;
        }
        .auto-style7 {
            width: 2428px;
        }
        .auto-style8 {
            width: 357px;
        }
        .auto-style9 {
            width: 363px;
        }
        .auto-style10 {
            width: 3477px;
        }
        .auto-style11 {
            width: 5012px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2" style="margin: 1% 2% 5% 2%;">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: xx-large; text-decoration: underline overline;" class="auto-style6">PRODUCT</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="3" style="vertical-align: top; font-weight: bold; font-style: italic;">Product Name :&nbsp;&nbsp;
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
                    <asp:TextBox ID="txtCatName3" runat="server"></asp:TextBox>
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
                <td class="auto-style4" rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic;" class="auto-style5">Product List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic;" class="auto-style5">Search :&nbsp;
                    <asp:TextBox runat="server" ForeColor="#999999" Height="24px">Search</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style11" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Name</td>
                            <td class="auto-style10" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Image</td>
                            <td class="auto-style7" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Price (RM)</td>
                            <td class="auto-style9" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Quantity</td>
                            <td class="auto-style8" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Category</td>
                            <td class="auto-style3" style="border-style: solid; border-width: thin; text-align: center; font-weight: bold; font-style: italic;">Availability</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Double Trouble</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">17</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">50</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Chicken</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Crispy Deluxe</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">60</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Chicken</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Queen Chick</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/chicken3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">40</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Chicken</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Salmon Fillet</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">55</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Fish</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Jelly Fish</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish2.jpeg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">64</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Fish</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Little Burgermaid</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/fish3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">13</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">58</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Fish</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">You Got Beef</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">35</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Beef</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Beefy Bros</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton8" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">57</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Beef</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">King Of Cheese</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton9" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/beef3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">17</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">42</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Beef</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">City Buns</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton10" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">68</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Lamb</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Spicy Swiss</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton11" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">39</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Lamb</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Greek Lamb</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton12" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/lamb3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">16</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">48</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Lamb</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Mushy Shrooms</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton13" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless1.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">11</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">51</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Meatless</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Vegelicious</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton14" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless2.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">12</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">69</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Meatless</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Rice Patties</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton15" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/menuBurgers/meatless3.jpg" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">14</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">65</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Meatless</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Alien&#39;s Day Special</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton16" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/Alien Day.png" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">15</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">21</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Promotion</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin">Hari Raya Special</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton17" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/HariRayaPoster.png" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">18</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">12</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Promotion</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; text-align: center;">Available</td>
                        </tr>
                        <tr>
                            <td class="auto-style11" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin;">Buy 1 Free 1</td>
                            <td class="auto-style10" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">
                                <asp:ImageButton ID="ImageButton18" runat="server" Height="65px" ImageAlign="Middle" ImageUrl="~/Media/Promotions/Buy1Free1.png" Width="65px" />
                            </td>
                            <td class="auto-style7" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">-</td>
                            <td class="auto-style9" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">-</td>
                            <td class="auto-style8" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">Promotion</td>
                            <td class="auto-style3" style="border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; text-align: center;">Available</td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
</asp:Content>
