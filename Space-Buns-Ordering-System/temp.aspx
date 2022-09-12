<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="Space_Buns_Ordering_System.temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="ddlName" runat="server" DataSourceID="SqlDataSource1" DataValueField="branchLocation">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [branchLocation] FROM [Branch]"></asp:SqlDataSource>

            <br />

            <%--            <asp:RadioButtonList ID="rblYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="YEAR" DataValueField="YEAR" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT YEAR(ORDERDATE) AS YEAR FROM [Orders]"></asp:SqlDataSource>--%>


            <%--            <asp:GridView ID="gvOrderList" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource3" Visible="False" OnSelectedIndexChanged="gvOrderList_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" ReadOnly="True" SortExpression="OrderDate" />
                </Columns>
            </asp:GridView>--%>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="branchID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvOrderList_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="branchID" HeaderText="branchID" ReadOnly="True" SortExpression="branchID" />
                    <asp:BoundField DataField="branchLocation" HeaderText="branchLocation" SortExpression="branchLocation" />
                    <asp:BoundField DataField="branchAddress" HeaderText="branchAddress" SortExpression="branchAddress" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#B97836" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Branch] WHERE [branchID] = @branchID" InsertCommand="INSERT INTO [Branch] ([branchID], [branchLocation], [branchAddress]) VALUES (@branchID, @branchLocation, @branchAddress)" SelectCommand="SELECT [branchID], [branchLocation], [branchAddress] FROM [Branch]" UpdateCommand="UPDATE [Branch] SET [branchLocation] = @branchLocation, [branchAddress] = @branchAddress WHERE [branchID] = @branchID">
                <DeleteParameters>
                    <asp:Parameter Name="branchID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="branchID" Type="String" />
                    <asp:Parameter Name="branchLocation" Type="String" />
                    <asp:Parameter Name="branchAddress" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="branchLocation" Type="String" />
                    <asp:Parameter Name="branchAddress" Type="String" />
                    <asp:Parameter Name="branchID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <br />

            <asp:DataList ID="dlOrderDetail" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    ProductName:
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    UnitPrice:
                            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice", "{0:C}") %>' />
                    <br />
                    Quantity:
                            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    Discount:
                            <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount") %>' />
                    %<br />
                    Sales:
                            <asp:Label ID="SalesLabel" runat="server" Text='<%# Eval("Sales", "{0:C}") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
