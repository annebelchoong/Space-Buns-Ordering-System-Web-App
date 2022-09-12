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
                    <a href="#chicken">Chicken</a>
                    <a href="#fish">Fish</a>
                    <a href="#beef">Beef</a>
                    <a href="#lamb">Lamb</a>
                    <a href="#meatless">Meatless</a>
                </li>
            </ul>
        </nav>

        <div class="cartButton">
            <%--<asp:Button ID="btnCart" runat="server" Text="Cart" UseSubmitBehavior="False" />--%>
        </div>

        <main class="menu-content">
            <section id="chicken">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Chicken</h3>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/chicken1.jpg" alt="Double Trouble Space Buns">
                            <article>
                                <h4 class="menu-item-name">Double Trouble</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Made from chicken thigh to be crispy outside and tender,
                                        inside is topped with freshly shredded pickles along with
                                        spicy creamy mayo, then served on a hot fragrant bun, with joy.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM17.00</div>
                                <div>
                                    <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/chicken2.jpg" alt="Crispy Deluxe Space Buns">
                            <article>
                                <h4 class="menu-item-name">Crispy Deluxe</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Crispy chicken fillet with a layer of luncheon meat, topped with
                                        lettuce and barbeque sauce, alongside with sliced cucumbers with
                                        creamy mayo, served on a hot butter-toasted bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                                <div>
                                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/chicken3.jpg" alt="Queen Chick Space Buns">

                            <article>
                                <h4 class="menu-item-name">Queen Chick</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        The one and only Queen of all burgers. Famous grilled chicken,
                                        a sliced of American Cheese, tomatoes, lettuce, pickles,
                                        with buns that are will always be perfectly toasted.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                                <div>
                                    <asp:Button ID="Button2" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="fish">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Fish</h3>

                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/fish1.jpg" alt="Salmon Fillet Space Buns">

                            <article>
                                <h4 class="menu-item-name">Salmon Fillet</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Salmon patty, deep fried at the optimum temperature, ensuring that the salmon
                                        tenderness remains. Served with slices of tomatoes, lettuce, onions and mayo.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                                <div>
                                    <asp:Button ID="Button3" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/fish2.jpeg" alt="Jelly Fish Space Buns">

                            <article>
                                <h4 class="menu-item-name">Jelly Fish</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        The taste of dory fish splashed with the all-time favourite
                                        japanese's teriyaki sauce, sprinkled with freshly cut chives,
                                        red onions on toasted garlic brioche buns.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                                <div>
                                    <asp:Button ID="Button4" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/fish3.jpg" alt="Little Burgermaid Space Buns">

                            <article>
                                <h4 class="menu-item-name">Little Burgermaid</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        A succulent fish fillet is embraced by a whole slice of
                                        tomato, topped with tangy tartar sauce to accentuate the
                                        fish's flavor and it's all served between a toasted bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM13.00</div>
                                <div>
                                    <asp:Button ID="Button5" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="beef">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Beef</h3>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/beef1.jpg" alt="You Got Beef Space Buns">

                            <article>
                                <h4 class="menu-item-name">You Got Beef</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Signature flame-grilled beef patty topped with Beef bacon,
                                        cheese and our special smokey BBQ sauce all in a toasted sesame seed bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                                <div>
                                    <asp:Button ID="Button6" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/beef2.jpg" alt="Beefy Bros Space Buns">
                            <article>
                                <h4 class="menu-item-name">Beefy Bros</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Everything you want in a burger, but with double the Beef and double the Cheese!
                                        Basically, a double cheese burger, but with so much more!
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                                <div>
                                    <asp:Button ID="Button7" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/beef3.jpg" alt="King of Cheese Space Buns">

                            <article>
                                <h4 class="menu-item-name">King of Cheese</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        You can never go wrong with cheese. That's the King of Cheese!
                                        A triple grilled Beef Patty covered with lots of mozarella cheese.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM17.00</div>
                                <div>
                                    <asp:Button ID="Button8" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="lamb">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Lamb</h3>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/lamb1.jpg" alt="City Buns Space Buns">

                            <article>
                                <h4 class="menu-item-name">City Buns</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Tender and juicy piece of meat with an authentic taste.
                                        Made with lamb that gets its unadulterated flavour from the
                                        grass and clover it feeds on in the wilds of New Zealand.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                                <div>
                                    <asp:Button ID="Button9" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/lamb2.jpg" alt="Spicy Swiss Space Buns">

                            <article>
                                <h4 class="menu-item-name">Spicy Swiss</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Grilled lamb patties seasoned with dill, mint and jalapeno,
                                        peppery arugula, and melty manchego between two buns
                                        slathered with a roasted red pepper mayo.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                                <div>
                                    <asp:Button ID="Button10" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/lamb3.jpg" alt="Greek Lamb Space Buns">

                            <article>
                                <h4 class="menu-item-name">Greek Lamb</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Flavoured overboard, loaded with goodies such as tzatziki sauce,
                                        creamy feta cheese, topped with tomatoes, cucumbers, red onions
                                        and baby arugula, Greek style.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                                <div>
                                    <asp:Button ID="Button11" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="meatless">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Meatless</h3>

                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/meatless1.jpg" alt="Mushy Shrooms Space Buns">

                            <article>
                                <h4 class="menu-item-name">Mushy Shrooms</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Grilled Tofu w/ Red Sauce paired w/ Lettuce,
                                        Onions & Cumcumbers. Choose between
                                        Mild or Hot flavour.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM11.00</div>
                                <div>
                                    <asp:Button ID="Button12" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/meatless2.jpg" alt="Vegelicious Space Buns">

                            <article>
                                <h4 class="menu-item-name">Vegelicious</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Vegan patty along side with shredded pickles, onions,
                                        tomatoes, topped with our secret sauce, on wheat buns.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM12.00</div>
                                <div>
                                    <asp:Button ID="Button13" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom" src="Media/menuBurgers/meatless3.jpg" alt="Rice Patties Space Buns">

                            <article>
                                <h4 class="menu-item-name">Rice Patties</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Patties that is made from rice in barbeque flavour,
                                        with vegan patty, tomatoes and lettuce.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                                <div>
                                    <asp:Button ID="Button14" runat="server" Text="Add To Cart" CssClass="btnAddToCart" />
                                </div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>
        </main>
    </div>

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
    <%--<ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="btnAddToCartConfirm" ExpandControlID="btnAddToCart" TargetControlID="pnlCustomization" />--%>
    <%--<script src="Javascript/sb_menu.js"></script>--%>
    <script src="Javascript/medium-zoom.min.js"></script>
    <script>
        mediumZoom('.zoom', {
            background: '#000D',
            opacity: 0.5,
            margin: 100
        })
    </script>

</asp:Content>
