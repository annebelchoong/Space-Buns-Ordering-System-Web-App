<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfile/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_orderHistory.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_orderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="margin-top: 80px;">

        <div class="row my-5">
            <h3 class="fs-4 mb-3" style="color: white;"><strong>My Order</strong> </h3>
            <p class="fs-4 mb-3" style="color: white; text-align: center;">
                <div class="gridview-order">
                    <%--<asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" DataSourceID="SqlDataSource1" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="gvOrder_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="orderID" HeaderText="orderID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
                            <asp:BoundField DataField="dateTime" HeaderText="dateTime" SortExpression="dateTime" />
                            <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" />
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                            <asp:BoundField DataField="paymentAmount" HeaderText="paymentAmount" SortExpression="paymentAmount" />
                            <asp:BoundField DataField="orderType" HeaderText="orderType" SortExpression="orderType" />
                            <asp:CommandField SelectImageUrl="~/Media/Icons/info.png" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>--%>
                    <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="orderID" DataSourceID="SqlDataSource1" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDataBound="gvOrder_RowBoundData" SelectedIndexChanged="gvOrder_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="orderID" HeaderText="orderID" ReadOnly="True" SortExpression="orderID" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px" />
                            <asp:BoundField DataField="dateTime" HeaderText="dateTime" SortExpression="dateTime" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px" />
                            <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px" />
                            <asp:BoundField DataField="orderType" HeaderText="orderType" SortExpression="orderType" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px"></asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px" />
                            <asp:CommandField ShowSelectButton="True" HeaderStyle-BackColor="#F0721F" HeaderStyle-ForeColor="Black" HeaderStyle-BorderColor="Black" HeaderStyle-BorderWidth="1px"></asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="Black" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].orderID, [Order].dateTime, [Order].orderStatus, [Order].orderType, OrderDetails.price FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID"></asp:SqlDataSource>
                <br />
                <br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" CssClass="text-white" Width="100%" Justify-content="center" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <ItemTemplate>
                        Order ID:
                    <asp:Label ID="orderIDLabel" runat="server" Text='<%# Eval("orderID") %>' />
                        <br />
                        Product ID:
                    <asp:Label ID="productIDLabel" runat="server" Text='<%# Eval("productID") %>' />
                        <br />
                        Price:
                    <asp:Label ID="unitPriceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        Quantity:
                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                        <br />
                        Name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("productName") %>' />
                        <br />
                        Description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].orderID, OrderDetails.productID, OrderDetails.quantity, OrderDetails.productName, OrderDetails.price, OrderDetails.picture, OrderDetails.description FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID WHERE ([Order].orderID = @orderId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvOrder" Name="orderId" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <%--<%--<%--<p class="fs-4 mb-3" style="color: white; text-align: center;">
                &nbsp;</p>
            <p class="fs-4 mb-3" style="color: white; text-align: center;">
                &nbsp;</p>
            <div class="col">
                <table class="table bg-white rounded shadow-sm  table-hover">
                    <thead>
                        <tr>
                            <th scope="col" width="50">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col" class="auto-style1">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th><em>Search:</em></th>
                            <th>
                                <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="OrderID"></asp:TextBox>
                            </th>
                        </tr>
                        <tr>
                            <th scope="col" width="50">#</th>
                            <th scope="col">OrderID</th>
                            <th scope="col" class="auto-style1">DateTime</th>
                            <th scope="col">Items</th>
                            <th scope="col">Total</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>O0001</td>
                            <td class="auto-style1">25/08/2022 11:37:49</td>
                            <td>Double Trouble, Salmon Fillet, King of Cheese, Mushy Shrooms</td>
                            <td>RM120.00</td>
                            <td class="btnControl">
                                <%--<asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />--%>
            <%--<asp:HyperLink ID="viewOrderDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px" NavigateUrl="sb_orderDetail.aspx"></asp:HyperLink>
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink1" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" class="auto-style2">2</th>
                            <td class="auto-style2">O0002</td>
                            <td class="auto-style3">24/08/2022 11:37:49</td>
                            <td class="auto-style2">Double Trouble, Salmon Fillet, King of Cheese, Mushy Shrooms</td>
                            <td class="auto-style2">RM75.00</td>
                            <td class="auto-style2">
                                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="auto-style2">
                                <asp:HyperLink ID="HyperLink2" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>O0003</td>
                            <td class="auto-style1">23/08/2022 11:37:49</td>
                            <td>Double Trouble, Salmon Fillet, King of Cheese, Mushy Shrooms</td>
                            <td>RM60.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink3" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>O0004</td>
                            <td class="auto-style1">23/08/2022 11:37:49</td>
                            <td>Double Trouble, Salmon Fillet, King of Cheese, Mushy Shrooms</td>
                            <td>RM30.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink4" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>O0005</td>
                            <td class="auto-style1">21/08/2022 11:37:49</td>
                            <td>Double Trouble, Salmon Fillet, King of Cheese, Mushy Shrooms</td>
                            <td>RM12.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="btnCusDetail4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink5" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>--%>


            <%--                            <tr>
                                    <th scope="row">6</th>
                                    <td>Gold</td>
                                    <td>Bumbo</td>
                                    <td>$1800</td>
                                </tr>
                                <tr>
                                    <th scope="row">7</th>
                                    <td>Pen</td>
                                    <td>Bilbo</td>
                                    <td>$75</td>
                                </tr>
                                <tr>
                                    <th scope="row">8</th>
                                    <td>Notebook</td>
                                    <td>Frodo</td>
                                    <td>$36</td>
                                </tr>
                                <tr>
                                    <th scope="row">9</th>
                                    <td>Dress</td>
                                    <td>Kimo</td>
                                    <td>$255</td>
                                </tr>
                                <tr>
                                    <th scope="row">10</th>
                                    <td>Paint</td>
                                    <td>Zico</td>
                                    <td>$434</td>
                                </tr>
                                <tr>
                                    <th scope="row">11</th>
                                    <td>Carpet</td>
                                    <td>Jeco</td>
                                    <td>$1236</td>
                                </tr>
                                <tr>
                                    <th scope="row">12</th>
                                    <td>Food</td>
                                    <td>Haso</td>
                                    <td>$422</td>
                                </tr>--%>
                    </tbody>
                </table>
        </div>
    </div>
    </div>

</asp:Content>
