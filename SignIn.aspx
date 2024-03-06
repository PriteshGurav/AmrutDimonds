<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIN</title>
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
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li class="active"><a href="SignIn.aspx" >SignIn</a></li>
                      </ul> 
                      
                </div>


            </div>
        </div>
        </div>
            </div>
        <!----SignIn form---->
        <hr />
        <hr />
        <div class="container">
            <div class="form-horizontal">
                <h2>Login Form</h2>
                <hr />
                <div class="form.group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form.group">
                <br />
                    <br />
                    <br />
                    
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter plz enter valid password" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form.group">
                    <br />
                    <br />
                    <br />
                  
                    <div class="col-md-2"> </div>
                             <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                              <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Remembar me"></asp:Label>
                    </div>
                </div>
                

                <div class="form.group">
                    <br />
                    <br />
                <div class="col-md-2"> </div>
                             <div class="col-md-6">
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Login" OnClick="Button1_Click" />
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                </div>

            <!-----forgot password----->
             <div class="form.group">
                 <br />
                 <br />

                <div class="col-md-2"> </div>
                           <div class="col-md-6">
                               <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgatepass.aspx">Forgot password</asp:HyperLink>
                    </div>
                </div>
                 </div>
            <!-----forgot password end---->
                     <div class="form.group">
                    <div class="col-md-2"> </div>
                                 <div class="col-md-6">
                                     <asp:Label ID="lalError" CssClass="text-danger" runat="server" ></asp:Label>
                        </div>
                    </div>


            
    
         <!----SignIn form end---->


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
    </form>
</body>
</html>
