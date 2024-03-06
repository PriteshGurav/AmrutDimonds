<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amrut Diamond</title>

    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous">

    </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function myfunction(){
            $("#btnCart").click(function myfunction(){
                window.location.href = "~/Cart.aspx";
            });
        });

    </script>

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
                        <li class="active"><a href="Default.aspx">Home</a></li>
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

                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                Cart<span class="badge" id="pCount" runat="server"></span></button>
                        </li>
                        <li id="btnsignup" runat="server"><a href="SignUp.aspx">SignUp</a></li>
                        <li id="btnsigin" runat="server"><a href="SignIn.aspx">SignIn</a></li>
                        <li>
                               <asp:Button ID="btnlogout" CssClass="btn btn-default navbar.btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click"/>
                        </li>
                      </ul> 
                      
                </div>


            </div>
        </div>
        
        <!-----image slide------>
        <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="icons/slider/bracelets_main_banners.jpg" alt="Los Angeles" style="width:100%;height:251%">
          
      </div>

      <div class="item">
        <img src="icons/slider/earring_main_banners.jpg" alt="Chicago" style="width:100%;height:251%">
      </div>
    
      <div class="item">
        <img src="icons/slider/pendants_main_banners.jpg" alt="New york" style="width:100%;height:251%">
      </div>

        <div class="item">
        <img src="icons/slider/rings_main_banners.jpg" alt="New york" style="width:100%;height:251%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

        <!-----image slide END------>


    </div>
        <!------Middle contents start---->
        <hr />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/ring%201.jpg" alt="thumb" width="150" height="140"/>
                    <h2>Ring</h2>
                    <p>3 Carat is equal to 600 milligrams, or 0.6 grams. From another perspective, a 3 Carat Diamond weighs approximately the same as a raisin. Diamonds are all priced per carat. As an example, a 2.50 carat diamond may have a price of $12,280 per carat.</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>

                 <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/bangales 1.jpg" alt="thumb" width="150" height="140"/>
                    <h2>bangales</h2>
                    <p>The diamonds are prong-set in this lovely bangle, and this design is a classic that’s sure to please! This 3.00 ct round diamond bangle bracelet will never leave your lady frustrated. Boasting of color ranking of G and clarity of Si-1. Polished to a brilliant shine.</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>

                 <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/bracelate 1.jpg" alt="thumb" width="150" height="140"/>
                    <h2>bracelate</h2>
                    <p>Make her feel special with this gorgeous diamond bracelet. Studded with prong set white diamonds of 3 carat weight, this tennis bracelet is made in 14K gold. A timeless design as such is sure to delight her.</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>
              </div>
            </div>
    
         <div class="container center">
            <div class="row">
                 <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/earring 1.jpg" alt="thumb"width="140" height="140" />
                    <h2>earring</h2>
                    <p>3 Carat Round Diamond Stud Earrings G-H Color VS1-VS2 Clarity</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>

                  <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/nosepin 1.jpg" alt="thumb" width="150" height="140"/>
                    <h2>nosepin</h2>
                    <p>Get ready to be mesmerized with this stunning diamond Nose Pin. Made from 18K Gold this nose stud features prong set white diamond of 0.03 carat weight. Durable and lightweight this nosepin is a must-have for every women.</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>

                <div class="col-lg-4">
                    <img class="img-circle" src="icons/rings/pandate 1.jpg" alt="thumb" width="150" height="140"/>
                    <h2>pandate</h2>
                    <p>3 Carat is equal to 600 milligrams, or 0.6 grams. From another perspective, a 3 Carat Diamond weighs approximately the same as a raisin. Diamonds are all priced per carat. As an example, a 2.50 carat diamond may have a price of $12,280 per carat.</p>
                    <p><a class="btn btn-default" role="button" href="#">view more &raquo;</a></p>
                </div>
               
            </div>
        </div>
         <!------Middle contents ends---->


        <!------footer contents start---->
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
