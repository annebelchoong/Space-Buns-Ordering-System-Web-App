<%@ Page Title="" Language="C#" MasterPageFile="~/UserProfile/sb_masterProfile.Master" AutoEventWireup="true" CodeBehind="sb_updateProfile.aspx.cs" Inherits="Space_Buns_Ordering_System.UserProfile.sb_updateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .btn1 {
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            width: 150px;
            height: 40px;
            background-color: #1A1A1A;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 20px;
        }

            .btn1:hover {
                text-decoration: none;
                color: white;
                background-color: #B97836;
                transition: 250ms;
            }

        input {
            text-align: center;
            outline: none;
            color: white;
        }

            input[type=text]:focus, input[type=password]:focus, input[type=tel]:focus, input[type=email]:focus {
                border: 1px solid white;
            }

        .input {
            height: 50px;
            width: 300px;
            border-radius: 6px;
            border: 1px #B97836 solid;
            background-color: #1A1A1A;
            margin: 10px 0px;
            padding: 10px;
        }
    </style>

    <div class="dash-content">
        <div class="overview">
            <div class="title">
                <i class="fas fa-user bg-transparent"></i>
                <span class="text">Update User Profile</span>
                <br />
                <br />
            </div>
            <div>
                <table style="width: 80%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblFName" runat="server" ForeColor="#999999" Text="First Name"></asp:Label>
                        </td>
                        <%--                            <td class="auto-style5">
                                <asp:Label ID="lblLName" runat="server" ForeColor="#999999" Text="Last Name"></asp:Label>
                            </td>--%>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtFirstName" runat="server" class="input" placeholder="First Name"></asp:TextBox>
                        </td>
                        <%--                            <td class="auto-style5">
                                <asp:TextBox ID="txtLastName" runat="server" class="input" placeholder="Last Name"></asp:TextBox>
                            </td>--%>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblUsername" runat="server" ForeColor="#999999" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:LoginName ID="LoginName1" runat="server" ForeColor="white" />
                            <%--<asp:TextBox ID="txtUsername" runat="server" class="input" placeholder="Username"></asp:TextBox>--%>
                            <%--<asp:Label ID="lblUsername1" runat="server" Text="Label"></asp:Label>--%>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblEmail" runat="server" ForeColor="#999999" Text="Email Address"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtEmail" runat="server" class="input" placeholder="example@gmail.com"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblPhoneNo" runat="server" ForeColor="#999999" Text="Phone No"></asp:Label>
                        </td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtPhoneNo" runat="server" class="input" placeholder="0123456789" pattern="^(01)[0-9][0-9]*[0-9]{7,8}$"></asp:TextBox>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblAddress" runat="server" ForeColor="#999999" Text="Delivery Address"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtAddress" runat="server" class="input" placeholder="Address"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblPostCode" runat="server" ForeColor="#999999" Text="Post Code"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lblState" runat="server" ForeColor="#999999" Text="State"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtPostCode" runat="server" class="input" placeholder="Post Code"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddlState" runat="server" class="input" ForeColor="White">
                                <asp:ListItem>Johor</asp:ListItem>
                                <asp:ListItem>Kedah</asp:ListItem>
                                <asp:ListItem>Kelantan</asp:ListItem>
                                <asp:ListItem>Malacca</asp:ListItem>
                                <asp:ListItem>Negeri Sembilan</asp:ListItem>
                                <asp:ListItem>Pahang</asp:ListItem>
                                <asp:ListItem>Penang</asp:ListItem>
                                <asp:ListItem>Perak</asp:ListItem>
                                <asp:ListItem>Perlis</asp:ListItem>
                                <asp:ListItem>Sabah</asp:ListItem>
                                <asp:ListItem>Sarawak</asp:ListItem>
                                <asp:ListItem>Selangor</asp:ListItem>
                                <asp:ListItem>Terengganu</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="lblResults" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblDoBirth" runat="server" ForeColor="#999999" Text="Date of Birth"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Calendar ID="calDoB" runat="server" OnSelectionChanged="calDoB_SelectionChanged" ForeColor="#999999"></asp:Calendar>
                            <asp:TextBox ID="txtDoB" runat="server" class="input"></asp:TextBox>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <%--<asp:Button ID="Button1" runat="server" class="btn1" Text="Save Changes" PostBackUrl="~/UserProfile/sb_userProfile.aspx" OnClick="btnSaveChange_Click" />--%>
                            <asp:Button ID="btnSaveChange" runat="server" class="btn1" Text="Save Changes" OnClick="btnSaveChange_Click" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="lblEditProfile" runat="server"></asp:Label>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
                <%--<asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
                            <p class="footer-socialLinks">Your profile information save successfully!</p>
                            <br />
                            <asp:Button ID="btnClose" runat="server" Text="Close" class="btn1" PostBackUrl="~/UserProfile/sb_userProfile.aspx"  />
                        </asp:Panel>--%>

                <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                <%--<ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="btnSaveChange" CancelControlID="btnClose" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>--%>
            </div>
        </div>
    </div>
</asp:Content>
