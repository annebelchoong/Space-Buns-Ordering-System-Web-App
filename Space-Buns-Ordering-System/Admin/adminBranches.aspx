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
    </div>

</asp:Content>

