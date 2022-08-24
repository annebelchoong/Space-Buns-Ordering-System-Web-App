<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cusProfileTest.aspx.cs" Inherits="Space_Buns_Ordering_System.cusProfileTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Your Profile</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    </div>
                              <div class="form-group row">
                                <label for="username" class="col-4 col-form-label">Username</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please insert username!" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">First Name</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="lastname" class="col-4 col-form-label">Last Name</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please insert email!" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="website" class="col-4 col-form-label">Phone No</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row">
                                  Address<div class="col-8">
                                  &nbsp;<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="newpass" class="col-4 col-form-label">New Password</label> 
                                <div class="col-8">
                                  &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </div>
                              </div>
                        </div> 

		        </div>

		    </div>
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <asp:Button ID="btnUpdateProfile" runat="server" Text="Update" />
                                </div>
                              </div>
                          
		                </div>
		            </div>
        </div>
    </form>
</body>
</html>
