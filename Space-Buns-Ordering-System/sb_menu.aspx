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

<%--        <nav class="menu-nav">
            <ul>
                <li>
                    <a href="#Chicken">Chicken</a>
                    <a href="#Fish">Fish</a>
                    <a href="#Beef">Beef</a>
                    <a href="#Lamb">Lamb</a>
                    <a href="#Meatless">Meatless</a>
                </li>
            </ul>
        </nav>--%>

        <div class="cartButton">
            <%--<asp:Button ID="btnCart" runat="server" Text="Cart" UseSubmitBehavior="False" />--%>
        </div>

        <div class="menu-container">

            <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="productID" OnItemCommand="DataList_ItemCommand" CellPadding="0">
                <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <%--<HeaderTemplate>
                    <div id="Chicken">
                        <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory" ForeColor="185,120,54" Font-Size="35px" Font-Bold="True"></asp:Label>

                    </div>
                </HeaderTemplate>--%>
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

           <%-- <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
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
    </asp:SqlDataSource>--%>

<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture, Product.productID FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
        <SelectParameters>
            <asp:Parameter Name="categoryName" DefaultValue="Chicken" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

    <%-- POP up modal --%>
    <asp:Panel ID="pnlCustomization" runat="server" CssClass="popupPanel" ScrollBars="Auto">
        <div class="close-btn">
            <asp:Button ID="btnClose" runat="server" Text="&times;" UseSubmitBehavior="False" CssClass="btnClose" />
        </div>
        <div class="description">
            <div class="descriptionLeft">
                <div class="productBanner">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Media/menuBurgers/chicken1.jpg" CssClass="imgBanner" />
                </div>
            </div>
            <div class="descriptionRight">
                <div class="productTitle">
                    <asp:Label ID="lblProductTitle" runat="server" Text="Double Trouble"></asp:Label>
                    <%--<h1>Chicken Burger</h1>--%>
                </div>
                <div class="productDesc">
                    <asp:Label ID="lblProductDescription" runat="server" Text="<b>Double Trouble </b>is bla bla bla askldjf; klasjd lkj asdf asdf asdf asdf asdf asdf asdf asdf asdfa sdf asdf asdf as dfas df asdf asdf as df as"></asp:Label>
                    <%--<p><b>Crispy chicken fillet </b>is bla bla bla askldjf; klasjd lkj asdf asdf asdf asdf asdf asdf asdf asdf asdfa sdf asdf asdf as dfas df asdf asdf as df as</p>--%>
                </div>
            </div>
        </div>

        <div class="setSelection">
            <asp:RadioButtonList ID="rblSetSelection" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RblSetSelection_SelectedIndexChanged" AutoPostBack="True" CellSpacing="-1">
                <asp:ListItem Class="rblItems">&nbsp;Set Meal</asp:ListItem>
                <asp:ListItem Class="rblItems">&nbsp;A Lar Carte</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="lblTest" runat="server"></asp:Label>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <ajaxToolkit:Accordion ID="Accordion1" runat="server" FadeTransitions="False" TransitionDuration="250" RequireOpenedPane="False" Height="528px" SelectedIndex="-1" CssClass="accordian" ContentCssClass="accordianContent" HeaderCssClass="accordianHeader" HeaderSelectedCssClass="accordianHeaderSelected">
                        <Panes>
                            <ajaxToolkit:AccordionPane ID="Pane1" runat="server">
                                <Header>
                                    Add-on Patties
                                </Header>
                                <Content>
                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;Add 1 more patty</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;Add 2 more chicken patties</asp:ListItem>
                                    </asp:RadioButtonList>
                                </Content>

                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="Pane2" runat="server">
                                <Header>
                                    Choices of sides
                                </Header>
                                <Content>
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;Fries</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;Wedges</asp:ListItem>
                                    </asp:RadioButtonList>
                                </Content>

                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="Pane3" runat="server">
                                <Header>
                                    Choices of beverages
                                </Header>
                                <Content>
                                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Class="rblCustomize">&nbsp;Coke</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Pepsi</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;100 Plus</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Sprite</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Fanta Orange</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Heaven n Earth Ice Lemon Tea</asp:ListItem>
                                    </asp:RadioButtonList>
                                </Content>

                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="Pane4" runat="server">
                                <Header>
                                    Add-on Sauce
                                </Header>
                                <Content>
                                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Class="rblCustomize">&nbsp;BBQ Sauce</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Cheese sauce</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Spicy Mayo</asp:ListItem>
                                        <asp:ListItem Class="rblCustomize">&nbsp;Mustard</asp:ListItem>
                                    </asp:RadioButtonList>
                                </Content>

                            </ajaxToolkit:AccordionPane>
                        </Panes>
                    </ajaxToolkit:Accordion>
                </div>
                <div class="bottomContainer">
                    <div class="quantityContainer">
                        <div class="decrementButton">
                            <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="buttonQuantity" />
                        </div>
                        <div class="quantityNumber">
                            <asp:TextBox ID="txtQuantity" runat="server" Text="1" CssClass="textQuantity"></asp:TextBox>
                        </div>
                        <div class="incrementButton">
                            <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="buttonQuantity" />
                        </div>
                    </div>
                    <div>
                        <asp:Label ID="lblTotalPrice" runat="server" CssClass="lblTotalPrice">RM 17.00</asp:Label>
                    </div>
                    <asp:Button ID="btnAddToCartConfirm" runat="server" Text="Add To Cart" CssClass="btnAddToCartConfirm" />

                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="rblSetSelection" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>

    </asp:Panel>
    <div>
    </div>

    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlCustomization" TargetControlID="btnAddToCart" CancelControlID="btnClose" BackgroundCssClass="popupPanelBackground"></ajaxToolkit:ModalPopupExtender>

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
