<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_productDetails.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_productDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:LoginName ID="currentUsername" runat="server" Visible="True" />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="header">

                    <h2>Product Detail</h2>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:RadioButtonList ID="rblTest" runat="server"></asp:RadioButtonList>
                </div>
                <div class="menuProductDetails">
                    <div class="menuLeft">
                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="300px" Style="border-radius: 30px" />
                    </div>
                    <div class="menuRight">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                        <div class="setSelection">
                            <asp:RadioButtonList ID="rblSetSelection" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RblSetSelection_SelectedIndexChanged" AutoPostBack="True" CellSpacing="-1">
                                <asp:ListItem Class="rblItems">&nbsp;Set Meal</asp:ListItem>
                                <asp:ListItem Class="rblItems">&nbsp;A Lar Carte</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
            </ItemTemplate>
        </asp:DataList>
                        <div>
                            <ajaxToolkit:Accordion ID="Accordion1" runat="server" FadeTransitions="False" TransitionDuration="250" RequireOpenedPane="False" Height="528px" SelectedIndex="-1" CssClass="accordian" ContentCssClass="accordianContent" HeaderCssClass="accordianHeader" HeaderSelectedCssClass="accordianHeaderSelected">
                                <Panes>
                                    <ajaxToolkit:AccordionPane ID="Pane1" runat="server">
                                        <Header>
                                            Add-on Patties
                                        </Header>
                                        <Content>
                                            <asp:RadioButtonList ID="rblPatties" runat="server" RepeatLayout="Flow">
                                                <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;None</asp:ListItem>
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
                                            <asp:RadioButtonList ID="rblSides" runat="server" RepeatLayout="Flow">
                                                <%--<asp:ListItem Class="rblCustomize">&nbsp;&nbsp;None</asp:ListItem>--%>
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
                                            <asp:RadioButtonList ID="rblBeverage" runat="server" RepeatLayout="Flow">
                                                <%--<asp:ListItem Class="rblCustomize">&nbsp;&nbsp;None</asp:ListItem>--%>
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
                                            <asp:RadioButtonList ID="rblSauce" runat="server" RepeatLayout="Flow">
                                                <asp:ListItem Class="rblCustomize">&nbsp;&nbsp;None</asp:ListItem>
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
        <div>
            <asp:Label ID="lblPatties" runat="server" ></asp:Label>
            <asp:Label ID="lblSides" runat="server" ></asp:Label>
            <asp:Label ID="lblBeverage" runat="server" ></asp:Label>
            <asp:Label ID="lblSauce" runat="server" ></asp:Label>
        </div>
        <div class="productBottom">
            <div class="productQuantity">
                <div class="decrementButton">
                    <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="btnQuantity" OnClick="btnDecrement_onClick" />
                </div>
                <div class="quantityNumber">
                    <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Out of Range" ControlToValidate="txtQuantity" MinimumValue="1" MaximumValue="999"></asp:RangeValidator>--%>
                    <asp:TextBox ID="txtQuantity" runat="server" Text="1" CssClass="txtQuantity" />
                </div>
                <div class="incrementButton">
                    <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" OnClick="btnIncrement_onClick" />
                </div>
                <div class="buttons">
                    <div class="addToCart">
                        <%--<asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' />--%>
                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' PostBackUrl="~/sb_menu.aspx" OnClientClick="btnAddtoCart_onClick" />
                    </div>

                    <%-- <div class="back">
                                        <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' PostBackUrl="~/sb_menu.aspx" />
                                    </div>--%>
                </div>

            </div>

        </div>

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([name] = @name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
