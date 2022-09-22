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
                <td class="auto-style9" rowspan="3" style="vertical-align: top; font-weight: bold; font-style: italic;">Category Name&nbsp; :&nbsp;&nbsp;
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
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
                <td class="auto-style4" rowspan="2">&nbsp;</td>
                <td style="text-align: center; font-weight: bold; font-style: italic;">Category List</td>
            </tr>
            <tr>
                <td style="text-align: right; font-weight: bold; font-style: italic;">Search :&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#999999" Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="CategorySqlDataSource" AutoGenerateColumns="False" DataKeyNames="NAME" Height="170px" Width="818px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" SortExpression="NAME" />
                            <asp:BoundField DataField="AVAILABILITY" HeaderText="AVAILABILITY" SortExpression="AVAILABILITY" />
                            <asp:BoundField DataField="NUMBER OF ITEMS" HeaderText="NUMBER OF ITEMS" SortExpression="NUMBER OF ITEMS" />
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
                    <asp:SqlDataSource ID="CategorySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" SelectCommand="SELECT * FROM [Category]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Category] WHERE [NAME] = @original_NAME AND [AVAILABILITY] = @original_AVAILABILITY AND [NUMBER OF ITEMS] = @original_NUMBER_OF_ITEMS" InsertCommand="INSERT INTO [Category] ([NAME], [AVAILABILITY], [NUMBER OF ITEMS]) VALUES (@NAME, @AVAILABILITY, @NUMBER_OF_ITEMS)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Category] SET [AVAILABILITY] = @AVAILABILITY, [NUMBER OF ITEMS] = @NUMBER_OF_ITEMS WHERE [NAME] = @original_NAME AND [AVAILABILITY] = @original_AVAILABILITY AND [NUMBER OF ITEMS] = @original_NUMBER_OF_ITEMS">
                        <DeleteParameters>
                            <asp:Parameter Name="original_NAME" Type="String" />
                            <asp:Parameter Name="original_AVAILABILITY" Type="String" />
                            <asp:Parameter Name="original_NUMBER_OF_ITEMS" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NAME" Type="String" />
                            <asp:Parameter Name="AVAILABILITY" Type="String" />
                            <asp:Parameter Name="NUMBER_OF_ITEMS" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AVAILABILITY" Type="String" />
                            <asp:Parameter Name="NUMBER_OF_ITEMS" Type="Int32" />
                            <asp:Parameter Name="original_NAME" Type="String" />
                            <asp:Parameter Name="original_AVAILABILITY" Type="String" />
                            <asp:Parameter Name="original_NUMBER_OF_ITEMS" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </div>

</asp:Content>
