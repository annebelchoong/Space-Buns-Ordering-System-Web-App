<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_adminDashboard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <ajaxToolkit:PieChart ID="PieChart1" runat="server" BackColor="#993333" BorderColor="#660033"
        BorderStyle="Solid" ForeColor="White">
        <PieChartValues>
            <ajaxToolkit:PieChartValue Category="Burger" Data="12" PieChartValueColor="blue" PieChartValueStrokeColor="yellow" />
            <ajaxToolkit:PieChartValue Category="Snacks" Data="40" PieChartValueColor="red" PieChartValueStrokeColor="whitw" />
            <ajaxToolkit:PieChartValue Category="Drinks" Data="90" PieChartValueColor="white" PieChartValueStrokeColor="blue" />
        </PieChartValues>
    </ajaxToolkit:PieChart>
    HELOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO--%>

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
                        </div>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                    </div>
                    <div id="apex1"></div>
                </div>

                <div class="charts__right">
                    <div class="charts__right__title">
                        <div>
                            <h1>Stats Reports</h1>
                            <p>Space Buns - Subang Jaya</p>
                        </div>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                    </div>

                    <div class="charts__right__cards">
                        <div class="card1">
                            <h1>Income</h1>
                            <p>$75,300</p>
                        </div>

                        <div class="card2">
                            <h1>Sales</h1>
                            <p>$124,200</p>
                        </div>

                        <div class="card3">
                            <h1>Users</h1>
                            <p>3900</p>
                        </div>

                        <div class="card4">
                            <h1>Orders</h1>
                            <p>1881</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CHARTS ENDS HERE -->

        </div>
    </main>


</asp:Content>
