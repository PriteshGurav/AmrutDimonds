<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <h2>Add Sub-Category</h2>
                <hr />

                <div class="form.group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Main Category ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Main Category ID " ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <br />
                <br />
                <br />

                <div class="form.group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Sub-Category Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtsubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorsubCategoryName" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Sub-Category name" ControlToValidate="txtsubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
              

              

                <div class="form.group">
                    <br />
                    <br />
                    <br />
                <div class="col-md-2"> </div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add Sub-Category " OnClick="BtnAddSubCategory_Click"  />
                                
                    </div>
                </div>
                </div>
         <br />
         <br />
         <h1>Sub-Category</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="RptrSubCat" runat="server">
                <HeaderTemplate>
                    <table class="table">
                    <thead>
                    <tr>
                        <th>Sub-Category ID</th>
                        <th>Sub-Category</th>
                        <th>Main-Category </th>
                        <th>Edit</th>
                    </tr>
                    </thead>

                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("subCatID") %></th>
                        <td><%#Eval("subCatName") %></td>
                        <td><%#Eval("CatName") %></td>
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

