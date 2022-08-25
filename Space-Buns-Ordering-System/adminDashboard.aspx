<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_adminDashboard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <div class="main__container">

            <!-- MAIN CARDS STARTS HERE -->
            <div class="main__cards">
                <div class="card">
                    <i
                        class="fa fa-poll fa-2x text-lightblue"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Total Sales</p>
                        <span class="font-bold text-title">378</span>
                    </div>
                </div>

                <div class="card">
                    <i class="fa fa-clipboard fa-2x text-red" aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Total Orders</p>
                        <span class="font-bold text-title">523</span>
                    </div>
                </div>

                <div class="card">
                    <i
                        class="fa fa-table fa-2x text-yellow"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Events</p>
                        <span class="font-bold text-title">34</span>
                    </div>
                </div>

                <div class="card">
                    <i
                        class="fa fa-hamburger fa-2x text-black"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Products</p>
                        <span class="font-bold text-title">25</span>
                    </div>
                </div>
            </div>
            <!-- MAIN CARDS ENDS HERE -->

            <!-- CHARTS STARTS HERE -->
            <div class="charts">
                <div class="charts__left">
                    <div class="charts__left__title">
                        <div>
                            <h1>Daily Reports</h1>
                            <p>Space Buns - Subang Jaya</p>

                            <ajaxToolkit:PieChart ID="PieChart1" runat="server" ForeColor="White" ChartHeight="400" ChartWidth = "350">
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
                            <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="300" ChartWidth = "500" ChartType="Column">
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

                    <div class="charts__right__cards">
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
                    </div>
                </div>
            </div>
            <!-- CHARTS ENDS HERE -->

        </div>
    </main>


</asp:Content>
