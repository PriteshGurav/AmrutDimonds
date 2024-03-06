<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

   
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
                        <li class="active"><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                      </ul> 
                      
                </div>
                </div>
        </div>

    </div>

        <!---- Signup page---->
        <div class="center-page">
            <label class="col-xs-11">Username :</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" CssClass="form-control" placeholder="Enter Your username"></asp:TextBox>
        </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"  placeholder="Enter Your password" TextMode="Password"></asp:TextBox>
        </div>

            <label class="col-xs-11">Confirm password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtcpass" runat="server" CssClass="form-control"   placeholder="Enter Your caonfirm password" TextMode="Password"></asp:TextBox>
        </div>

            <label class="col-xs-11">Enter yor full name :</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
        </div>

            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter Your Email"></asp:TextBox>
        </div>
            <br />
            <br />
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="txtsignup" class="btn btn-success" runat="server" Text="Sign Up" OnClick="txtsignup_Click" />
                <asp:Label ID="Massage" runat="server" Text="Label"></asp:Label>
        </div>
            </div>

        <!---- Signup page---->

          <!------footer contents start---->
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy; 2022 priteshgurav.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a></p>
            </div>
        </footer>
         <!------footer contents end---->
    </form>
</body>
</html>
