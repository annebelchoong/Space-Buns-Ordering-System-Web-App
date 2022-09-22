<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testtest.aspx.cs" Inherits="Space_Buns_Ordering_System.Testtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ListView ID="productList" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table runat="server">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <span>
                                            <%#:Item.ProductName%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                    </span>
                                    <br />
                                    <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">               
                                        <span class="ProductListItem">
                                            <b>Add To Cart<b>
                                        </span>           
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" style="width:100%;">
                        <tbody>
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder" runat="server"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server"></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
          
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [productID] = @productID" InsertCommand="INSERT INTO [Product] ([categoryID], [name], [quantity], [unitPrice], [description], [picture], [adminID]) VALUES (@categoryID, @name, @quantity, @unitPrice, @description, @picture, @adminID)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [categoryID] = @categoryID, [name] = @name, [quantity] = @quantity, [unitPrice] = @unitPrice, [description] = @description, [picture] = @picture, [adminID] = @adminID WHERE [productID] = @productID">
            <DeleteParameters>
                <asp:Parameter Name="productID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoryID" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="quantity" Type="Decimal" />
                <asp:Parameter Name="unitPrice" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="picture" Type="Object" />
                <asp:Parameter Name="adminID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="categoryID" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="quantity" Type="Decimal" />
                <asp:Parameter Name="unitPrice" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="picture" Type="Object" />
                <asp:Parameter Name="adminID" Type="Int32" />
                <asp:Parameter Name="productID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
          
         
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productID], [quantity], [unitPrice], [description] FROM [Product]"></asp:SqlDataSource>--%>
    </form>
</body>
</html>
