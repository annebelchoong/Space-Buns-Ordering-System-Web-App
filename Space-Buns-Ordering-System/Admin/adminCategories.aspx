<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminCategories.aspx.cs" Inherits="Space_Buns_Ordering_System.adminCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 441px;
        }

        .auto-style2 {
            margin-bottom: 0px;
        }

        .auto-style3 {
            width: 696px;
        }

        .auto-style4 {
            width: 166px;
        }

        .auto-style6 {
            height: 47px;
        }

        .auto-style7 {
            height: 32px;
        }

        .auto-style8 {
            margin-top: 13;
            width: 176px;
        }

        .auto-style9 {
            height: 34px;
        }

        .auto-style10 {
            margin-top: 13;
            height: 34px;
            width: 176px;
        }

        .auto-style11 {
            height: 32px;
            width: 181px;
        }

        .auto-style12 {
            margin-top: 13;
            width: 181px;
        }

        .auto-style13 {
            margin-top: 13;
            height: 34px;
            width: 181px;
        }

        .auto-style14 {
            height: 32px;
            width: 176px;
        }
        .auto-style15 {
            width: 166px;
            height: 277px;
        }
        .auto-style16 {
            height: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <h1 class="fs-1 mb-3">Categories</h1>

        <table class="auto-style2" style="margin-left: 2%; margin-top: 1%; margin-right: 2%;">
            <tr>
                <%-- <asp:Parameter Name="ProductId" Type="String" />--%>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="3" style="vertical-align: top; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Category Name :&nbsp;&nbsp;
                    <asp:TextBox ID="txtCatName0" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <%--        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="categoryID">
            <Columns>
                <asp:BoundField DataField="categoryID" HeaderText="categoryID" InsertVisible="False" ReadOnly="True" SortExpression="categoryID" />
                <asp:BoundField DataField="categoryName" HeaderText="categoryName" SortExpression="categoryName" />
                <asp:CheckBoxField DataField="isAvailable" HeaderText="isAvailable" SortExpression="isAvailable" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category] WHERE ([categoryName] LIKE '%' + @categoryName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchCategory" Name="categoryName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblTest" runat="server" Text="Label"></asp:Label>--%>Set Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem Value="True">True</asp:ListItem>
                        <asp:ListItem Value="False">False</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" />
                    <br />
                    <br />
                    <asp:Label ID="lblDisplay" runat="server"></asp:Label>
                </td>
                <td class="auto-style4" rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Category List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic; font-family: 'Segoe UI', Verdana, sans-serif;">Search :&nbsp;
                    <asp:TextBox ID="txtSearchCategory" runat="server" ForeColor="#999999" Height="24px" placeholder="CategoryID" ></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style6" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps; font-family: 'Segoe UI', Verdana, sans-serif;">Name</td>
                            <td class="auto-style11" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps; font-family: 'Segoe UI', Verdana, sans-serif;">Availability</td>
                            <td class="auto-style14" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps; font-family: 'Segoe UI', Verdana, sans-serif;">Number of items</td>
                            <td class="auto-style6" style="text-align: center; border-style: solid; border-width: thin; font-weight: bold; font-variant: small-caps; font-family: 'Segoe UI', Verdana, sans-serif;">Action</td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Promotion</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style7">Chicken</td>
                            <td class="auto-style11" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style14" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style7">
                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Fish</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink11" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Beef</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink12" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Lamb</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink13" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Meatless</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">3</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">
                                <asp:HyperLink ID="HyperLink7" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink14" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Drinks</td>
                            <td class="auto-style12" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Not Available</td>
                            <td class="auto-style8" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">5</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink15" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; border-right-style: solid; border-right-width: thin; border-left-style: solid; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style9">Snacks</td>
                            <td class="auto-style13" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">Not Available</td>
                            <td class="auto-style10" style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;">4</td>
                            <td style="text-align: center; border-right-style: solid; border-left-style: solid; border-right-width: thin; border-left-width: thin; border-bottom-style: solid; border-bottom-width: thin; font-family: 'Segoe UI', Verdana, sans-serif;" class="auto-style9">&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="True" CssClass="active">Edit</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink16" runat="server" CssClass="active">Delete</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="Category Id" ReadOnly="True" SortExpression="CategoryId" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="deleteButton" runat="server" CommandName="Delete" Text="Delete"
                            OnClientClick="return confirm('Are you sure you want to delete this user?');" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="productID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="productID" HeaderText="productID" SortExpression="productID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="categoryID" HeaderText="categoryID" SortExpression="categoryID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="unitPrice" HeaderText="unitPrice" SortExpression="unitPrice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
            <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO Product(name, unitPrice, quantity, categoryID) VALUES (@Name, @UnitPrice, @Quantity, @CategoryID)" SelectCommand="SELECT * FROM [Product] WHERE ([CategoryID] = @CategoryID)" UpdateCommand="UPDATE Product SET name = @Name, unitPrice = @UnitPrice, quantity = @Quantity, categoryID = @CategoryID WHERE (productID = @ProductId)">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <%-- <asp:Parameter Name="ProductId" Type="String" />--%>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="UnitPrice" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CategoryID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="UnitPrice" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ProductId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([CategoryId], [CategoryName]) VALUES (@CategoryId, @CategoryName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryId] = @CategoryId">
            <DeleteParameters>
                <asp:Parameter Name="CategoryId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryId" Type="String" />
                <asp:Parameter Name="CategoryName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="CategoryId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        GridView, DetailView, FormView, Repeater, DropdownList == Databound Controls
<%--        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="categoryID">
            <Columns>
                <asp:BoundField DataField="categoryID" HeaderText="categoryID" InsertVisible="False" ReadOnly="True" SortExpression="categoryID" />
                <asp:BoundField DataField="categoryName" HeaderText="categoryName" SortExpression="categoryName" />
                <asp:CheckBoxField DataField="isAvailable" HeaderText="isAvailable" SortExpression="isAvailable" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category] WHERE ([categoryName] LIKE '%' + @categoryName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchCategory" Name="categoryName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblTest" runat="server" Text="Label"></asp:Label>--%>
    </div>
</asp:Content>
