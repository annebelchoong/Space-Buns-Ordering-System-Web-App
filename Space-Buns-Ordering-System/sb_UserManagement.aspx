﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sb_UserManagement.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_UserManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script>
        /*for disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="pcoded-inner-content pt-0">
                <div class="align-align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>

                <div class="main-body">
                    <div class="page-wrapper">
                        <div class="page-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                        </div>
                                        <div class="card-block">
                                            <div class="row">

                                                <div class="col-sm-6 col-md-4 col-lg-4">
                                                    <h4 class="sub-title">Category</h4>
                                                    <div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
