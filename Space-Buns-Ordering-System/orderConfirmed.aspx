<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderConfirmed.aspx.cs" Inherits="Space_Buns_Ordering_System.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_orderConfirmation.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <%--            <strong>Checkout Page</strong>
            <br />
            <div class="content-area">
                <div class="left">
                    button 1
                    button 2
                </div>

                <div class="right">
                    a picture
                </div>
            </div>--%>

            <h1 class="thankyou-text">Thank You for Ordering!</h1>
            <h2 class="orderID">Order ID:
                <p>043CFBM136</p>
            </h2>

            <section>
                <div class="container">

                    <div class="box order-info-container">
                        <div class="order-info-box">
                            <div id="order-location" class="order-info">
                                <h3>Store Location:</h3>
                                <p>Subang Jaya - Space Buns</p>
                            </div>
                            <div id="order-type" class="order-info">
                                <h3>Order Type:</h3>
                                <p>Self Pickup</p>
                            </div>
                            <div id="order-time" class="order-info">
                                <h3>Time:</h3>
                                <p>28 April 2021, 4:30pm</p>
                            </div>
                        </div>
                    </div>

                    <div class="box order-summary">
                        <h3>Order Summary</h3>

                        <div class="table-container">
                            <table>
                                <tr>
                                    <th colspan="2">Item</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>

                                <tr>
                                    <td>
                                        <img src="Media/menuBurgers/chicken1.jpg" alt="Chicken 1"/></td>
                                    <td>
                                        <h6>Double Trouble</h6>
                                    </td>
                                    <td>2</td>
                                    <td>RM 17.00</td>
                                </tr>

                                <tr>
                                    <td>
                                        <img src="Media/menuBurgers/fish1.jpg" alt="Fish 1"/></td>
                                    <td>
                                        <h6>Salmon Fillet</h6>
                                    </td>
                                    <td>1</td>
                                    <td>RM 16.00</td>
                                </tr>

                                <tr>
                                    <td>
                                        <img src="Media/menuBurgers/beef1.jpg" alt="Beef 1"/></td>
                                    <td>
                                        <h6>You Got Beef</h6>
                                    </td>
                                    <td>3</td>
                                    <td>RM 15.00</td>
                                </tr>

                                <tr>
                                    <td>
                                        <img src="Media/menuBurgers/meatless1.jpg" alt="Meatless 1"/></td>
                                    <td>
                                        <h6>Mushy Shrooms</h6>
                                    </td>
                                    <td>1</td>
                                    <td>RM 11.00</td>
                                </tr>

                            </table>
                        </div>

                        <div class="total-container">
                            <div class=" total-left">
                                <span class="total">No. of Items:</span>
                                <span class="total-total">Total: </span>
                            </div>
                            <div class="total-right">
                                <span class="data-num">7</span>
                                <span class="data-total">RM 106.00</span>
                            </div>
                        </div>

                    </div>

                    <div class="home-button">
                        <asp:HyperLink ID="btnHome" runat="server" NavigateUrl="~/sb_index.aspx">Back to Home</asp:HyperLink>
                    </div>

                    <div class="home-button">
                        <asp:HyperLink ID="btnViewOrder" runat="server" NavigateUrl="~/sb_orderHistory.aspx">View Order</asp:HyperLink>
                        <%-- <a href="sb_index.html">
                    <h4>Back to Home</h4>
                </a>--%>
                    </div>

                </div>
            </section>

        </div>
    </form>

</body>
</html>
