<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_menu_test.aspx.cs" Inherits="Space_Buns_Ordering_System.Menu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_menu_test.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />--%>

    <style>
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" />
        </div>
        <asp:Panel ID="pnlCustomization" runat="server" CssClass="popupPanel" ScrollBars="Auto">
            <div class="close-btn">
                <asp:Button ID="btnClose" runat="server" Text="&times;" UseSubmitBehavior="False" />
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
                    <asp:ListItem Class="rblItems">Set Meal</asp:ListItem>
                    <asp:ListItem Class="rblItems">A Lar Carte</asp:ListItem>
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
                            <asp:Label ID="lblTotalPrice" runat="server">RM 17.00</asp:Label>
                        </div>
                        <asp:Button ID="btnAddToCartConfirm" runat="server" Text="Add To Cart" />

                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="rblSetSelection" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>

        </asp:Panel>

        <%--        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>--%>
        <div class="cartButton">
            <asp:Button ID="btnCart" runat="server" Text="Cart" UseSubmitBehavior="False" />
        </div>
        <div>
            <asp:Panel ID="pnlCart" runat="server" CssClass="cart-panel">

                <div class="cartNavBar">
                    <div>
                        <h2>Your cart</h2>
                        You've added
                <asp:Label ID="lblNumOfItems" runat="server" Text="2"></asp:Label>
                        items
                    </div>
                    <div class="close-btn-cart">
                        <asp:Button ID="btnCloseCart" runat="server" Text="&times;" UseSubmitBehavior="False" />
                    </div>
                </div>
                <div class="addressAndTime">
                </div>
                <div class="cartProduct">
                    <div class="products">
                        <div class="product">
                            <div>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Media/menuBurgers/chicken1.jpg" CssClass="imgCart" />
                            </div>
                            <div class="productColumn">
                                <div class="productTop">
                                    <div class="productName">
                                        Double Trouble
                                    </div>
                                    <div class="deleteProduct">
                                        <asp:ImageButton ID="imgbtnTrash1" runat="server" ImageUrl="~/Media/Order/trash.svg" Height="20px" />
                                    </div>
                                </div>
                                <div class="productBottom">
                                    <div class="productQuantity">
                                        <div class="decrementButton">
                                            <asp:Button ID="btnIncrementCart" runat="server" Text="-" CssClass="buttonQuantity" />
                                        </div>
                                        <div class="quantityNumber">
                                            <asp:TextBox ID="txtQuantityCart" runat="server" Text="1" CssClass="textQuantity"></asp:TextBox>
                                        </div>
                                        <div class="incrementButton">
                                            <asp:Button ID="btnDecrementCart" runat="server" Text="+" CssClass="buttonQuantity" />
                                        </div>
                                    </div>
                                    <div class="totalPrice">
                                        RM
                                <asp:Label ID="lblProductTotalPrice" runat="server" Text="17.00"></asp:Label>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="product">
                            <div>
                                <asp:Image ID="Image3" runat="server" CssClass="imgCart" ImageUrl="~/Media/menuBurgers/beef3.jpg" />
                            </div>
                            <div class="productColumn">
                            <div class="productTop">
                                <div class="productName">
                                    King Of Cheese
                                </div>
                                <div class="deleteProduct">
                                    <asp:ImageButton ID="imgbtnTrash2" runat="server" ImageUrl="~/Media/Order/trash.svg" Height="20px" />
                                </div>
                            </div>
                            <div class="productBottom">
                                <div class="productQuantity">
                                    <div class="decrementButton">
                                        <asp:Button ID="Button1" runat="server" Text="-" CssClass="buttonQuantity" />
                                    </div>
                                    <div class="quantityNumber">
                                        <asp:TextBox ID="TextBox1" runat="server" Text="1" CssClass="textQuantity"></asp:TextBox>
                                    </div>
                                    <div class="incrementButton">
                                        <asp:Button ID="Button2" runat="server" Text="+" CssClass="buttonQuantity" />
                                    </div>
                                </div>
                                <div class="totalPrice">
                                    RM
                                <asp:Label ID="lblTotalPrice2" runat="server" Text="17.00"></asp:Label>
                                </div>
                            </div>
                                </div>
                        </div>
                    </div>
                    <div class="finalAmount">
                        <div>
                            Total
                        </div>
                        <div>
                            RM
                                <asp:Label ID="lblFinalAmount" runat="server" Text="34.00"></asp:Label>
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" />
                    </div>
                </div>

            </asp:Panel>
        </div>
        <%--            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnCart" EventName="onClientClick" />
            </Triggers>
        </asp:UpdatePanel>--%>


        <div>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlCustomization" TargetControlID="btnAddToCart" CancelControlID="btnClose" BackgroundCssClass="popupPanelBackground"></ajaxToolkit:ModalPopupExtender>
            <%--<ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="btnAddToCartConfirm" ExpandControlID="btnAddToCart" TargetControlID="pnlCustomization" />--%>
        </div>
    </form>
    <script>
        let openPanelButton = document.getElementById("btnCart");
        let closePanelButton = document.getElementById("btnCloseCart");
        //let cartPanel = document.querySelector(".cart-panel");
        let cartPanel = document.getElementById("pnlCart");

        openPanelButton.onclick = () => {
            cartPanel.classList.add("open");
            //openPanelButton.classList.add("hide")
        }

        closePanelButton.onclick = () => {
            cartPanel.classList.remove("open");
            //openPanelButton.classList.remove("hide");
        }
    </script>
</body>
</html>
