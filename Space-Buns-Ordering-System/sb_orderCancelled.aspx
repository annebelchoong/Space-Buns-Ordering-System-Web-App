<%@ Page Title="" Language="C#" MasterPageFile="~/sb_general.Master" AutoEventWireup="true" CodeBehind="sb_orderCancelled.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_orderCancelled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_orderConfirmation.css" rel="stylesheet" />
    <style>
        h1 {
            font-size: 3em;
            text-align: center;
            margin: 100px auto 0;
        }

        h2 {
            font-size: 2em;
            text-align: center;
            margin: 0 auto 30px;
        }

        .buttonsContainer {
            display: flex;
            margin: 0 auto 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <h1>Your order is not complete.</h1>
        <img style="display: flex; justify-content: center; margin: auto" src="Media/Error/no_burger.png" />
        <h2>Please try again.</h2>
        <div class="buttonsContainer">
            <asp:HyperLink ID="btnViewOrder" runat="server" NavigateUrl="sb_menu.aspx" CssClass="buttons">Go to Menu</asp:HyperLink>
        </div>
    </div>

    <div id="ads" style="display: flex; justify-content: center; margin-bottom: 30px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="TopBannerTimer" Interval="1000" runat="server" />
        <asp:UpdatePanel ID="BannerUpdatePanel" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TopBannerTimer" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:AdRotator runat="server" ID="AdRotator1" AdvertisementFile="App_Data/advertisements.xml" Width="850px" Height="500px" ToolTip="Click for more info" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
