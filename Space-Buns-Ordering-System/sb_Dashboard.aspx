<%@ Page Title="" Language="C#" MasterPageFile="~/sb_AdminTest.Master" AutoEventWireup="true" CodeBehind="sb_Dashboard.aspx.cs" Inherits="Space_Buns_Ordering_System.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2> Dashboard</h2>
        <%-- <div class="pcoded-content">--%>
                                    <div class="pcoded-inner-content">
                                        <div class="main-body">
                                            <div class="page-wrapper">

                                                <div class="page-body">
                                                    <div class="row">
                                                        <!-- card1 start -->
                                                        <div class="col-md-6 col-xl-3">
                                                            <div class="card widget-card-1">
                                                                <div class="card-block-small">
                                                                    <i class="icofont icofont-pie-chart bg-c-blue card1-icon"></i>
                                                                    <span class="text-c-blue f-w-600">Categories</span>
                                                                    <h4>5</h4>
                                                                    <div>
                                                                        <span class="f-left m-t-10 text-muted">
                                                                            <i class="text-c-blue f-16 icofont icofont-eye-alt m-r-10"></i> 
                                                                            <asp:HyperLink ID="lnkCategories" runat="server" NavigateUrl="#">View Details</asp:HyperLink>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card1 end -->
                                                        <!-- card1 start -->
                                                        <div class="col-md-6 col-xl-3">
                                                            <div class="card widget-card-1">
                                                                <div class="card-block-small">
                                                                    <i class="icofont icofont-burger bg-c-pink card1-icon"></i>
                                                                    <span class="text-c-pink f-w-600">Products</span>
                                                                    <h4>45</h4>
                                                                    <div>
                                                                        <span class="f-left m-t-10 text-muted">
                                                                            <i class="text-c-pink f-16 icofont icofont-eye-alt m-r-10"></i> 
                                                                            <asp:HyperLink ID="lnkProducts" runat="server" NavigateUrl="#">View Details</asp:HyperLink>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card1 end -->
                                                        <!-- card1 start -->
                                                        <div class="col-md-6 col-xl-3">
                                                            <div class="card widget-card-1">
                                                                <div class="card-block-small">
                                                                    <i class="icofont icofont-food-basket bg-c-green card1-icon"></i>
                                                                    <span class="text-c-green f-w-600">Total Orders</span>
                                                                    <h4>45</h4>
                                                                    <div>
                                                                        <span class="f-left m-t-10 text-muted">
                                                                            <i class="text-c-green f-16 icofont icofont-eye-alt m-r-10"></i> 
                                                                            <asp:HyperLink ID="lnkTotalOrders" runat="server" NavigateUrl="#">View Details</asp:HyperLink>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card1 end -->
                                                        <!-- card1 start -->
                                                        <div class="col-md-6 col-xl-3">
                                                            <div class="card widget-card-1">
                                                                <div class="card-block-small">
                                                                    <i class="icofont icofont-fast-delivery bg-c-yellow card1-icon"></i>
                                                                    <span class="text-c-yellow f-w-600">Delivered Items</span>
                                                                    <h4>9</h4>
                                                                    <div>
                                                                        <span class="f-left m-t-10 text-muted">
                                                                            <i class="text-c-yellow f-16 icofont icofont-eye-alt m-r-10"></i> 
                                                                            <asp:HyperLink ID="lnkDeliveredItems" runat="server" NavigateUrl="#">View Details</asp:HyperLink>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- card1 end -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               <%-- </div>--%>
    </div>
</asp:Content>
