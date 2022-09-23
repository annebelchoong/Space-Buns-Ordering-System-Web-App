<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_cart.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_cart.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="cartcontainer">
        <div class="cartNavBar">
            <div>
                <h2>Your cart</h2>
                You've added
                <asp:Label ID="lblNumOfItems" runat="server" Text=""></asp:Label>
                items
            </div>
            <div class="close-btn-cart">
                <asp:Button ID="btnCloseCart" runat="server" Text="&times;" UseSubmitBehavior="False" CssClass="btnCloseCart" />
            </div>
        </div>
        <div class="addressAndTime">
        </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="cartProduct">
                    <div class="products">
                        <div class="product">
                            <div class="details">
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" CssClass="imgCart" />
                                <div class="productColumn">
                                    <div class="productTop">
                                        <div class="productName">
                                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' />
                                        </div>
                                        <div class="deleteProduct">
                                            <asp:ImageButton ID="imgbtnTrash" runat="server" ImageUrl="~/Media/Icons/trash.svg" Height="20px" />
                                        </div>
                                    </div>
                                    <div class="productBottom">
                                        <div class="productQuantity">
                                            <div class="decrementButton">
                                                <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="btnQuantity" OnClick="btnDecrement_onClick" />
                                            </div>
                                            <div class="quantityNumber">
                                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("quantity") %>' CssClass="txtQuantity" />
                                            </div>
                                            <div class="incrementButton">
                                                <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" onClick="btnIncrement_onClick"/>
                                            </div>
                                        </div>
                                        <div class="totalPrice">
                                            RM
                                            <asp:Label ID="unitPriceLabel" runat="server" Text='<%# Eval("unitPrice") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>

        </asp:Repeater>
        <div class="finalAmount">
            <div>
                Total
            </div>
            <div>
                RM
                                <asp:Label ID="lblFinalAmount" runat="server" Text="34.00" ForeColor="#B97836"></asp:Label>
            </div>
        </div>
        <div class="Checkout">
            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btnCheckout" />
        </div>

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, OrderDetails.unitPrice, OrderDetails.quantity, Product.picture FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID INNER JOIN Product ON OrderDetails.productID = Product.productID WHERE (Product.name = @name)">
        <SelectParameters>
            <asp:QueryStringParameter Name="name" QueryStringField="name" />
        </SelectParameters>
    </asp:SqlDataSource>

    
    <%--stripe integration--%>
    <script src="https://js.stripe.com/v3/"></script>
    <script>
        var stripe = Stripe('pk_test_51LWbMdCffsYKlOgZJQu5OlKPoEe978IKUuzKJjwcW0ZDwb46LaVT09D3svdGTvaWoavzzCTqo9fM7DztaOL8dSGu00MhmVJabg');

<%--        var form = document.getElementById("checkout_form");
        form.addEventListener('submit', function (e) {
            e.preventDefault();

            stripe.redirectToCheckout({
                sessionId: "<%= sessionId %>"
            });
        });--%>


        var clickToCheckout = document.getElementById("btnCheckout")
        clickToCheckout.addEventListener('click', function (e) {
            e.preventDefault();

            stripe.redirectToCheckout({
                sessionId: "<%= sessionId %>"
            });
        });
    </script>
</asp:Content>