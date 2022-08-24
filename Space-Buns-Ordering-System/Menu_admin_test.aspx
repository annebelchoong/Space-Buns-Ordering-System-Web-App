<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_admin_test.aspx.cs" Inherits="Space_Buns_Ordering_System.Menu_admin_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:DropDownList ID="ddlAvailability" runat="server">
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>Not Available</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtCatName" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Availability] FROM [Category_Test] WHERE (([Name] = @Name) AND ([Availability] = @Availability))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCatName" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlAvailability" Name="Availability" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
