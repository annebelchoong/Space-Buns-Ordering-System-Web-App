<%@ Page Title="Cart | Space Buns" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_cart.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_cart" %>

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
        <asp:Label ID="lblNoItem" runat="server"></asp:Label>
        <asp:LoginName ID="currentUsername" runat="server" Visible="True" />
        <asp:Label ID="lblCustId" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblUpdatedCustId" runat="server" Visible="False"></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater_ItemCommand">
            <ItemTemplate>
                <div class="cartProduct">
                    <div class="products">
                        <div class="product">
                            <div class="details">
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" CssClass="imgCart" />
                                <div class="productColumn">
                                    <div class="productTop">
                                        <div class="productName">
                                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>' />
                                        </div>
                                        <div class="deleteProduct">
                                            <asp:ImageButton ID="imgbtnTrash" runat="server" ImageUrl="~/Media/Icons/trash.svg" Height="20px" CommandName="btnDeleteItem" />
                                        </div>
                                    </div>
                                    <div class="productBottom">
                                        <div class="productQuantity">
                                            <div class="decrementButton">
                                                <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="btnQuantity" CommandName="btnDecrement" />
                                                <%--OnClick="btnDecrement_onClick"--%>
                                            </div>
                                            <div class="quantityNumber">
                                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("quantity") %>' CssClass="txtQuantity" />
                                            </div>
                                            <div class="incrementButton">
                                                <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" CommandName="btnIncrement" />
                                                <%--OnClick="btnIncrement_onClick"--%>
                                            </div>
                                        </div>
                                        <div class="totalPrice">
                                            <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("price", "{0:C}") %>' />
                                            <asp:Label ID="lblUnitPrice" runat="server" Visible="false"></asp:Label>
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
                <asp:Label ID="lblFinalAmount" runat="server" ForeColor="#B97836"></asp:Label>
            </div>
        </div>
        <div class="Checkout">
            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btnCheckout" PostBackUrl="~/sb_checkout.aspx" />
        </div>

    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT quantity, price, picture, productName, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce FROM Cart WHERE (customerID = @customerID)" DeleteCommand="DELETE FROM Cart WHERE (productName = @productName) AND (customerID = @customerID)">
        <DeleteParameters>
            <asp:Parameter Name="productName"></asp:Parameter>
            <asp:Parameter Name="customerID"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lblCustId" PropertyName="Text" Name="customerID"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
