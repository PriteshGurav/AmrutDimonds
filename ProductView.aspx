<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />

    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                <!---- for proImage Slider--->
                <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
             <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:Repeater ID="rptrimg" runat="server">
                    <ItemTemplate>
                 <div class="item <%# GetActionImgClass(Container.ItemIndex) %>" onerror="this.src='icons/product/No_Image_Available.jpg'">
                    <img src="icons/product/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="">
               
         </div>
            </ItemTemplate>
       </asp:Repeater>
    </div>

      <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
         <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>


                <!---- for proImage Slider end --->
               <!-- <img src="icons/rings/product/necales 1.jpg" />-->

            </div>
        </div>
        <div class="col-md-5">
            <asp:Repeater ID="rpteproductdetails" runat="server" OnItemDataBound="rpteproductdetails_ItemDataBound">
                <ItemTemplate>
            <div class="divDet1">
                 <h1 class="proNmaeView"><%#Eval ("PName") %></h1>
                 <span class="proOgPrice">RS. <%#Eval("PPrice") %></span>
                <span class="proPriceDiscount">RS. <%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSalePrice"))) %> off</span>
                <p class="proOgPriceView">RS. <%#Eval("PSalePrice") %></p>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
   
      
        <div >
            <h5 class="h5size">Weigth</h5>
            <div >
                <asp:RadioButtonList ID="rblsize" runat="server" RepeatDirection="Horizontal" style="padding:15px 10px">
                    <asp:ListItem Value="0.25 gm" Text="0.25 gm"></asp:ListItem>
                    <asp:ListItem Value="25 gm" Text="25 gm"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="divDet1">
            <asp:Button ID="BtnAddtoCart" CssClass="mainButton" runat="server" Text="Buy Now" OnClick="BtnAddtoCart_Click1" />    
             <asp:Label ID="lalError" CssClass="text-danger" runat="server" ></asp:Label>
        
        
        </div>
        <div >
            <h5 class="h5size"> Description</h5>  
            <p><%#Eval("PDiscription") %></p>

            <h5 class="h5size"> Product details</h5>  
            <p><%#Eval("PProductDetails") %></p>

            <h5 class="h5size">material & care</h5>  
            <p><%#Eval("PMaterialCare") %></p>

            <div >
                <p><%#((int)Eval("FreeDelivery")==1)? "Free Delivery":"" %></p>
                <p><%#((int)Eval("30DayRet")==1)? "30 Days Return":"" %></p>
                <p><%#((int)Eval("COD")==1)? "Cash On delivery":"" %></p>
            </div>

            <asp:HiddenField ID="HfCatID" runat="server" Value='<%#Eval("PCategoryID") %>' />
             <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%#Eval("PSubCatID") %>' />
             <asp:HiddenField ID="hfGenderID" runat="server" Value='<%#Eval("PGender") %>' />
             <asp:HiddenField ID="hfBrandID" runat="server" Value='<%#Eval("PBrandID") %>' />



            </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>


</asp:Content>

