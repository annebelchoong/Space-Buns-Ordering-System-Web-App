<%@ Page Title="Order Confirmed | SpaceBuns" Language="C#" MasterPageFile="~/sb_general.Master" AutoEventWireup="true" CodeBehind="sb_orderConfirmed.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_orderConfirm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_orderConfirmation.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="thankyou-text">Thank You for Ordering!</h1>
        <%--                <strong>
                    <asp:Label ID="lblThankyou" runat="server" Text="Thank You for Ordering!" CssClass="thankyou-text"></asp:Label>
                </strong>--%>
        <asp:Label ID="lblOrderReadyTime" runat="server" Text="Order will be ready in 25mins" CssClass="orderReady-text"></asp:Label>
        <h2 class="orderID">Order ID:
                <%--<p>O1001</p>--%>
            <asp:Label ID="lblOrderID" runat="server" CssClass="orderid-text"></asp:Label>
        </h2>
        <section>
            <div class="container">
                <%--<div class="box order-info-container">
                    <div class="order-info-box">
                        <div id="order-location" class="order-info">
                            <h3>Store Location:</h3>--%>
                <%--<p>Subang Jaya - Space Buns</p>--%>
                <%-- <asp:Label ID="lblBranchName" runat="server" Text="Subang Jaya - Space Buns" CssClass="order-info-text"></asp:Label>
                        </div>
                        <div id="order-type" class="order-info">
                            <h3>Order Type:</h3>--%>
                <%--<p>Self Pickup</p>--%>
                <%-- <asp:Label ID="lblOrderType" runat="server" Text="Self Pickup" CssClass="order-info-text"></asp:Label>
                        </div>
                        <div id="order-datetime" class="order-info">
                            <h3>Date and Time:</h3>--%>
                <%--<p>28 April 2021, 4:30pm</p>--%>
                <%-- <asp:Label ID="lblDateTime" runat="server" Text="28 August 2022, 4:30pm" CssClass="order-info-text"></asp:Label>
                        </div>
                    </div>
                </div>--%>
                <asp:LoginName ID="currentUsername" runat="server" Visible="False" />
                <asp:Label ID="lblCustId" runat="server" Visible="False"></asp:Label>

                <div class="box order-summary">
                    <h3>Order Summary</h3>
                    <%-- Add repeater --%>
                    <div class="table-container">

                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                                <table>
                                    <tr>
                                        <th></th>
                                        <th>Item</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" CssClass="imgCart" />

                                    <td>
                                        <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>

                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                            <%--<ItemTemplate>
                                                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" CssClass="imgCart" />
                                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                                                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>

                        </ItemTemplate>--%>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderID, productID, customerID, productName, price, quantity, picture, description, discount FROM OrderDetails WHERE (orderID = @orderID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblOrderID" Name="orderID" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                        <%--<div class="table-container">
                        <table>
                            <tr>
                                <th colspan="2">Item</th>
                                <th>Quantity</th>
                                <th>Total</th>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/chicken1.jpg" alt="Chicken 1" /></td>
                                <td>
                                    <h6>Double Trouble</h6>
                                </td>
                                <td>2</td>
                                <td>RM 17.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/fish1.jpg" alt="Fish 1" /></td>
                                <td>
                                    <h6>Salmon Fillet</h6>
                                </td>
                                <td>1</td>
                                <td>RM 16.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/beef1.jpg" alt="Beef 1" /></td>
                                <td>
                                    <h6>You Got Beef</h6>
                                </td>
                                <td>3</td>
                                <td>RM 15.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="Media/menuBurgers/meatless1.jpg" alt="Meatless 1" /></td>
                                <td>
                                    <h6>Mushy Shrooms</h6>
                                </td>
                                <td>1</td>
                                <td>RM 11.00</td>
                            </tr>
                        </table>
                    </div>--%>
                        <div class="total-container">
                            <div class=" total-left">
                                <asp:Label ID="lblNoOfItems" runat="server" Text="No. of Items:" CssClass="total"></asp:Label>
                                <asp:Label ID="lblTotal" runat="server" Text="Total:" CssClass="total-total"></asp:Label>
                                <%--<span class="total">No. of Items:</span>
                                <span class="total-total">Total: </span>--%>
                            </div>
                            <div class="total-right">
                                <%--<span class="data-num">7</span>--%>
                                <%--<span class="data-total">RM 106.00</span>--%>
                                <asp:Label ID="lblDataNum" runat="server" CssClass="total"></asp:Label>
                                <asp:Label ID="lblDataTotal" runat="server" CssClass="total-total"></asp:Label>
                            </div>
                        </div>
                    </div>
                <div class="buttonsContainer">
                    <asp:HyperLink ID="btnViewOrder" runat="server" NavigateUrl="/UserProfile/sb_orderHistory.aspx" CssClass="buttons">View Order</asp:HyperLink>
                </div>
                <div class="buttonsContainer">
                    <asp:HyperLink ID="btnHome" runat="server" NavigateUrl="~/sb_index.aspx" CssClass="buttons">Back to Home</asp:HyperLink>
                </div>

            </div>
        </section>
    </div>

    <div id="ads" style="display: flex; justify-content: center; margin-bottom: 30px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="TopBannerTimer" Interval="1000" runat="server" />
        <asp:UpdatePanel ID="BannerUpdatePanel" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TopBannerTimer" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:AdRotator runat="server" ID="AdRotator1" AdvertisementFile="App_Data/advertisements.xml" Width="850px" Height="500px" ToolTip="Click for more info" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
