<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminCustomers.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="Javascript/adminDashboard.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 439px;
        }

        .btn {
            justify-content: center;
            text-decoration: none;
            cursor: pointer;
            font-size: 1em;
            transition: transform .2s ease;
            /*            width: 150px;
            height: 20px;*/
            background-color: white;
            color: #B97836;
            border: 1px #B97836 solid;
            font-weight: bold;
            border-radius: 30px;
            margin-left: 48px;
            padding: 7px 12px;
        }

            .btn:hover {
                text-decoration: none;
                color: white;
                background-color: #B97836;
                transition: 250ms;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/sb_adminDashboard.css" rel="stylesheet" />

    <div class="container-fluid">

        <div class="row my-5">
            <h3 class="fs-4 mb-3"><strong>Customer List</strong></h3>
            <h3 class="fs-4 mb-3">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style1">Name :
                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" class="btn" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Search Result :</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="text-center">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:CommandField ShowSelectButton="True" />
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
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT customerId, name, email FROM Customer
WHERE (name = @name)
">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtSearch" DefaultValue="jasmine" Name="name" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="customerId" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    customerId:
                                    <asp:Label ID="customerIdLabel" runat="server" Text='<%# Eval("customerId") %>' />
                                    <br />
                                    name:
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    <br />
                                    email:
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">Overall Customer List:
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="text-center">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="customerId" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:CommandField ShowSelectButton="True" />
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
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [customerId], [name], [email] FROM [Customer]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="customerId" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <ItemTemplate>
                                    customerId:
                                    <asp:Label ID="customerIdLabel" runat="server" Text='<%# Eval("customerId") %>' />
                                    <br />
                                    name:
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    <br />
                                    email:
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    <br />
                                    password:
                                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                    <br />
                                    phone:
                                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                                    <br />
                                    street:
                                    <asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' />
                                    <br />
                                    city:
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                    <br />
                                    zipcode:
                                    <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Eval("zipcode") %>' />
                                    <br />
                                    profilePic:
                                    <asp:Label ID="profilePicLabel" runat="server" Text='<%# Eval("profilePic") %>' />
                                    <br />
                                    adminID:
                                    <asp:Label ID="adminIDLabel" runat="server" Text='<%# Eval("adminID") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([customerId] = @customerId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView2" Name="customerId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([customerId] = @customerId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="customerId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </h3>
            <%--<div class="col">
                <table class="table bg-white rounded shadow-sm  table-hover">
                    <thead>
                        <tr>
                            <th scope="col" width="50">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th><em>Search:</em></th>
                            <th colspan="2">
                                <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="CustomerID"></asp:TextBox>
                            </th>
                        </tr>
                        <tr>
                            <th scope="col" width="50">#</th>
                            <th scope="col">CustomerID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Date Joined</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>C0001</td>
                            <td>Prem Shahi</td>
                            <td>premshahi@gmail.com	</td>
                            <td>2022-02-12</td>
                            <td class="btnControl">
                                <%--<asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />--%>
            <%--<asp:HyperLink ID="viewCustomerDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px"></asp:HyperLink>
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>C0002</td>
                            <td>Deepa Chand</td>
                            <td>deepachand@gmail.com</td>
                            <td>2022-02-12</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>C0003</td>
                            <td>Sarah</td>
                            <td>sarah@gmail.com</td>
                            <td>2022-02-12</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>C0004</td>
                            <td>Dean Jacob</td>
                            <td>deanjacob@gmail.com</td>
                            <td>2022-02-12</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>C0005</td>
                            <td>Luke King</td>
                            <td>lukeking@gmail.com</td>
                            <td>2022-02-12</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>--%>
        </div>
    </div>

    <%--    <main>
        <div class="main__container">
            <div class="dash-content">
                <div class="overview">
                    <div class="activity">
                        <div class="title">
                            <span class="text"><strong>Customer Lists</strong></span>
                        </div>
                        <br />
                        <div>
                            <table style="width: 100%;">
                                <tr>
                                    <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style1" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style3" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style4" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0"><strong><em>
                                        <br />
                                        Search: </em></strong></td>
                                    <td class="text-center" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0" colspan="2">&nbsp;
                                        <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="CustomerID"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                        <strong>No</strong></td>
                                    <td class="auto-style1" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                        <strong>Name</strong></td>
                                    <td class="auto-style3" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                        <strong>Email</strong></td>
                                    <td class="auto-style4" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">
                                        <strong>Date Joined</strong></td>
                                    <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                    <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #C0C0C0">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td class="auto-style7">1</td>
                                    <td class="auto-style1">Prem Shahi</td>
                                    <td class="auto-style3">premshahi@gmail.com</td>
                                    <td class="auto-style4">2022-02-12</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">2</td>
                                    <td class="auto-style1">Deepa Chand</td>
                                    <td class="auto-style3">deepachand@gmail.com</td>
                                    <td class="auto-style4">2022-02-12</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail0" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus0" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus0" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">3</td>
                                    <td class="auto-style1">Sarah</td>
                                    <td class="auto-style3">sarah@gmail.com</td>
                                    <td class="auto-style4">2022-35-21</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus1" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus1" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">4</td>
                                    <td class="auto-style1">Dean Jacob</td>
                                    <td class="auto-style3">deanjacob@gmail.com</td>
                                    <td class="auto-style4">2021-03-12</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail2" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus2" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus2" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">5</td>
                                    <td class="auto-style1">Luke King</td>
                                    <td class="auto-style3">lukeking@gmail.com</td>
                                    <td class="auto-style4">2003-12-13</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail3" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus3" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus3" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">6</td>
                                    <td class="auto-style1">Jena Corb</td>
                                    <td class="auto-style3">jenacorb@gmail.com</td>
                                    <td class="auto-style4">2016-05-25</td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnCusDetail4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnEditCus4" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:ImageButton ID="btnDeleteCus4" runat="server" ImageUrl="~/Media/Icons/delete.png" Width="25px" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>--%>
</asp:Content>
