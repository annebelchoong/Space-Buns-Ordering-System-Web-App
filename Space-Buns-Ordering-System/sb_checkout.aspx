<%@ Page Title="Checkout | Space Buns" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_checkout.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_cart.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="cartcontainer">
        <div class="cartNavBar">
            <div>
                <h2>Checkout</h2>
                <%-- You've added
                <asp:Label ID="lblNumOfItems" runat="server" Text=""></asp:Label>
                items--%>
            </div>
            <%-- <div class="close-btn-cart">
                <asp:Button ID="btnCloseCart" runat="server" Text="&times;" UseSubmitBehavior="False" CssClass="btnCloseCart" /> 
            </div>
        </div>
        <div class="addressAndTime">
        </div>--%>
            <asp:LoginName ID="currentUsername" runat="server" Visible="True" />
            <asp:Label ID="lblCustId" runat="server" Visible="False"></asp:Label>
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
                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>' />
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
                                                    <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" OnClick="btnIncrement_onClick" />
                                                </div>
                                            </div>
                                            <div class="totalPrice">
                                                <asp:Label ID="unitPriceLabel" runat="server" Text='<%# Eval("price", "{0:C}") %>' />
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
            <div class="Complete">
                <asp:Button ID="btnComplete" runat="server" Text="Complete" CssClass="btnCheckout" OnClick="btnComplete_Click" />
            </div>

        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT quantity, price, picture, productName, isSetMeal, addOnPatties, choiceOfSides, choiceOfBeverage, addOnSauce FROM Cart WHERE (customerID = @customerID)" DeleteCommand="DELETE FROM Cart WHERE (productName = @productName) AND (customerID = @customerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblCustId" PropertyName="Text" Name="customerID"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
