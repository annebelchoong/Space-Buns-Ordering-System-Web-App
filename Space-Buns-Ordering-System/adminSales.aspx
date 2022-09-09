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

                        <ajaxToolkit:BarChart ID="BarChart2" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart3" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart4" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart5" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart6" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart7" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart8" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart9" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart10" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart11" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart12" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart13" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart14" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart15" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart16" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart17" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart18" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart19" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart20" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart21" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart22" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart23" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart24" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart25" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart26" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart27" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart28" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart29" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart30" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart31" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart32" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart33" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart34" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart35" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart36" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart37" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart38" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart39" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart40" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart41" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart42" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart43" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart44" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart45" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart46" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart47" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart48" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart49" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart50" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart51" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart52" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart53" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart54" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart55" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart56" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart57" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart58" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart59" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart60" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart61" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart62" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart63" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart64" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart65" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart66" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart67" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart68" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart69" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart70" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart71" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart72" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart73" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart74" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart75" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart76" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart77" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart78" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart79" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart80" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart81" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart82" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart83" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart84" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart85" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart86" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart87" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart88" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart89" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart90" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart91" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart92" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart93" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart94" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart95" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart96" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart97" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart98" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart99" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart100" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart101" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart102" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart103" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart104" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart105" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart106" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart107" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart108" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart109" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart110" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart111" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart112" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart113" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart114" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart115" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart116" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart117" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart118" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart119" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart120" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart121" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart122" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart123" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart124" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart125" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart126" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart127" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart128" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart129" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart130" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart131" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart132" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart133" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart134" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart135" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart136" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart137" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart138" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart139" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart140" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart141" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart142" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart143" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart144" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
                            <Series>
                                <ajaxToolkit:BarChartSeries BarColor="" Data="50" Name="Chicken" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="20" Name="Fish" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="12" Name="Beef" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="6" Name="Lamb" />
                                <ajaxToolkit:BarChartSeries BarColor="" Data="35" Name="Meatless" />
                            </Series>
                        </ajaxToolkit:BarChart>
                        <ajaxToolkit:BarChart ID="BarChart145" runat="server" ChartHeight="300" ChartWidth="500" ChartType="Column">
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
