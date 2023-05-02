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
                    <asp:LinkButton ID="lnkChicken" runat="server" Text="Chicken" OnClick="lnkCategory_Click" />
                    <asp:LinkButton ID="lnkFish" runat="server" Text="Fish" OnClick="lnkCategory_Click" />
                    <asp:LinkButton ID="lnkBeef" runat="server" Text="Beef" OnClick="lnkCategory_Click" />
                    <asp:LinkButton ID="lnkLamb" runat="server" Text="Lamb" OnClick="lnkCategory_Click" />
                    <asp:LinkButton ID="lnkMeatless" runat="server" Text="Meatless" OnClick="lnkCategory_Click" />
                     <asp:LinkButton ID="lnkDrink" runat="server" Text="Drink" OnClick="lnkCategory_Click" />
                     <asp:LinkButton ID="lnkSnack" runat="server" Text="Snack" OnClick="lnkCategory_Click" />
                     <asp:LinkButton ID="lnkChips" runat="server" Text="Chips" OnClick="lnkCategory_Click" />
                     <asp:LinkButton ID="lnkPizza" runat="server" Text="Pizza" OnClick="lnkCategory_Click" />
                </li>
            </ul>
            <div class="filter-box">
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Search..." CssClass="search-input" AutoPostBack="True" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-button" OnClick="btnSearch_Click" />
            </div>
        </nav>

        <div class="cartButton">
            <%--<asp:Button ID="btnCart" runat="server" Text="Cart" UseSubmitBehavior="False" />--%>
        </div>

        <div class="menu-container">
            <div class="category-title">
            <asp:Label ID="lblCategoryTitle" runat="server" CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>
            </div>
           <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                
            

                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>
                    


                    <div>
                        <div class="menuProduct">
                            <%--<div class="icon-container">
                                <asp:Image ID="imgIcon" runat="server" ImageUrl='<%# GetIcon(Eval("categoryName").ToString()) %>' CssClass="icon" />
                            </div>--%>
                            <div>

                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" Style="border-radius: 20px" ImageAlign="Middle" />
                            </div>
                            <div>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" ForeColor="185,120,54" Font-Size="20px" Font-Bold="True" />
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc" ForeColor="156,156,156"></asp:Label>
                                <br />
                                <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice" ForeColor="255,255,255"></asp:Label>
                                <div class="addToCart">
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                                </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>
            </div>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID ">
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

            <%--<asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Fish">
                        <asp:Label ID="lblFish" runat="server" Text='Fish' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <div>

                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" Style="border-radius: 20px" ImageAlign="Middle" />
                            </div>
                            <div>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" ForeColor="185,120,54" Font-Size="20px" Font-Bold="True" />
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc" ForeColor="156,156,156"></asp:Label>
                                <br />
                                <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice" ForeColor="255,255,255"></asp:Label>
                                <div class="addToCart">
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                                </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

            <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0" OnSelectedIndexChanged="DataList5_SelectedIndexChanged">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Beef">
                        <asp:Label ID="lblBeef" runat="server" Text='Beef' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <div>

                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" Style="border-radius: 20px" ImageAlign="Middle" />
                            </div>
                            <div>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" ForeColor="185,120,54" Font-Size="20px" Font-Bold="True" />
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc" ForeColor="156,156,156"></asp:Label>
                                <br />
                                <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice" ForeColor="255,255,255"></asp:Label>
                                <div class="addToCart">
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                                </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

            <br />

            <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource4" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0" OnSelectedIndexChanged="DataList5_SelectedIndexChanged">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Lamb">
                        <asp:Label ID="lblLamb" runat="server" Text='Lamb' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <div>

                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" Style="border-radius: 20px" ImageAlign="Middle" />
                            </div>
                            <div>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" ForeColor="185,120,54" Font-Size="20px" Font-Bold="True" />
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc" ForeColor="156,156,156"></asp:Label>
                                <br />
                                <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice" ForeColor="255,255,255"></asp:Label>
                                <div class="addToCart">
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                                </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Lamb" Name="categoryName" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource5" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0" OnSelectedIndexChanged="DataList5_SelectedIndexChanged">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    <div id="Meatless">
                        <asp:Label ID="lblMeatless" runat="server" Text='Meatless' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>

                    <div>
                        <div class="menuProduct">
                            <div>

                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="200px" Style="border-radius: 20px" ImageAlign="Middle" />
                            </div>
                            <div>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" ForeColor="185,120,54" Font-Size="20px" Font-Bold="True" />
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc" ForeColor="156,156,156"></asp:Label>
                                <br />
                                <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice" ForeColor="255,255,255"></asp:Label>
                                <div class="addToCart">
                                    <asp:Button ID="btnAddtoCart" runat="server" Text="View Details" CssClass="btnAddToCart" CommandName="Select" CommandArgument='<%# Eval("name") %>' />
                                </div>

                            </div>
                        </div>

                    </div>
                </ItemTemplate>

            </asp:DataList>

              <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Meatless" Name="categoryName" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Beef" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.unitPrice, Product.description, Product.picture, Category.categoryName, Product.productID FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID WHERE (Category.categoryName LIKE @categoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="fish" Name="categoryName" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
        <SelectParameters>
            <asp:Parameter Name="categoryName" DefaultValue="Chicken" />
        </SelectParameters>
    </asp:SqlDataSource>--%>


       <%--<HeaderTemplate>
                    <div id="Chicken">
                        <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>--%>




