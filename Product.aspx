<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    

    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrproduct" runat="server">
        <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%#Eval("PID") %>" style="text-decoration:none">
            <div class="thumbnail">
                <img src="icons/product/<%#Eval("PID") %>/<%#Eval("Imagename") %><%#Eval("Extention") %>"  alt=""/>
                <div class="caption">
                    <div class="probrand"><%#Eval("BrandName") %></div>
                    <div class="proName"><%#Eval("PName") %></div>
                    <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span><%#Eval("PSalePrice") %></div>
                    <div>"<span class="proPriceDiscount"> <%#Eval("DiscAmount") %> Off</span></div>
                </div>
            </div>
        </div>
            </a>
      </ItemTemplate>
      </asp:Repeater>
    </div>
</asp:Content>

