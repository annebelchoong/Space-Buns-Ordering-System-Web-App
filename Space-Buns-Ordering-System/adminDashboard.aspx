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
                        class="fa fa-list fa-2x text-lightblue"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Total Sales</p>
                        <span class="font-bold text-title">578</span>
                    </div>
                </div>

                <div class="card">
                    <i class="fa fa-shopping-cart fa-2x text-red" aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Total Orders</p>
                        <span class="font-bold text-title">2467</span>
                    </div>
                </div>

                <div class="card">
                    <i
                        class="fa fa-truck fa-2x text-yellow"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Delivered Orders</p>
                        <span class="font-bold text-title">340</span>
                    </div>
                </div>

                <div class="card">
                    <i
                        class="fa fa-th-large fa-2x text-green"
                        aria-hidden="true"></i>
                    <div class="card_inner">
                        <p class="text-primary-p">Products</p>
                        <span class="font-bold text-title">25</span>
                    </div>
                </div>
            </div>
            <!-- MAIN CARDS ENDS HERE -->
        </div>
    </main>


</asp:Content>
