<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <script type="text/javascript">
        $(function () {
            // Button 1 click
            $('[id*=Button1]').on('click', function () {
                var id = $(this).closest('tr').find($('[id*=lblName]')).text();
                $.ajax({
                    type: "POST",
                    url: "CS.aspx/GetNameUserName",
                    data: '{name:"' + id + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var table = $("#modalbody").find('table').eq(0).clone(true);
                        var customers = response.d;
                        $("#modalbody").find('table').eq(0).remove();
                        $(customers).each(function () {
                            $(".name", table).html(this.ContactName);
                            $(".companyname", table).html(this.CompanyName);
                            $("#modalbody").append(table);
                            table = $("#modalbody").find('table').eq(0).clone(true);
                        });
                        $('#myModal').modal('show');
                        $('#myModal1').modal('hide');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (response) {
                        alert(response.d);
                    }
                });
                return false;
            });
 
            // Button 2 click
            $('[id*=Button2]').on('click', function () {
                var id = $(this).closest('tr').find($('[id*=lblName]')).text();
                $.ajax({
                    type: "POST",
                    url: "CS.aspx/GetOtherDetails",
                    data: '{name:"' + id + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var table = $("#modal1body").find('table').eq(0).clone(true);
                        var customers = response.d;
                        $("#modal1body").find('table').eq(0).remove();
                        $(customers).each(function () {
                            $(".city", table).html(this.City);
                            $(".postal", table).html(this.PostalCode);
                            $(".country", table).html(this.Country);
                            $(".phone", table).html(this.Phone);
                            $(".fax", table).html(this.Fax);
                            $("#modal1body").append(table);
                            table = $("#modal1body").find('table').eq(0).clone(true);
                        });
                        $('#myModal').modal('hide');
                        $('#myModal1').modal('show');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (response) {
                        alert(response.d);
                    }
                });
                return false;
            });
        });       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DataList ID="dlstProducts" runat="server" RepeatColumns="3" CellSpacing="10"
        RepeatDirection="Horizontal" RepeatLayout="Table">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <b>ID : </b>
                        <asp:Label ID="ProdID" runat="server" Text='<%#Eval("Id") %>' /><br />
                        <b>Name : </b>
                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Popup1" class="btn btn-primary btn-sm" />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Popup2" class="btn btn-danger btn-sm" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container">
        <div class="row">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <%--Modal 1 Start--%>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">
                                        Name UserName Details</h4>
                                </div>
                                <div id="modalbody" align="center" class="modal-body">
                                    <table class="tblCustomer" cellpadding="2" cellspacing="0" border="1">
                                        <tr>
                                            <td>
                                                <b>Name: </b><span class="name">
                                                    <%# Eval("ContactName") %></span>
                                                <br />
                                                <b>Company: </b><span class="companyname">
                                                    <%# Eval("CompanyName")%></span><br />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--Modal 1 End--%>
                    <%--Modal 2 Start--%>
                    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="H1">
                                        Other Details</h4>
                                </div>
                                <div id="modal1body" align="center" class="modal-body">
                                    <table class="tblCustomer" cellpadding="2" cellspacing="0" border="1">
                                        <tr>
                                            <td>
                                                <b>City: </b><span class="city">
                                                    <%# Eval("City") %></span><br />
                                                <b>Postal Code: </b><span class="postal">
                                                    <%# Eval("PostalCode") %></span><br />
                                                <b>Country: </b><span class="country">
                                                    <%# Eval("Country")%></span><br />
                                                <b>Phone: </b><span class="phone">
                                                    <%# Eval("Phone")%></span><br />
                                                <b>Fax: </b><span class="fax">
                                                    <%# Eval("Fax")%></span><br />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--Modal 2 End--%>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    </form>
</body>
</html>
