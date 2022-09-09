<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_adminDashboard" %>

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

            <h5 class="font-weight-bold mt-5">Basic example of Admin Section for Bootstrap 5 </h5>
            <p>
                Admin Design Blocks & Templates for Bootstrap 5 are included in the <a
                    href="https://mdbootstrap.com/docs/standard/pro/">MDB
          PRO UI Kit</a> - use code <code>admin</code> to get <strong>30% OFF</strong> and start using the most
        efficient Admin components for bootstrap.
            </p>
            <div class="border p-5 mb-5">
                <!-- Copy this code to have a working example -->
                <!--Section: Design Block-->
                <section>
                    <div class="row">
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <p class="text-uppercase small mb-2">
                                        <strong>USERS</strong>
                                    </p>
                                    <h5 class="mb-0">
                                        <strong>14 567</strong>
                                        <small class="text-success ms-2">
                                            <i class="fas fa-arrow-up fa-sm pe-1"></i>13,48%</small>
                                    </h5>

                                    <hr />

                                    <p class="text-uppercase text-muted small mb-2">
                                        Previous period
                                    </p>
                                    <h5 class="text-muted mb-0">11 467</h5>
                                </div>
                            </div>
                            <!-- Card -->
                        </div>

                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <p class="text-uppercase small mb-2">
                                        <strong>PAGE VIEWS</strong>
                                    </p>
                                    <h5 class="mb-0">
                                        <strong>51 354 </strong>
                                        <small class="text-success ms-2">
                                            <i class="fas fa-arrow-up fa-sm pe-1"></i>23,58%</small>
                                    </h5>

                                    <hr />

                                    <p class="text-uppercase text-muted small mb-2">
                                        Previous period
                                    </p>
                                    <h5 class="text-muted mb-0">38 454</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <p class="text-uppercase small mb-2">
                                        <strong>AVERAGE TIME</strong>
                                    </p>
                                    <h5 class="mb-0">
                                        <strong>00:04:20</strong>
                                        <small class="text-danger ms-2">
                                            <i class="fas fa-arrow-down fa-sm pe-1"></i>23,58%</small>
                                    </h5>

                                    <hr />

                                    <p class="text-uppercase text-muted small mb-2">
                                        Previous period
                                    </p>
                                    <h5 class="text-muted mb-0">00:05:20</h5>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <p class="text-uppercase small mb-2">
                                        <strong>BOUNCE RATE</strong>
                                    </p>
                                    <h5 class="mb-0">
                                        <strong>32.35%</strong>
                                        <small class="text-danger ms-2">
                                            <i class="fas fa-arrow-down fa-sm pe-1"></i>23,58%</small>
                                    </h5>

                                    <hr />

                                    <p class="text-uppercase text-muted small mb-2">
                                        Previous period
                                    </p>
                                    <h5 class="text-muted mb-0">24.35%</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--Section: Design Block-->

                <!--Section: Content-->
                <section>
                    <div class="row">
                        <div class="col-md-8 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <!-- Pills navs -->
                                    <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <a class="nav-link active" id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1" role="tab"
                                                aria-controls="ex1-pills-1" aria-selected="true">Users</a>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <a class="nav-link" id="ex1-tab-2" data-mdb-toggle="pill" href="#ex1-pills-2" role="tab"
                                                aria-controls="ex1-pills-2" aria-selected="false">Page views</a>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-3" role="tab"
                                                aria-controls="ex1-pills-3" aria-selected="false">Average time</a>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <a class="nav-link" id="ex1-tab-4" data-mdb-toggle="pill" href="#ex1-pills-4" role="tab"
                                                aria-controls="ex1-pills-4" aria-selected="false">Bounce rate</a>
                                        </li>
                                    </ul>
                                    <!-- Pills navs -->

                                    <!-- Pills content -->
                                    <div class="tab-content" id="ex1-content">
                                        <div class="tab-pane fade show active" id="ex1-pills-1" role="tabpanel" aria-labelledby="ex1-tab-1">
                                            <div id="chart-users"></div>
                                        </div>
                                        <div class="tab-pane fade" id="ex1-pills-2" role="tabpanel" aria-labelledby="ex1-tab-2">
                                            <div id="chart-page-views"></div>
                                        </div>
                                        <div class="tab-pane fade" id="ex1-pills-3" role="tabpanel" aria-labelledby="ex1-tab-3">
                                            <div id="chart-average-time"></div>
                                        </div>
                                        <div class="tab-pane fade" id="ex1-pills-4" role="tabpanel" aria-labelledby="ex1-tab-4">
                                            <div id="chart-bounce-rate"></div>
                                        </div>
                                    </div>
                                    <!-- Pills content -->
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 mb-4">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <p class="text-center"><strong>Current period</strong></p>
                                    <div id="pie-chart-current"></div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <p class="text-center"><strong>Previous period</strong></p>
                                    <div id="pie-chart-previous"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--Section: Content-->
                <!--/ Copy this code to have a working example -->

            </div>
    </main>


</asp:Content>
