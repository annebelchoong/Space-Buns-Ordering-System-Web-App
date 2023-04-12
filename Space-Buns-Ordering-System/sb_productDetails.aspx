<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_productDetails.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_productDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="header">

                        <h2>Product Detail</h2>
                    </div>
                    <div class="menuProductDetails">
                        <div class="menuLeft">
                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="300px" style="border-radius: 30px"/>
                        </div>
                        <div class="menuRight">
                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                            <br />
                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                            <br />
                            <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice", "{0:C}") %>' CssClass="lblPrice"></asp:Label>
                            <div class="productBottom">
                                <div class="productQuantity">
                                    <div class="decrementButton">
                                        <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="btnQuantity" onClick ="btnDecrement_onClick"/>
                                    </div>
                                    <div class="quantityNumber">
                                        <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Out of Range" ControlToValidate="txtQuantity" MinimumValue="1" MaximumValue="999"></asp:RangeValidator>--%>
                                        <asp:TextBox ID="txtQuantity" runat="server" Text="1" CssClass="txtQuantity" />
                                    </div>
                                    <div class="incrementButton">
                                        <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="btnQuantity" OnClick="btnIncrement_onClick"/>
                                    </div>
                                    <div class="buttons">
                                        <div class="addToCart">
                                        <%--<asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' />--%>
                                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' PostBackUrl="~/sb_menu.aspx" />
                                    </div>

                                   <%-- <div class="back">
                                        <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btnAddToCart" CommandName="Add" CommandArgument='<%# Eval("name") %>' PostBackUrl="~/sb_menu.aspx" />
                                    </div>--%>
                                    </div>
                                    
                                </div>

                            </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
