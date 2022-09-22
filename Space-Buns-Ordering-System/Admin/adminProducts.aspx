<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminProducts.aspx.cs" Inherits="Space_Buns_Ordering_System.adminProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 430px;
        }

        .auto-style2 {
            width: 1223px;
        }

        .auto-style5 {
            width: 781px;
        }

        .auto-style6 {
            width: 781px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <h1 class="fs-1 mb-3">Products</h1>
        <table class="auto-style2" style="margin: 1% 2% 5% 2%;">
            <tr>
                <%--<td colspan="3" style="font-weight: bold; font-size: xx-large; text-decoration: underline overline; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style6">PRODUCT</td>--%>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="4" style="vertical-align: top; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Product Name :&nbsp;&nbsp;
                    <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
                    Product Description :<br />
                    &nbsp;<asp:TextBox ID="txtProdDesc" runat="server" Height="90px" TextMode="MultiLine" Width="303px"></asp:TextBox>
                    <br />
                    <br />
                    Product Price :
                    <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Product Quantity :
                    <asp:TextBox ID="txtProdQuantity" runat="server" TextMode="Number" Width="78px"></asp:TextBox>
                    <br />
                    <br />
                    Product Image :<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    Product Category :
                    <asp:DropDownList ID="ddlProdStatus" runat="server">
                        <asp:ListItem>Chicken</asp:ListItem>
                        <asp:ListItem>Fish</asp:ListItem>
                        <asp:ListItem>Beef</asp:ListItem>
                        <asp:ListItem>Lamb</asp:ListItem>
                        <asp:ListItem>Meatless</asp:ListItem>
                        <asp:ListItem>Promotion</asp:ListItem>
                        <asp:ListItem>Drinks</asp:ListItem>
                        <asp:ListItem>Snacks</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Set Status :
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
                <td rowspan="3">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style5">Product List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style6">Search :&nbsp;
                    <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="ProductID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; font-weight: normal; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif; font-size: small;" class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="productID,Expr1" DataSourceID="SqlDataSource1" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="productID" HeaderText="productID" InsertVisible="False" ReadOnly="True" SortExpression="productID" />
                            <asp:BoundField DataField="Expr2" HeaderText="CATEGORY NAME" SortExpression="Expr2" />
                            <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                            <asp:ImageField DataImageUrlField="picture" HeaderText="PICTURE">
                                <ControlStyle Height="65px" Width="65px" />
                                <ItemStyle Height="65px" Width="65px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="quantity" HeaderText="QUANTITY" SortExpression="quantity" />
                            <asp:BoundField DataField="unitPrice" HeaderText="PRICE(RM)" SortExpression="unitPrice" />
                            <asp:BoundField DataField="description" HeaderText="DESCRIPTION" SortExpression="description" >
                            <ItemStyle HorizontalAlign="Justify" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Product.productID, Product.categoryID, Product.categoryName, Product.name, Product.picture, Product.quantity, Product.unitPrice, Product.description, Product.adminID, Category.categoryID AS Expr1, Category.categoryName AS Expr2 FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID"></asp:SqlDataSource>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
