<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/sb_masterAdmin.Master" AutoEventWireup="true" CodeBehind="adminBranches.aspx.cs" Inherits="Space_Buns_Ordering_System.adminBranches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btnControl {
            width: 60px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <div class="row my-5">
            <h3 class="fs-4 mb-3">Store Branches</h3>
            <div class="col">
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
                                <asp:TextBox runat="server" ForeColor="#999999" Height="24px" placeholder="OrderID"></asp:TextBox>
                            </th>
                        </tr>
                        <tr>
                            <th scope="col" width="50">#</th>
                            <th scope="col">BranchID</th>
                            <th scope="col">Location</th>
                            <th scope="col">Status</th>
                            <th scope="col">Total Sales</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>B0001</td>
                            <td>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://www.google.com/maps/place/Subang+Jaya,+Selangor/@3.0303242,101.5677079,14z/data=!3m1!4b1!4m5!3m4!1s0x31cc4cd011ec8e15:0x4bf9f3f70226e7d3!8m2!3d3.0567333!4d101.5851192">Subang Jaya</asp:HyperLink></td>
                            <td>Active</td>
                            <td>RM1200.00</td>
                            <td class="btnControl">
                                <%--<asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />--%>
                                <asp:HyperLink ID="viewOrderDetail1" runat="server" ImageUrl="~/Media/Icons/info.png" ImageWidth="25px" NavigateUrl="adminOrderDetail.aspx"></asp:HyperLink>
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink1" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>B0002</td>
                            <td>Putrajaya</td>
                            <td>Active</td>
                            <td>RM7500.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink2" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>B0003</td>
                            <td>Setapak</td>
                            <td>Active</td>
                            <td>RM6000.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink3" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>B0004</td>
                            <td>Shah Alam</td>
                            <td>Active</td>
                            <td>RM3000.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink4" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>B0005</td>
                            <td>Damansara</td>
                            <td>Active</td>
                            <td>RM1200.00</td>
                            <td class="btnControl">
                                <asp:ImageButton ID="btnCusDetail4" runat="server" ImageUrl="~/Media/Icons/info.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:ImageButton ID="btnEditCus4" runat="server" ImageUrl="~/Media/Icons/edit.png" Width="25px" />
                            </td>
                            <td class="btnControl">
                                <asp:HyperLink ID="HyperLink5" class="fas fa-times" Style="color: red;" runat="server"></asp:HyperLink>
                            </td>
                        </tr>
                        <%--                            <tr>
                                    <th scope="row">6</th>
                                    <td>Gold</td>
                                    <td>Bumbo</td>
                                    <td>$1800</td>
                                </tr>
                                <tr>
                                    <th scope="row">7</th>
                                    <td>Pen</td>
                                    <td>Bilbo</td>
                                    <td>$75</td>
                                </tr>
                                <tr>
                                    <th scope="row">8</th>
                                    <td>Notebook</td>
                                    <td>Frodo</td>
                                    <td>$36</td>
                                </tr>
                                <tr>
                                    <th scope="row">9</th>
                                    <td>Dress</td>
                                    <td>Kimo</td>
                                    <td>$255</td>
                                </tr>
                                <tr>
                                    <th scope="row">10</th>
                                    <td>Paint</td>
                                    <td>Zico</td>
                                    <td>$434</td>
                                </tr>
                                <tr>
                                    <th scope="row">11</th>
                                    <td>Carpet</td>
                                    <td>Jeco</td>
                                    <td>$1236</td>
                                </tr>
                                <tr>
                                    <th scope="row">12</th>
                                    <td>Food</td>
                                    <td>Haso</td>
                                    <td>$422</td>
                                </tr>--%>
                    </tbody>
                </table>



                <table class="table align-middle mb-0 bg-white">
                    <thead class="bg-light">
                        <tr>
                            <th>Name</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th>Position</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                                        alt=""
                                        style="width: 45px; height: 45px"
                                        class="rounded-circle" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">John Doe</p>
                                        <p class="text-muted mb-0">john.doe@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Software engineer</p>
                                <p class="text-muted mb-0">IT department</p>
                            </td>
                            <td>
                                <span class="badge badge-success rounded-pill d-inline">Active</span>
                            </td>
                            <td>Senior</td>
                            <td>
                                <button type="button" class="btn btn-link btn-sm btn-rounded">
                                    Edit
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/6.jpg"
                                        class="rounded-circle"
                                        alt=""
                                        style="width: 45px; height: 45px" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">Alex Ray</p>
                                        <p class="text-muted mb-0">alex.ray@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Consultant</p>
                                <p class="text-muted mb-0">Finance</p>
                            </td>
                            <td>
                                <span class="badge badge-primary rounded-pill d-inline">Onboarding</span>
                            </td>
                            <td>Junior</td>
                            <td>
                                <button
                                    type="button"
                                    class="btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                    Edit
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img
                                        src="https://mdbootstrap.com/img/new/avatars/7.jpg"
                                        class="rounded-circle"
                                        alt=""
                                        style="width: 45px; height: 45px" />
                                    <div class="ms-3">
                                        <p class="fw-bold mb-1">Kate Hunington</p>
                                        <p class="text-muted mb-0">kate.hunington@gmail.com</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p class="fw-normal mb-1">Designer</p>
                                <p class="text-muted mb-0">UI/UX</p>
                            </td>
                            <td>
                                <span class="badge badge-warning rounded-pill d-inline">Awaiting</span>
                            </td>
                            <td>Senior</td>
                            <td>
                                <button
                                    type="button"
                                    class="btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                    Edit
                                </button>
                                <button
                                    type="button"
                                    class="fas fa-times btn btn-link btn-rounded btn-sm fw-bold"
                                    data-mdb-ripple-color="dark">
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [branchId], [branchLocation], [branchAddress] FROM [Branch]"></asp:SqlDataSource>

    </div>

</asp:Content>

