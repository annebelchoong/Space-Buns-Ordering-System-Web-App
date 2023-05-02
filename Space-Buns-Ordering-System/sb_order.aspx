<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_order.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_order" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcoj_spVvnhJbKvChuD9JZdgnhfknJYxA&callback=initMap&libraries=places&v=weekly"></script>
    <link href="CSS/sb_order.css" rel="stylesheet" runat="server" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:LoginName ID="currentUsername" runat="server" Visible="False" />
    <asp:Label ID="lblOrderID" runat="server" Visible ="False"></asp:Label>
    <div class="options-block">
        <b style="font-size: 2em; color: white; margin: 30px;">Start Ordering Now</b><br />
        <asp:Button ID="btnDelivery" runat="server" Text="Delivery" OnClientClick="getDeliveryMap()" CssClass="btnDelivery" UseSubmitBehavior="False" />
        <br />

        <asp:Button ID="btnPickup" runat="server" Text="Pick-up" OnClientClick="getPickUpMap()" CssClass="btnPickup" UseSubmitBehavior="False" />
        <br />
        <br />

    </div>
    <div>
        <asp:Panel ID="pnlDelivery" runat="server" HorizontalAlign="Center" CssClass="pnlDateTime">
            <div class="title">
                Enter your delivery address
            </div>
            <div class="deliverySection">
                <div id="map_delivery"></div>
                <div class="deliveryRight">
                    <br />
                    Delivery Address<br />
                    <asp:TextBox ID="txtDeliveryAddress" runat="server" CssClass="textbox"></asp:TextBox>

                    <br />
                    Address Details<br />
                    <asp:TextBox ID="txtAddressDetails" runat="server" CssClass="textbox"></asp:TextBox>

                    <br />
                    Message to driver (optional)<br />
                    <asp:TextBox ID="txtMessage" runat="server" AutoCompleteType="HomeState" Rows="5" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>

                    <br />
                    <div class="confirmButton">

                        <asp:Button ID="btnConfirm" runat="server" OnClientClick="getmap()" Text="Confirm" CssClass="btnConfirm" />
                    </div>

                    <br />

                </div>
            </div>



        </asp:Panel>
        <asp:Panel ID="pnlPickup" runat="server" HorizontalAlign="Center">
            <div class="title">
                Select your preferred branch
            </div>
            <div class="mapContainer">
                <div class="map" id="map_pickUp"></div>


                <%-- add a list of branch  --%>
                <div class="repeaterContainer">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <div class="branch-content-1">
                                <div class="branch-marker">

                                    <i class='fas fa-map-marker-alt' id="location"
                                        style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>
                                </div>

                                <div class="branch-content-2">
                                    <asp:Label ID="lblBranchID" runat="server" Text='<%# Eval("branchId") %>' Visible ="True"></asp:Label>

                                    <asp:Label ID="lblBranchLocation" runat="server" Text='<%# Eval("branchLocation") %>' CssClass="lblBranchLocation"></asp:Label>
                                    
                                    <asp:Label ID="lblBranchAddress" runat="server" Text='<%# Eval("branchAddress") %>' CssClass="lblBranchAddress"></asp:Label>
                                    <div class="branch-select">

                                    <asp:Button ID="btnSelect" runat="server" Text="Select" CssClass="btnSelect" CommandName="btnSelectBranch" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [branchLocation], [branchAddress], [branchId] FROM [Branch]"></asp:SqlDataSource>

                </div>
            </div>

            <%--<div id="branch-content-1">
                    <img width="50px" src="Media/icons/SpaceBunsLogo.png" alt="Space Buns Logo" />
                    <div id="branch-content-2">
                        <a href="https://www.google.com/maps" target="_blank">Directions</a>
                        <br />
                        <asp:Button ID="btnSelect" runat="server" Text="Select" />
                        <%--<button id="pickup-button" class="button" onclick="showPopUp()">Select</button>
                    </div>
                </div>--%>
        </asp:Panel>
        <div>
        </div>
        <asp:Panel ID="pnlDateTime" runat="server" CssClass="modalpopup">
            <div class="close-btn">
                <asp:Button ID="btnClose" runat="server" Text="&times;" CssClass="btnClose" />
            </div>
            <div class="selectDateandTimeTitle">
                <asp:Label ID="lblDeliveryType" runat="server" Text="Select Date and Time" CssClass="lblDeliveryType"></asp:Label>

            </div>
            <div class="datetime">
                <div class="date">
                    <div class="titleDatenTime">
                        Date<br />

                    </div>
                    <asp:DropDownList ID="ddlDates" runat="server" CssClass="ddlDates">
                    </asp:DropDownList>
                </div>
                <div class="time">
                    <div class="titleDatenTime">
                        Time<br />
                    </div>

                    <asp:DropDownList ID="ddlTime" runat="server" CssClass="ddlTime">
                    </asp:DropDownList>

                </div>
            </div>
            <br />
            <div class="delay-text">
                            <asp:Label ID="lblDate" runat="server" ></asp:Label>
            <asp:Label ID="lblTime" runat="server" ></asp:Label>
                <p>
                    Note : There may be a variance of 10-15 mins from
                                your selected pickup/delivery time during peak hours.
                                But we will do our best to have your order ready as
                                close to your selected time as possible 🙂
                </p>
            </div>

            <asp:Label ID="lblDateTime" runat="server" ></asp:Label>
            <div class="orderBtn">
                <asp:Button ID="testDate" runat="server" Text="DateTime Button Test" OnClick="testDate_Click" />
                <asp:Button ID="btnOrder" runat="server" Text="Order Now" CssClass="btnOrder" PostBackUrl="~/sb_menu.aspx" OnClick="btnOrder_Click" />

            </div>
        </asp:Panel>
    </div>
    <div>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" Collapsed="True" CollapseControlID="btnPickup" ExpandControlID="btnDelivery" TargetControlID="pnlDelivery" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" Collapsed="True" CollapseControlID="btnDelivery" ExpandControlID="btnPickup" TargetControlID="pnlPickup" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlDateTime" TargetControlID="btnConfirm" BackgroundCssClass="modalBackground" CancelControlID="btnClose"></ajaxToolkit:ModalPopupExtender>
        <%--<ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlDateTime" BackgroundCssClass="modalBackground" CancelControlID="btnClose" TargetControlID="btnSelect"></ajaxToolkit:ModalPopupExtender>--%>
        <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="txtDate" Format="dd/MM/yyyy" PopupPosition="BottomRight" TargetControlID="txtDate" />--%>
    </div>

    <script src="Javascript/sb_order.js"></script>
</asp:Content>
