<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password </title>

     <meta charset="utf-8" />
    <meta name="viewport" content="width-device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="form-select">
        <div class="nevbar navbar-default navbar-fixed-top" role="navigation">
            <div class ="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>


                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span><img src="icons/amrut diamond 3.jpeg.png" alt="Amrut Diamond" height="30" />Amrut Dimond</span></a>
                </div>
                <div class="navbar-collapse collapse"> 
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="Default.aspx">Home</a></li>
                         <li><a href="#">About</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Blog-</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li class="dropdown-header">Category</li>
                                <li role="separator" class="divider"></li>
                                <li> <a href="#">All jewellary</a></li>
                                <li> <a href="#">Nosepins</a></li>
                                <li><a href="#">Earrings</a></li>
                                <li><a href="#">Pendants</a></li>
                                <li><a href="#">Rings</a></li>
                                <li><a href="#">Bracelets</a></li>
                                <li><a href="#">Bangles</a></li>
                            </ul>
                        </li>
                       
                        <li ><a href="SignIn.aspx" >SignIn</a></li>
                      </ul> 
                      
                </div>


            </div>
        </div>



        </div>

    </div>


        <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <h2>Reset Password</h2>
                <hr />
                <h3></h3>

                <div class="form-group">
                    <asp:Label ID="Lblmessage" CssClass="col-md-2 control-label" runat="server" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>


                <div class="form-group">
                    <asp:Label ID="LblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="Enter Your New Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TxtNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="TxtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                </div>

                 <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TxtConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your confirm New Password" ControlToValidate="TxtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm Password Not match try agin...!" ControlToCompare="TxtNewPass" ControlToValidate="TxtConfirmPass" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-2"></div>
                     <div class="col-md-6">
                         <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />
                        
                    </div>
                </div>

            </div>
        </div>



    </form>

     <!------footer contents start---->
        <hr />
        <hr />

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy; 2022 priteshgurav.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a></p>
            </div>
        </footer>
         <!------footer contents end---->

</body>
</html>
