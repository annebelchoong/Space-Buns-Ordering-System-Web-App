<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_order_test.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_order" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .modalBackground{
            background-color: black;
            filter:opacity(90) !important;
            opacity:0.6 !important;
            z-index: 20;
        }
        .modalpopup{
            padding: 20px 0px 24px 10px;
            position: relative;
            width: 450px;
            height: 300px;
            background-color: white;
            border: 1px solid black;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcoj_spVvnhJbKvChuD9JZdgnhfknJYxA&callback=initMap&libraries=places&v=weekly"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            Start Ordering Now<br />
            <asp:Button ID="btnDelivery" runat="server" Text="Delivery" OnClientClick="getDeliveryMap()" />
            <br />
            <br />
            <asp:Button ID="btnPickup" runat="server" Text="Pick-up" OnClientClick="getPickUpMap()" />
            <br />
            <br />
            <asp:Panel ID="pnlDelivery" runat="server">
                Enter your delivery address<br />
                <br />
                Delivery Address<br />
                <asp:TextBox ID="txtDeliveryAddress" runat="server"></asp:TextBox>
                <br />
                <br />
                Address Details<br />
                <asp:TextBox ID="txtAddressDetails" runat="server"></asp:TextBox>
                <br />
                <br />
                Message to driver (optional)<br />
                <asp:TextBox ID="txtMessage" runat="server" AutoCompleteType="HomeState" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnConfirm" runat="server" OnClientClick="getmap()" Text="Confirm" />
                <br />
                <br />
                <div id="map_delivery" style="width:70%; height:500px; border-radius: 30px;"></div>  

            </asp:Panel>
            <asp:Panel ID="pnlPickup" runat="server">
                Select your preferred branch<br />
                <div id="map_pickUp" style="width:70%; height:500px; border-radius: 30px;"></div>
                    <div id="branch-content-1">
                        <img width="50px" src="Media/icons/SpaceBunsLogo.png" alt="Space Buns Logo"/>
                    <div id="branch-content-2">
                        <a href="https://www.google.com/maps" target="_blank">Directions</a>
                        <br />
                        <asp:Button ID="btnSelect" runat="server" Text="Select" />
                    <%--<button id="pickup-button" class="button" onclick="showPopUp()">Select</button>--%>
                    </div>
                </div>
            </asp:Panel>
            <div>
                
                
            </div>
            <asp:Panel ID="pnlDateTime" runat="server" CssClass="modalpopup">
                <div class="close-btn">
                    <asp:Button ID="btnClose" runat="server" Text="&times;" />
                </div>
                <asp:Label ID="lblDeliveryType" runat="server"></asp:Label>
                <br />
                <div>
                    Date<br />
                    <asp:DropDownList ID="ddlDates" runat="server">
                    </asp:DropDownList>
                </div>
                <div>
                    Time<br />
<%--                    <cc1:TimeSelector ID="TimeSelector1" runat="server">
</cc1:TimeSelector>--%>
                    <asp:DropDownList ID="ddlTime" runat="server" >

                    </asp:DropDownList>

                </div>
                <br />
                <div class="delay-text">
                            <p>
                                Note : There may be a variance of 10-15 mins from
                                your selected pickup/delivery time during peak hours.
                                But we will do our best to have your order ready as
                                close to your selected time as possible 🙂
                            </p>
                        </div>
                <asp:Button ID="btnOrder" runat="server" Text="Order Now" />
            </asp:Panel>
        </div>
        <div>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" Collapsed="True" CollapseControlID="btnPickup" ExpandControlID="btnDelivery" TargetControlID="pnlDelivery" />
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" Collapsed="True" CollapseControlID="btnDelivery" ExpandControlID="btnPickup" TargetControlID="pnlPickup" />
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlDateTime" TargetControlID="btnConfirm" BackgroundCssClass="modalBackground" CancelControlID="btnClose"></ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlDateTime" BackgroundCssClass="modalBackground" CancelControlID="btnClose" TargetControlID="btnSelect"></ajaxToolkit:ModalPopupExtender>
            <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="txtDate" Format="dd/MM/yyyy" PopupPosition="BottomRight" TargetControlID="txtDate" />--%>
        </div>
    </form>
        <script src="Javascript/sb_order.js"></script>
</body>
</html>
