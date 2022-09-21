<%@ Page Language="C#" AutoEventWireup="True" %>

<%@ Import Namespace="System.Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="CSS/sb_menu_test.css" rel="stylesheet" />
    <link href="CSS/sb_menu.css" rel="stylesheet" />
    <title>DataList Edit Example</title>
    <style type="text/css">
        .imgCart {
            width: 80px;
            padding: 0px;
        }

        .product {
            display: flex;
            padding-bottom: 30px;
            justify-content: space-around;
        }

        .productColumn {
            display: flex;
            flex-direction: column;
        }

        .productTop, .productBottom {
            width: 350px;
            display: flex;
            justify-content: space-between;
            flex-direction: row;
            align-items: baseline;
        }


        .productQuantity {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
        }

        .productName {
            font-size: 18px;
            font-weight: bold;
            padding-bottom: 20px;
        }

        .totalPrice {
            padding-top: 15px;
            font-size: 20px;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="menu-nav">
            <ul>
                <li>
                    <a href="#Chicken">Chicken</a>
                    <a href="#Fish">Fish</a>
                    <a href="#Beef">Beef</a>
                    <a href="#Lamb">Lamb</a>
                    <a href="#Meatless">Meatless</a>
                </li>
            </ul>
        </nav>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Chicken">
                    <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Fish">
                    <asp:Label ID="lblFish" runat="server" Text='Fish' CssClass="lblCategory"></asp:Label>
                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProductF" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProductF" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescriptionF" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPriceF" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Beef">
                    <asp:Label ID="lblChicken" runat="server" Text='Beef' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Lamb">
                    <asp:Label ID="lblChicken" runat="server" Text='Lamb' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Meatless">
                    <asp:Label ID="lblChicken" runat="server" Text='Meatless' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Fish" Name="categoryName" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.unitPrice, Product.description, Product.picture, Category.categoryName FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID WHERE (Category.categoryName LIKE @categoryName)">
            <SelectParameters>
                <asp:Parameter DefaultValue="chicken" Name="categoryName" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, OrderDetails.unitPrice, OrderDetails.quantity, Product.picture FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID INNER JOIN Product ON OrderDetails.productID = Product.productID WHERE ([Order].customerID = @customerID)">
            <SelectParameters>
                <asp:Parameter Name="customerID" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
