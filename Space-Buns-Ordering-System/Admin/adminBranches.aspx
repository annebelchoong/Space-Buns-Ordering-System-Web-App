<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminBranches.aspx.cs" Inherits="Space_Buns_Ordering_System.adminBranches" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btnControl {
            width: 60px;
            text-align: center;
        }

        /*        .buttonGold:hover {
            background-color: #B97836;
            color: white;
        }*/

        .container-fluid {
            margin: 50px;
        }

        .charts {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            margin-top: 50px;
        }

        .charts__left {
            padding: 25px;
            border-radius: 5px;
            background: #ffffff;
            box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
        }

        .charts__right {
            margin-right: 80px;
            padding: 25px;
            border-radius: 5px;
            background: #ffffff;
            box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">


        <h1>Create new branch</h1>
        <div class="col-auto">
            <div class="form-outline">
                <asp:Label class="form-label" for="branchLocationInput" runat="server" Text="Branch Location Name"></asp:Label>
                <asp:TextBox Width="30%" type="text" ID="branchLocationInput" class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-auto">
            <div class="form-outline">
                <%--<label class="form-label" for="branchAddressInput">Branch Address</label>--%>
                <%--<input type="text" id="branchAddressInput" class="form-control" />--%>
                <asp:Label class="form-label" for="branchAddressInput" runat="server" Text="Branch Address"></asp:Label>
                <asp:TextBox Width="80%" type="text" ID="branchAddressInput" class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-auto">
            <div class="">
                <%--<input style="/*background-color: #B97836; border: none; */" class="form-check-input" type="checkbox" id="branchSetActive" checked />--%>
                <%--<input class="form-check-input" type="checkbox" id="branchSetActive" checked />--%>
                <asp:CheckBox class="" type="checkbox" ID="branchSetActive" runat="server" />
                Set Branch Active
            </div>
        </div>
        <div class="col-auto">
            <%--<button style="background-color: #B97836; border: none;" type="submit" class="btn btn-primary">Create Branch</button>--%>
            <asp:Button ID="Button2" class="btn btn-primary" Style="background-color: #B97836; border: none;" runat="server" Text="Create Branch" OnClick="Button2_Click" />
            <br />
            <asp:Label ForeColor="red" ID="lblError" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblDisplayMsg" runat="server"></asp:Label>


        </div>

        <%--        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table border="0" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th scope="col">BranchID</th>
                            <th scope="col">Location</th>
                            <th scope="col">Status</th>
                            <th scope="col">Total Sales</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("branchId") %></td>
                    <td><%# Eval("branchLocation") %></td>
                    <td><%# Eval("branchAddress") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>--%>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [branchId], [branchLocation], [branchAddress], [activeStatus] FROM [Branch]" DeleteCommand="DELETE FROM [Branch] WHERE [branchId] = @branchId" InsertCommand="INSERT INTO [Branch] ([branchLocation], [branchAddress], [activeStatus]) VALUES (@branchLocation, @branchAddress, @activeStatus)" UpdateCommand="UPDATE [Branch] SET [branchLocation] = @branchLocation, [branchAddress] = @branchAddress, [activeStatus] = @activeStatus WHERE [branchId] = @branchId">
            <DeleteParameters>
                <asp:Parameter Name="branchId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="branchLocation" Type="String" />
                <asp:Parameter Name="branchAddress" Type="String" />
                <asp:Parameter Name="activeStatus" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="branchLocation" Type="String" />
                <asp:Parameter Name="branchAddress" Type="String" />
                <asp:Parameter Name="activeStatus" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="branchId" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <br />
        <br />


        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" DeleteImageUrl="~/Media/Icons/delete.png" EditImageUrl="~/Media/Icons/edit.png" EditText="" SelectImageUrl="~/Media/Icons/info.png" SelectText="" ShowSelectButton="True" CancelImageUrl="~/Media/Icons/cancel.png" UpdateImageUrl="~/Media/Icons/tick.png">
                    <ControlStyle CssClass="height:30px; width 30px;" Height="30px" Width="30px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#B97836" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />

        <!-- CHARTS STARTS HERE -->

        <div class="charts">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="375px" Width="501px" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="orderID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" InsertVisible="False" ReadOnly="True" SortExpression="orderID" />
                    <asp:BoundField DataField="customerID" HeaderText="customerID" SortExpression="customerID" />
                    <asp:BoundField DataField="dateTime" HeaderText="dateTime" SortExpression="dateTime" />
                    <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" />
                    <asp:BoundField DataField="orderType" HeaderText="orderType" SortExpression="orderType" />
                    <asp:BoundField DataField="note" HeaderText="note" SortExpression="note" />
                    <asp:BoundField DataField="branchID" HeaderText="branchID" SortExpression="branchID" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>

            <div class="charts__right">
                <div class="charts__right__title">
                    <div>
                        <h1>Daily Revenue</h1>
                        <p>
                            <asp:Label ID="lblBranchStatsName" runat="server" Text=""></asp:Label>
                            Space Buns - Subang Jaya
                        </p>
                        <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="10" Name="Mon" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="15" Name="Tue" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Wed" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="15" Name="Thu" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fri" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="25" Name="Sat" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="25" Name="Sun" />
                            </Series>
                        </ajaxToolkit:BarChart>

                    </div>
                    <%--<i class="fa fa-usd" aria-hidden="true"></i>--%>
                </div>
            </div>
        </div>
        <!-- CHARTS ENDS HERE -->


        <div class="row my-5">
            <h3 class="fs-4 mb-3">Store Branches</h3>
            <div class="col">
                <table class="table bg-white rounded shadow-sm  table-hover">
                    <thead>
                        <%--                      <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th><em>Search:</em></th>
                            <th colspan="2">
                                <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="OrderID"></asp:TextBox>
                            </th>
                        </tr>--%>
                        <tr>
                            <%--<th scope="col" width="50">#</th>--%>
                            <th scope="col">BranchID</th>
                            <th scope="col">Location</th>
                            <th scope="col">Status</th>
                            <th scope="col">Total Sales</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <%--<th scope="row">1</th>--%>
                            <td>B0001</td>
                            <td>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://www.google.com/maps/place/Subang+Jaya,+Selangor/@3.0303242,101.5677079,14z/data=!3m1!4b1!4m5!3m4!1s0x31cc4cd011ec8e15:0x4bf9f3f70226e7d3!8m2!3d3.0567333!4d101.5851192">Subang Jaya</asp:HyperLink></td>
                            <td>Active</td>
                            <td>RM1200.00</td>
                            <td class="btnControl">
                                <%--<asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />--%>
                                <asp:HyperLink ID="viewOrderDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px" NavigateUrl="adminOrderDetail.aspx"></asp:HyperLink>
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink1" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                            <td><%# Eval("branchId") %></td>
                            <td><%# Eval("branchLocation") %></td>
                            <td><%# Eval("branchAddress") %></td>
                        </tr>
                    </tbody>
                </table>



                <%--               <table class="table align-middle mb-0 bg-white">
                    <thead class="bg-light">
                        <tr>
                            <th>Name</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th>Position</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                                        alt=""
                                        style="width: 45px; height: 45px"
                                        class="rounded-circle" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">John Doe</p>
                                        <p class="text-muted mb-0">john.doe@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Software engineer</p>
                                <p class="text-muted mb-0">IT department</p>
                            </td>
                            <td>
                                <span class="badge badge-success rounded-pill d-inline">Active</span>
                            </td>
                            <td>Senior</td>
                            <td>
                                <button type="button" class="btn btn-link btn-sm btn-rounded">
                                    Edit
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/6.jpg"
                                        class="rounded-circle"
                                        alt=""
                                        style="width: 45px; height: 45px" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">Alex Ray</p>
                                        <p class="text-muted mb-0">alex.ray@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Consultant</p>
                                <p class="text-muted mb-0">Finance</p>
                            </td>
                            <td>
                                <span class="badge badge-primary rounded-pill d-inline">Onboarding</span>
                            </td>
                            <td>Junior</td>
                            <td>
                                <button
                                    type="button"
                                    class="btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                    Edit
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/7.jpg"
                                        class="rounded-circle"
                                        alt=""
                                        style="width: 45px; height: 45px" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">Kate Hunington</p>
                                        <p class="text-muted mb-0">kate.hunington@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Designer</p>
                                <p class="text-muted mb-0">UI/UX</p>
                            </td>
                            <td>
                                <span class="badge badge-warning rounded-pill d-inline">Awaiting</span>
                            </td>
                            <td>Senior</td>
                            <td>
                                <button
                                    type="button"
                                    class="btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                    Edit
                                </button>
                                <button
                                    type="button"
                                    class="fas fa-times btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>--%>
            </div>
        </div>
    </div>

</asp:Content>

