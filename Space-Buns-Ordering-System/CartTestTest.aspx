<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="CartTestTest.aspx.cs" Inherits="Space_Buns_Ordering_System.CartTestTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu_test.css" rel="stylesheet" />
    <link href="CSS/sb_menu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <div class="menu-container">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Chicken">
                    <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                        <div class="addToCart">
                            <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                        </div>
                    </div>

                </div>
            </ItemTemplate>
        </asp:DataList>

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Fish">
                    <asp:Label ID="lblChicken" runat="server" Text='Fish' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProductF" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProductF" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescriptionF" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPriceF" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                        <div class="addToCart">
                            <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                        </div>
                    </div>

                </div>
            </ItemTemplate>
        </asp:DataList>

        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Beef">
                    <asp:Label ID="lblChicken" runat="server" Text='Beef' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProductB" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProductB" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescriptionB" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPriceB" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                        <div class="addToCart">
                            <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                        </div>
                    </div>

                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>




    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Fish" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.unitPrice, Product.description, Product.picture, Category.categoryName FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID WHERE (Category.categoryName LIKE @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="chicken" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, OrderDetails.unitPrice, OrderDetails.quantity, Product.picture FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID INNER JOIN Product ON OrderDetails.productID = Product.productID WHERE ([Order].customerID = @customerID)">
        <SelectParameters>
            <asp:Parameter Name="customerID" DefaultValue="1" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
