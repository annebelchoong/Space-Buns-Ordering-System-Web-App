<%@ Page Title="" Language="C#" MasterPageFile="~/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="sb_customer.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 237px;
        }
        .auto-style3 {
            width: 397px;
        }
        .auto-style4 {
            width: 264px;
        }
        .auto-style6 {
            width: 218px;
        }
        .auto-style7 {
            width: 43px;
            text-align: center;
        }
        .auto-style8 {
            width: 60px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />
    <main>
        <div class="main__container">
            <div class="dash-content">
                    <div class="overview">
                        <div class="activity">
                            <div class="title">
                                <span class="text"><strong>Customer Lists</strong></span>
                            </div>
                             <br />
                            <div>
                            <table style="width:100%;">
                            <tr>
                                <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    <strong>No</strong></td>
                                <td class="auto-style1" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    <strong>Name</strong></td>
                                <td class="auto-style3" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    <strong>Email</strong></td>
                                <td class="auto-style4" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    <strong>Date Joined</strong></td>
                                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    &nbsp;</td>
                                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    &nbsp;</td>
                                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                    &nbsp;</td>
                            </tr>                   
    
                            <tr>
                                <td class="auto-style7">
                                    1</td>
                                <td class="auto-style1">
                                    Prem Shahi</td>
                                <td class="auto-style3">
                                    premshahi@gmail.com</td>
                                <td class="auto-style4">
                                    2022-02-12</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    2</td>
                                <td class="auto-style1">
                                    Deepa Chand</td>
                                <td class="auto-style3">
                                    deepachand@gmail.com</td>
                                <td class="auto-style4">
                                    2022-02-12</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail0" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus0" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus0" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    3</td>
                                <td class="auto-style1">
                                    Sarah</td>
                                <td class="auto-style3">
                                    sarah@gmail.com</td>
                                <td class="auto-style4">
                                    2022-35-21</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus1" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus1" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    4</td>
                                <td class="auto-style1">
                                    Dean Jacob</td>
                                <td class="auto-style3">
                                    deanjacob@gmail.com</td>
                                <td class="auto-style4">
                                    2021-03-12</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail2" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus2" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus2" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    5</td>
                                <td class="auto-style1">
                                    Luke King</td>
                                <td class="auto-style3">
                                    lukeking@gmail.com</td>
                                <td class="auto-style4">
                                    2003-12-13</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail3" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus3" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus3" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    6</td>
                                <td class="auto-style1">
                                    Jena Corb</td>
                                <td class="auto-style3">
                                    jenacorb@gmail.com</td>
                                <td class="auto-style4">
                                    2016-05-25</td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnCusDetail4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnEditCus4" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                </td>
                                <td class="auto-style8">
                                    <asp:ImageButton ID="btnDeleteCus4" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                </td>
                            </tr>
                            </table>
                            </div>
                        </div>
                </div>
                </div>
            </div>
        </main>
    
</asp:Content>
