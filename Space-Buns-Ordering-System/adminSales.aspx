<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminSales.aspx.cs" Inherits="Space_Buns_Ordering_System.adminSales" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <ajaxToolkit:PieChart ID="PieChart1" runat="server" ForeColor="White">
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
    </ajaxToolkit:BarChart>
</asp:Content>
