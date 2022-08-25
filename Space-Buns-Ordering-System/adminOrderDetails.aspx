<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminOrderDetails.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_orderHistory" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="adminOrderDetails.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_orderHistory" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_adminOrderDetails.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <%--<section class="vh-80" style="background-color: #eee;">--%>
        <section class="vh-50">
            <%--<div class="container py-5 h-100">--%>
            <div class="container py-5 h-30">
                <div class="row d-flex justify-content-center align-items-center h-50">
                    <div class="col">
                        <div class="card card-stepper" style="border-radius: 20px;">
                            <div class="card-body p-4">

                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex flex-column">
                                        <span class="lead fw-normal">Order has been delivered</span>
                                        <span class="text-muted small">by Charles Lee on 24 Aug 2022 at 12:10PM</span>
                                    </div>
                                    <div>
                                        <%--<button class="btn btn-outline-primary" type="button">Track order details</button>--%>
                                        <button class="btn btn-warning" type="button">Need Help?</button>
                                    </div>
                                </div>
                                <hr class="my-4">

                                <div class="d-flex flex-row justify-content-between align-items-center align-content-center">
                                    <span class="dot ms-4"></span>
                                    <hr class="flex-fill track-line">
                                    <span class="dot"></span>
                                    <%--                                <hr class="flex-fill track-line">
                                <span class="dot"></span>--%>
                                    <hr class="flex-fill track-line">
                                    <span class="dot"></span>
                                    <hr class="flex-fill track-line">
                                    <span
                                        class="d-flex justify-content-center align-items-center big-dot dot me-4">
                                        <i class="fa fa-check text-white"></i></span>
                                </div>

                                <div class="d-flex flex-row justify-content-between align-items-center">
                                    <div class="d-flex flex-column align-items-start"><span>11:30AM</span><span>Order placed</span></div>
                                    <div class="d-flex flex-column justify-content-center"><span>11:45AM</span><span>Preparing order</span></div>
                                    <div class="d-flex flex-column justify-content-center"><span>11:50AM</span><span>Out for delivery</span></div>
                                    <div class="d-flex flex-column align-items-end"><span>12:10PM</span><span>Delivered</span></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="card-body">
                <div class="d-flex justify-content-end align-items-center">
                    <button class="btn btn-secondary m-lg-3" type="button">Print Invoice</button>
                </div>
            </div>
        </div>


        <%--<section class="container vh-80" style="background-color: #eee;">--%>
        <section class="container vh-90">

            <div class="card" style="border-radius: 20px;">
                <div class="card-body">
                    <div class="container mb-5 mt-3">
                        <div class="row d-flex align-items-baseline">
                            <%--                            <div class="col-xl-9">
                                <p style="color: #7e8d9f; font-size: 20px;">Invoice ID: <strong>P0001</strong></p>
                            </div>--%>
                        </div>
                        <div class="container">
                            <div class="col-md-12">
                                <div class="text-center">
                                    <%--<i class="far fa-building fa-4x ms-0" style="color: #8f8061;"></i>--%>
                                    <img width="120" src="Media/Icons/SpaceBunsLogo.png" />
                                    <p class="pt-2">Space Buns - Setapak Branch</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-8">
                                    <ul class="list-unstyled">
                                        <li class="text-muted">To: <span style="color: #000000;"><strong>John Jena</strong></span></li>
                                        <li class="text-muted">&nbsp &nbsp 1, Jalan Danau Saujana</li>
                                        <li class="text-muted">&nbsp &nbsp Setapak, 53300</li>
                                        <li class="text-muted">&nbsp &nbsp Kuala Lumpur, Malaysia</li>
                                        <li class="text-muted">&nbsp &nbsp <i class="fas fa-phone"></i>012-192 4953</li>
                                    </ul>
                                </div>
                                <div class="col-xl-4">
                                    <%--<p class="text-muted">Invoice</p>--%>
                                    <ul class="list-unstyled">
                                        <li class="text-muted">
                                            <%--<i class="fas fa-circle" style="color: #B97836;"></i>--%>
                                            <span class="fw-bold">ID: </span>P0001</li>
                                        <li class="text-muted">
                                            <%--<i class="fas fa-circle" style="color: #B97836;"></i>--%>
                                            <span class="fw-bold">Date & Time: </span>25 Aug 2022 11:30AM</li>
                                        <li class="text-muted">
                                            <%--<i class="fas fa-circle" style="color: #B97836;"></i>--%>
                                            <span class="me-1 fw-bold">Status:</span><span class="badge bg-success text-black fw-bold">Delivered</span></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="row my-2 mx-1 justify-content-center">
                                <div class="col-md-2 mb-4 mb-md-0" style="padding: 5px 0px 0px 40px">
                                    <div class="bg-image ripple rounded-5 mb-4 overflow-hidden d-block"
                                        data-ripple-color="light">
                                        <%--<img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/new/img(4).webp"--%>
                                        <img style="border-radius: 15px;" src="Media/menuBurgers/chicken1.jpg"
                                            class="w-80" height="80" alt="order item 1" />
                                        <a href="#!">
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-7 mb-4 mb-md-0">
                                    <p class="fw-bold">Double Trouble</p>
                                    <p class="mb-1">
                                        <span class="text-muted me-2">Quantity:</span><span>2</span>
                                    </p>
                                    <p>
                                        <span class="text-muted me-2">Add ons:</span><span>none</span>
                                    </p>
                                </div>
                                <div class="col-md-3 mb-4 mb-md-0">
                                    <h5 class="mb-2">
                                        <%--<s class="text-muted me-2 small align-middle">$1500</s>--%>
                                        <span class="align-middle">RM 17.00</span>
                                    </h5>
                                    <%--<p class="text-danger"><small>You save 25%</small></p>--%>
                                </div>
                            </div>

                            <div class="row my-2 mx-1 justify-content-center">
                                <div class="col-md-2 mb-4 mb-md-0" style="padding: 5px 0px 0px 40px">
                                    <div class="bg-image ripple rounded-5 mb-4 overflow-hidden d-block"
                                        data-ripple-color="light">
                                        <%--<img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/new/img(4).webp"--%>
                                        <img style="border-radius: 15px;" src="Media/menuBurgers/fish1.jpg"
                                            class="w-80" height="80" alt="order item 1" />
                                        <a href="#!">
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-7 mb-4 mb-md-0">
                                    <p class="fw-bold">Salmon Fillet</p>
                                    <p class="mb-1">
                                        <span class="text-muted me-2">Quantity:</span><span>1</span>
                                    </p>
                                    <p>
                                        <span class="text-muted me-2">Add ons:</span><span>none</span>
                                    </p>
                                </div>
                                <div class="col-md-3 mb-4 mb-md-0">
                                    <h5 class="mb-2">
                                        <%--<s class="text-muted me-2 small align-middle">$1500</s>--%>
                                        <span class="align-middle">RM 16.00</span>
                                    </h5>
                                    <%--<p class="text-danger"><small>You save 25%</small></p>--%>
                                </div>
                            </div>

                            <div class="row my-2 mx-1 justify-content-center">
                                <div class="col-md-2 mb-4 mb-md-0" style="padding: 5px 0px 0px 40px">
                                    <div class="bg-image ripple rounded-5 mb-4 overflow-hidden d-block"
                                        data-ripple-color="light">
                                        <%--<img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/new/img(4).webp"--%>
                                        <img style="border-radius: 15px;" src="Media/menuBurgers/beef3.jpg"
                                            class="w-80" height="80" alt="order item 1" />
                                        <a href="#!">
                                            <div class="hover-overlay">
                                                <div class="mask" style="background-color: hsla(0, 0%, 98.4%, 0.2)"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-7 mb-4 mb-md-0">
                                    <p class="fw-bold">King of Cheese</p>
                                    <p class="mb-1">
                                        <span class="text-muted me-2">Quantity:</span><span>1</span>
                                    </p>
                                    <p>
                                        <span class="text-muted me-2">Add ons:</span><span>none</span>
                                    </p>
                                </div>
                                <div class="col-md-3 mb-4 mb-md-0">
                                    <h5 class="mb-2">
                                        <%--<s class="text-muted me-2 small align-middle">$1500</s>--%>
                                        <span class="align-middle">RM 17.00</span>
                                    </h5>
                                    <%--<p class="text-danger"><small>You save 25%</small></p>--%>
                                </div>
                            </div>


                            <hr>
                            <div class="row">
                                <div class="col-xl-8">
                                    <p class="ms-3">Hi, I would appreciate if you guys can give me extra chilli sauce! Thanks!</p>
                                </div>
                                <div class="col-xl-3">
                                    <ul class="list-unstyled">
                                        <li class="text-muted ms-4"><span class="text-black me-4">SubTotal</span>RM 67.00</li>
                                        <li class="text-muted mt-2"><span class="text-black me-4">Delivery Fee</span>RM 3.00</li>
                                        <li class="text-muted ms-4 mt-2"><span class="text-black me-3">Discount</span>-RM 5.00</li>
                                    </ul>
                                    <p class="text-black float-start">
                                        <span class="text-black me-3">Total Amount</span><span
                                            style="font-size: 18px;"><strong>RM 65.00</strong></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>


</asp:Content>
