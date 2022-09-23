<%--<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_menu.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_menu" %>--%>

<%@ Page Title="Menu | Space Buns" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_menu.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_menu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="content-area">

        <nav class="menu-nav">
            <ul>
                <li>
                    <a href="#Chicken">Chicken</a>
                    <a href="#Fish">Fish</a>
                    <a href="#Beef">Beef</a>
                    <a href="#Lamb">Lamb</a>
                    <a href="#Meatless">Meatless</a>
                </li>
            </ul>
        </nav>

        <div class="cartButton">
            <%--<asp:Button ID="btnCart" runat="server" Text="Cart" UseSubmitBehavior="False" />--%>
        </div>

        <div class="menu-container">

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Chicken">
                        <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <div>

                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" style="border-radius:20px"/>
                            </div>
                            <div>
                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                            <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                            <div class="addToCart">
                                <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                            </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Fish">
                        <asp:Label ID="lblChicken" runat="server" Text='Fish' CssClass="lblCategory"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px"  style="border-radius:20px" />
                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                            <br />
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                            <br />
                            <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                            <div class="addToCart">
                                <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Beef">
                        <asp:Label ID="lblChicken" runat="server" Text='Beef' CssClass="lblCategory"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemTemplate>


                    <div>
                        <div class="menuProduct">
                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px"  style="border-radius20px"/>
                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                            <br />
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                            <br />
                            <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                            <div class="addToCart">
                                <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="fish" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.unitPrice, Product.description, Product.picture, Category.categoryName, Product.productID FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID WHERE (Category.categoryName LIKE @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="chicken" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, OrderDetails.unitPrice, OrderDetails.quantity, Product.picture FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID INNER JOIN Product ON OrderDetails.productID = Product.productID WHERE ([Order].customerID = @customerID)">
        <SelectParameters>
            <asp:Parameter Name="customerID" DefaultValue="1" />
        </SelectParameters>
    </asp:SqlDataSource>
    <script src="Javascript/medium-zoom.min.js"></script>
    <script>
        mediumZoom('.zoom', {
            background: '#000D',
            opacity: 0.5,
            margin: 100
        })
    </script>

</asp:Content>
