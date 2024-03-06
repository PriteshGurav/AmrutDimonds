<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <h2>Add Brand</h2>
                <hr />
                <div class="form.group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Brand Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtbrand" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorbrandName" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Brand name" ControlToValidate="txtbrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
              

              

                <div class="form.group">
                    <br />
                    <br />
                    <br />
                <div class="col-md-2"> </div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddBrand" CssClass="btn btn-success" runat="server" Text="Add " OnClick="BtnAddBrand_Click"  />
                                
                    </div>
                </div>
                </div>
        <br />
        <br />
        <h1>Brand</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="RptrBrand" runat="server">
                <HeaderTemplate>
                    <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Edit</th>
                    </tr>
                    </thead>

                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("BrandID") %></th>
                        <td><%#Eval("Name") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                     </table>
                </FooterTemplate>
            </asp:Repeater>
            
                
        </div>

                
        </div>





</asp:Content>

