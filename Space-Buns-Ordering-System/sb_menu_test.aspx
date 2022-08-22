<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_menu_test.aspx.cs" Inherits="Space_Buns_Ordering_System.Menu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" />
        </div>
            <asp:Panel ID="pnlCustomization" runat="server">
                <div class ="productBanner">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Media/menuBurgers/chicken1.jpg" Width="100px" />
                    <h1> Chicken Burger</h1>
                </div>
                <div class="productDesc">
                    <p><b>Crispy chicken fillet </b>is bla bla bla askldjf; klasjd lkj asdf asdf asdf asdf asdf asdf asdf asdf asdfa sdf asdf asdf as dfas df asdf asdf as df as</p>
                </div>
                <div class="setSelection">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Set Meal</asp:ListItem>
                        <asp:ListItem>A Lar Carte</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            <div>
                <ajaxToolkit:Accordion ID="Accordion1" runat="server" FadeTransitions="True" TransitionDuration="350" RequireOpenedPane="False" Height="528px">
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
                        <ajaxToolkit:AccordionPane ID="Pane4" runat="server">
                            <Header>
                                Add-on Sauce
                            </Header>
                            <Content>
                                <asp:RadioButtonList ID="RadioButtonList5" runat="server">
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
            <asp:Button ID="btnAddToCartConfirm" runat="server" Text="Add To Cart" />
            </asp:Panel>
        <div>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlCustomization" TargetControlID="btnAddToCart" CancelControlID="btnAddToCartConfirm"></ajaxToolkit:ModalPopupExtender>
            <%--<ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="btnAddToCartConfirm" ExpandControlID="btnAddToCart" TargetControlID="pnlCustomization" />--%>
        </div>
    </form>
</body>
</html>
