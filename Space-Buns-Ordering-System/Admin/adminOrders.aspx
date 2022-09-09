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

        <div class="row my-5">
            <h3 class="fs-4 mb-3">Recent Orders</h3>
            <div class="col">
                <table class="table bg-white rounded shadow-sm  table-hover">
                    <thead>
                        <tr>
                            <th scope="col" width="50">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th><em>Search:</em></th>
                            <th colspan="2">
                                <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="OrderID"></asp:TextBox>
                            </th>
                        </tr>
                        <tr>
                            <th scope="col" width="50">#</th>
                            <th scope="col">OrderID</th>
                            <th scope="col">DateTime</th>
                            <th scope="col">CustomerID</th>
                            <th scope="col">Total</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>O0001</td>
                            <td>25/08/2022 11:37:49</td>
                            <td>C0001</td>
                            <td>RM120.00</td>
                            <td class="btnControl">
                                <%--<asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />--%>
                                <asp:HyperLink ID="viewOrderDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px" NavigateUrl="~/adminOrderDetail.aspx"></asp:HyperLink>
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
                        </tr>


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
