<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminSales.aspx.cs" Inherits="Space_Buns_Ordering_System.adminSales" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--    <ajaxToolkit:PieChart ID="PieChart1" runat="server" ForeColor="White">
        <PieChartValues>
            <ajaxToolkit:PieChartValue Category="Food" Data="59" PieChartValueColor="" PieChartValueStrokeColor="" />
            <ajaxToolkit:PieChartValue Category="Entertainment" Data="23" PieChartValueColor="" PieChartValueStrokeColor="" />
            <ajaxToolkit:PieChartValue Category="Transportation" Data="18" PieChartValueColor="" PieChartValueStrokeColor="" />
            <ajaxToolkit:PieChartValue Category="Misc" Data="23" PieChartValueColor="grey" PieChartValueStrokeColor="" />
        </PieChartValues>
    </ajaxToolkit:PieChart>

    <ajaxToolkit:BarChart ID="BarChart1" runat="server">
        <Series>
            <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
            <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
            <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
            <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
            <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
        </Series>
    </ajaxToolkit:BarChart>--%>

    <!-- CHARTS STARTS HERE -->
    <div class="container">

        <div class="charts">
            <div class="charts__left">
                <div class="charts__left__title">
                    <div>
                        <h1>Daily Reports</h1>
                        <p>Space Buns - Subang Jaya</p>

                        <ajaxToolkit:PieChart ID="PieChart1" runat="server" ForeColor="White" ChartHeight="400" ChartWidth="350">
                            <PieChartValues>
                                <ajaxToolkit:PieChartValue Category="Mains" Data="59" PieChartValueColor="" PieChartValueStrokeColor="" />
                                <ajaxToolkit:PieChartValue Category="Promotions" Data="23" PieChartValueColor="" PieChartValueStrokeColor="" />
                                <ajaxToolkit:PieChartValue Category="Drinks" Data="18" PieChartValueColor="" PieChartValueStrokeColor="" />
                                <ajaxToolkit:PieChartValue Category="Sides" Data="23" PieChartValueColor="grey" PieChartValueStrokeColor="" />
                            </PieChartValues>
                        </ajaxToolkit:PieChart>

                        <%--                           <ajaxToolkit:LineChart ID="LineChart1" runat="server">
                                <Series>
                                    <ajaxToolkit:LineChartSeries LineColor="" Name="Delivery" />
                                    <ajaxToolkit:LineChartSeries LineColor="" Name="Pickup" />
                                </Series>
                            </ajaxToolkit:LineChart>--%>
                    </div>
                    <%--<i class="fa fa-usd" aria-hidden="true"></i>--%>
                </div>
                <div id="apex1"></div>
            </div>

            <div class="charts__right">
                <div class="charts__right__title">
                    <div>
                        <h1>Stats Reports</h1>
                        <p>Space Buns - Subang Jaya</p>
                        <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>

                    </div>
                    <%--<i class="fa fa-usd" aria-hidden="true"></i>--%>
                </div>



                <%--           <div class="charts__right__cards">
                <div class="card1">
                    <h1>Profit</h1>
                    <p>RM 5,393</p>
                </div>

                <div class="card2">
                    <h1>Sales</h1>
                    <p>RM 9,492</p>
                </div>

                <div class="card3">
                    <h1>Users</h1>
                    <p>420</p>
                </div>

                <div class="card4">
                    <h1>Orders</h1>
                    <p>42069</p>
                </div>
            </div>--%>


            </div>
        </div>
    </div>
    <!-- CHARTS ENDS HERE -->


</asp:Content>
