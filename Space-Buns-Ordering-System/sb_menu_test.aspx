<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_menu_test.aspx.cs" Inherits="Space_Buns_Ordering_System.Menu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <%--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />--%>

    <style>
        .row {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        .cart-panel {
            position: fixed;
            height: 100vh;
            width: 500px;
            right: -560px;
            top: 0;
            border-top-left-radius: 50px;
            border-bottom-left-radius: 50px;
            backdrop-filter: blur(5px);
            background: rgba(255,255,255,0.5);
            box-shadow: rgba(149,157,165,0.2) 0px 8px 24px;
            padding-right: 30px;
            padding-left: 30px;
            -webkit-transition: all 0.5s ease-in-out;
        }

        .open {
            right: 0 !important;
        }

        .hide {
            visibility: hidden !important;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" />
        </div>
        <asp:Panel ID="pnlCustomization" runat="server">
            <div class="close-btn">
                <asp:Button ID="btnClose" runat="server" Text="&times;" UseSubmitBehavior="False" />
            </div>
            <div class="productBanner">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Media/menuBurgers/chicken1.jpg" Width="100px" />
                <asp:Label ID="lblProductTitle" runat="server" Text="Crispy Chicken Burger"></asp:Label>
                <%--<h1>Chicken Burger</h1>--%>
            </div>
            <div class="productDesc">
                <asp:Label ID="lblProductDescription" runat="server" Text="<b>Crispy chicken fillet </b>is bla bla bla askldjf; klasjd lkj asdf asdf asdf asdf asdf asdf asdf asdf asdfa sdf asdf asdf as dfas df asdf asdf as df as"></asp:Label>
                <%--<p><b>Crispy chicken fillet </b>is bla bla bla askldjf; klasjd lkj asdf asdf asdf asdf asdf asdf asdf asdf asdfa sdf asdf asdf as dfas df asdf asdf as df as</p>--%>
            </div>
            <div class="setSelection">
                <asp:RadioButtonList ID="rblSetSelection" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RblSetSelection_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Set Meal</asp:ListItem>
                    <asp:ListItem>A Lar Carte</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="lblTest" runat="server"></asp:Label>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div>
                        <ajaxToolkit:Accordion ID="Accordion1" runat="server" FadeTransitions="True" TransitionDuration="350" RequireOpenedPane="False" Height="528px" SelectedIndex="-1">
                            <Panes>
                                <ajaxToolkit:AccordionPane ID="Pane1" runat="server">
                                    <Header>
                                        Add-on Patties
                                    </Header>
                                    <Content>
                                        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                            <asp:ListItem>Add 1 more patty</asp:ListItem>
                                            <asp:ListItem>Add 2 more chicken patties</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </Content>

                                </ajaxToolkit:AccordionPane>
                                <ajaxToolkit:AccordionPane ID="Pane2" runat="server">
                                    <Header>
                                        Choices of sides
                                    </Header>
                                    <Content>
                                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                            <asp:ListItem>Fries</asp:ListItem>
                                            <asp:ListItem>Wedges</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </Content>

                                </ajaxToolkit:AccordionPane>
                                <ajaxToolkit:AccordionPane ID="Pane3" runat="server">
                                    <Header>
                                        Choices of beverages
                                    </Header>
                                    <Content>
                                        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                            <asp:ListItem>Coke</asp:ListItem>
                                            <asp:ListItem>Pepsi</asp:ListItem>
                                            <asp:ListItem>100 Plus</asp:ListItem>
                                            <asp:ListItem>Sprite</asp:ListItem>
                                            <asp:ListItem>Fanta Orange</asp:ListItem>
                                            <asp:ListItem>Heaven n Earth Ice Lemon Tea</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </Content>

                                </ajaxToolkit:AccordionPane>
                                <ajaxToolkit:AccordionPane ID="Pane4" runat="server" ContentCssClass="test">
                                    <Header>
                                        Add-on Sauce
                                    </Header>
                                    <Content>
                                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" Width="50%">
                                            <asp:ListItem>BBQ Sauce</asp:ListItem>
                                            <asp:ListItem>Cheese sauce</asp:ListItem>
                                            <asp:ListItem>Spicy Mayo</asp:ListItem>
                                            <asp:ListItem>Mustard</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </Content>

                                </ajaxToolkit:AccordionPane>
                            </Panes>
                        </ajaxToolkit:Accordion>
                    </div>
                    <div class="quantityContainer">
                        <div class="decrementButton">
                            <asp:Button ID="btnDecrement" runat="server" Text="-" />
                        </div>
                        <div class="quantityNumber">
                            <asp:TextBox ID="txtQuantity" runat="server" Text="1"></asp:TextBox>
                        </div>
                        <div class="incrementButton">
                            <asp:Button ID="btnIncrement" runat="server" Text="+" />
                        </div>
                    </div>
                    <div>
                        <asp:Label ID="lblTotalPrice" runat="server">RM 0.00</asp:Label>
                    </div>
                    <asp:Button ID="btnAddToCartConfirm" runat="server" Text="Add To Cart" />
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
                <asp:Label ID="lblNumOfItems" runat="server"></asp:Label>
                    &nbsp;items
                </div>
                <div class="close-btn">
                    <asp:Button ID="btnCloseCart" runat="server" Text="&times;" UseSubmitBehavior="False" />
                </div>
            </div>
            <div class="addressAndTime">
            </div>
            <div class="cartProduct">
                <div class="products">
                    <div class="product">
                        <div>
                            <asp:Image ID="Image2" runat="server" />
                        </div>
                        <div class="productTop">
                            <div class="productName">
                                Crispy Deluxe
                            </div>
                            <div class="deleteProduct">
                                <asp:ImageButton ID="imgbtnTrash1" runat="server" ImageUrl="~/Media/Order/trash-can.svg" Height="20px" />
                            </div>
                        </div>
                        <div class="productBottom">
                            <div class="productQuantity">
                                <div class="decrementButton">
                                    <asp:Button ID="btnIncrementCart" runat="server" Text="-" />
                                </div>
                                <div class="quantityNumber">
                                    <asp:TextBox ID="txtQuantityCart" runat="server" Text="1"></asp:TextBox>
                                </div>
                                <div class="incrementButton">
                                    <asp:Button ID="btnDecrementCart" runat="server" Text="+" />
                                </div>
                            </div>
                            <div class="totalPrice">
                                RM
                                <asp:Label ID="lblProductTotalPrice" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div>
                            <asp:Image ID="Image3" runat="server" />
                        </div>
                        <div class="productTop">
                            <div class="productName">
                                King Of Cheese
                            </div>
                            <div class="deleteProduct">
                                <asp:ImageButton ID="imgbtnTrash2" runat="server" ImageUrl="~/Media/Order/trash-can.svg" Height="20px" />
                            </div>
                        </div>
                        <div class="productBottom">
                            <div class="productQuantity">
                                <div class="decrementButton">
                                    <asp:Button ID="Button1" runat="server" Text="-" />
                                </div>
                                <div class="quantityNumber">
                                    <asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox>
                                </div>
                                <div class="incrementButton">
                                    <asp:Button ID="Button2" runat="server" Text="+" />
                                </div>
                            </div>
                            <div class="totalPrice">
                                RM
                                <asp:Label ID="lblTotalPrice2" runat="server" Text=""></asp:Label>
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
                                <asp:Label ID="lblFinalAmount" runat="server"></asp:Label>
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
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlCustomization" TargetControlID="btnAddToCart" CancelControlID="btnClose"></ajaxToolkit:ModalPopupExtender>
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
