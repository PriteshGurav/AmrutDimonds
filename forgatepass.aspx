<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgatepass.aspx.cs" Inherits="forgatepass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget password</title>
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



        <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <h2>Recovery Password</h2>
                <hr />
                <h3>Plase enter your email address, we will send you the recovery link for password</h3>
                <div class="form-group">
                    <asp:Label ID="LalEmail" CssClass="col-md-2 control-label" runat="server" Text="Your Email Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TxtEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="TxtEmailId" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                     <div class="col-md-6">
                         <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                         <asp:Label ID="lalResetPassmsg" CssClass="text-success" runat="server" ></asp:Label>
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
