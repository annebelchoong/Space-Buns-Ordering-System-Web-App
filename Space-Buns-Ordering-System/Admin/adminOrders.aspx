<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminOrders.aspx.cs" Inherits="Space_Buns_Ordering_System.adminOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btnControl {
            width: 60px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        </br></br>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="10" Width="90%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="orderId">
            <Columns>
                <asp:BoundField DataField="orderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
                <asp:BoundField DataField="dateTime" HeaderText="DateTime" SortExpression="dateTime" />
                <asp:BoundField DataField="customerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                <asp:BoundField DataField="paymentAmount" HeaderText="PaymentAmount" SortExpression="paymentAmount" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="#1A1A1A" ForeColor="White" />
        </asp:GridView>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].orderID, [Order].dateTime, Customer.customerId, Payment.paymentAmount FROM [Order] INNER JOIN Customer ON [Order].customerID = Customer.customerId INNER JOIN Payment ON [Order].orderID = Payment.orderID"></asp:SqlDataSource>
        </br>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="200px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource2" DataKeyNames="orderID,productID" BorderColor="White">
            <Fields>
                <asp:BoundField DataField="orderID" HeaderText="orderID" ReadOnly="True" SortExpression="orderID" />
                <asp:BoundField DataField="productID" HeaderText="productID" ReadOnly="True" SortExpression="productID" />
                <asp:BoundField DataField="unitPrice" HeaderText="unitPrice" SortExpression="unitPrice" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
            </Fields>
            <HeaderTemplate>
                <asp:Label ID="lblOrderDetails" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="20px" ForeColor="#1A1A1A" Text="Order Details"></asp:Label>
            </HeaderTemplate>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([orderID] = @orderID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="orderID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
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
                                <%--<asp:HyperLink ID="viewOrderDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px" NavigateUrl="adminOrderDetail.aspx"></asp:HyperLink>
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink1" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>O0002</td>
                            <td>24/08/2022 11:37:49</td>
                            <td>C0002</td>
                            <td>RM75.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink2" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>O0003</td>
                            <td>23/08/2022 11:37:49</td>
                            <td>C0003</td>
                            <td>RM60.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink3" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>O0004</td>
                            <td>23/08/2022 11:37:49</td>
                            <td>C0004</td>
                            <td>RM30.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink4" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>O0005</td>
                            <td>21/08/2022 11:37:49</td>
                            <td>C0005</td>
                            <td>RM12.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="btnCusDetail4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="btnEditCus4" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
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