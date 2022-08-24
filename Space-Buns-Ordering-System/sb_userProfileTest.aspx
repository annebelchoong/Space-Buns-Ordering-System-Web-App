<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_userProfileTest.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_userProfile" %>

<%@ Import Namespace="Space_Buns_Ordering_System" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/sb_userProfile.css" rel="stylesheet" />
    <script src="Javascript/sb_userProfile.js"></script>
    </head>
<body>
<%--    <%
        string imageUrl = Session["imageUrl"].ToString();
    %>--%>
    <form id="form1" runat="server">
        <div class="container">
            <div class="heading_container">
                <h2>User Information</h2>
            </div>
        </div>
        
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                                <div class="image-container">
                                    <%--<img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" 
                                        style="width:150px; height:150px;" class="img-thumnail"/>--%>
                                    <div class="middle pt-2">
                                        <a href="sb_registerTest.aspx?id=<%Response.Write(Session["userId"]);
                                            %>" class="btn btn-warning">
                                            <i class="fa fa-pencil"></i>Edit Deatils
                                        </a>
                                    </div>
                                </div>
                                <!--User Details-->
                                <div class="userData ml-3">
                                    <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold">
                                        <a href="javascript:void(0);"><%Response.Write(Session["name"]); %></a>
                                    </h2>
                                    <h6 class="d-block">
                                        <a href="javascript:void(0)">
                                            <asp:Label ID="lblUsername" runat="server" ToolTip="Unique Username">
                                                <%Response.Write(Session["username"]); %>
                                            </asp:Label>
                                        </a>
                                    </h6>
                                    <h6 class="d-block">
                                        <a href="javascript:void(0)">
                                            <asp:Label ID="lblEmail" runat="server" ToolTip="User Email">
                                                <%Response.Write(Session["email"]); %>
                                            </asp:Label>
                                        </a>
                                    </h6>
                                    <h6 class="d-block">
                                        <a href="javascript:void(0)">
                                            <asp:Label ID="lblCreatedDate" runat="server" ToolTip="Account Creates On">
                                                <%Response.Write(Session["createdDate"]); %>
                                            </asp:Label>
                                        </a>
                                    </h6>
                                </div>

                            </div> 
                        </div>
                        <!--Selection-->
                        <div class="row">
                            <div class="col-12">
                                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" 
                                            aria-controls="basicInfo" aria-selected="true">
                                            <i class="fa fa-id-badge mr-2"></i>Basic Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-info" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" 
                                            aria-controls="connectedServices" aria-selected="false">
                                            <i class="fa fa-id-clock mr-2"></i>Purchased History</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                         <div class="tab-content ml-1" id="myTabContent">
                             <%--Basic User Info Start--%>
                              <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                  <asp:Repeater ID="rUserProfile" runat="server">
                                      <ItemTemplate>

                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Full Name</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               <%-- <%@ Eval("Name") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->
                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Userame</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                              <%--  <%@ Eval("Userame") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->
                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Phone No</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               <%-- <%@ Eval("PhoneNo") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->
                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Email</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               <%-- <%@ Eval("Email") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->
                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Post Code</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                              <%--  <%@ Eval("PostCode") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->
                                          <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Address</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                               <%-- <%@ Eval("Address") %>--%>
                                            </div>
                                        </div>
                                        <hr /> <!--1 horizontal row-->

                                      </ItemTemplate>
                                  </asp:Repeater>
                              </div>
                             <%--Basic User Info End--%>

                             <%--Order History Start--%>
                             <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                 <h3>Order History</h3>
                             </div>
                             <%--Order History End--%>
                         </div>

                    </div>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
