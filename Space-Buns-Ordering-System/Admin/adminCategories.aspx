<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminCategories.aspx.cs" Inherits="Space_Buns_Ordering_System.adminCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style2 {
            margin-bottom: 0px;
        }

        .auto-style4 {
            width: 166px;
        }

        .auto-style6 {
            height: 47px;
        }

        .auto-style9 {
            height: 34px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <table class="auto-style2" style="margin-left: 2%; margin-top: 1%; margin-right: 2%;">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: xx-large; text-decoration: underline overline;" class="auto-style6">CATEGORY</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" rowspan="5" style="vertical-align: top; font-weight: bold; font-style: italic;">Category Name&nbsp; :&nbsp;&nbsp;
                    <asp:TextBox ID="txtCatName" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Items Amount&nbsp;&nbsp; :&nbsp;&nbsp;
                    <asp:TextBox ID="txtCatItemAmount" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    Set Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear"/>
                </td>
                <td class="auto-style4" rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic;">Category List</td>
            </tr>
            <tr>
                <td style="font-weight: bold; font-style: italic;" class="text-end">Search :&nbsp;
                    <asp:TextBox ID="txtCatSearch" runat="server" ForeColor="#999999" Height="24px" AutoPostBack="True" OnTextChanged="txtCatSearch_TextChanged1"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="btnRefresh" runat="server" Height="30px" OnClick="btnRefresh_Click" Text="Refresh" Width="76px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    </asp:SqlDataSource>
                    <asp:GridView ID="Panel1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="categoryID" DataSourceID="SqlDataSource1" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="categoryID" HeaderText="categoryID" InsertVisible="False" ReadOnly="True" SortExpression="categoryID" Visible="False" />
                            <asp:BoundField DataField="categoryName" HeaderText="CATEGORY NAME" SortExpression="categoryName" />
                            <asp:BoundField DataField="availability" HeaderText="AVAILABILITY" SortExpression="availability" />
                            <asp:BoundField DataField="noItems" HeaderText="ITEMS QUANTITY" SortExpression="noItems" />
                            <asp:CommandField HeaderText="ACTION" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [categoryID] = @original_categoryID AND [categoryName] = @original_categoryName AND [availability] = @original_availability AND [noItems] = @original_noItems" InsertCommand="INSERT INTO [Category] ([categoryName], [availability], [noItems]) VALUES (@categoryName, @availability, @noItems)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [categoryName] = @categoryName, [availability] = @availability, [noItems] = @noItems WHERE [categoryID] = @original_categoryID AND [categoryName] = @original_categoryName AND [availability] = @original_availability AND [noItems] = @original_noItems">
                        <DeleteParameters>
                            <asp:Parameter Name="original_categoryID" Type="Int32" />
                            <asp:Parameter Name="original_categoryName" Type="String" />
                            <asp:Parameter Name="original_availability" Type="String" />
                            <asp:Parameter Name="original_noItems" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="categoryName" Type="String" />
                            <asp:Parameter Name="availability" Type="String" />
                            <asp:Parameter Name="noItems" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="categoryName" Type="String" />
                            <asp:Parameter Name="availability" Type="String" />
                            <asp:Parameter Name="noItems" Type="Int32" />
                            <asp:Parameter Name="original_categoryID" Type="Int32" />
                            <asp:Parameter Name="original_categoryName" Type="String" />
                            <asp:Parameter Name="original_availability" Type="String" />
                            <asp:Parameter Name="original_noItems" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="Panel2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="categoryID" DataSourceID="SqlDataSource2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="categoryID" HeaderText="categoryID" InsertVisible="False" ReadOnly="True" SortExpression="categoryID" Visible="False" />
                            <asp:BoundField DataField="categoryName" HeaderText="CATEGORY NAME" SortExpression="categoryName" />
                            <asp:BoundField DataField="availability" HeaderText="AVAILABILITY" SortExpression="availability" />
                            <asp:BoundField DataField="noItems" HeaderText="ITEMS QUANTITY" SortExpression="noItems" />
                            <asp:CommandField HeaderText="ACTION" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category] WHERE ([categoryName] = @categoryName)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtCatSearch" Name="categoryName" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            </table>
    </div>

</asp:Content>
