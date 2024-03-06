<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <h2>Add Size</h2>
                <hr />

                <div class="form.group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Size"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorsize" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <br />
                <br />
                <br />


                <div class="form.group">
                    <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Brand"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass="text-danger"  ErrorMessage="Plz select the Brand " ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <br />
                <br />
                <br />

                <div class="form.group">
                    <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCat" runat="server" CssClass="text-danger"  ErrorMessage="Plz select the Category " ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <br />
                <br />
                <br />

                <div class="form.group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Sub-Category"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlSubCat" runat="server" CssClass="text-danger"  ErrorMessage="Plz Select the Sub-Category" ControlToValidate="ddlSubCat" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <br />
                <br />
                <br />

                <div class="form.group">
                    <asp:Label ID="Label5" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlGender" runat="server" CssClass="text-danger"  ErrorMessage="Plz Select the Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <br />
                <br />
                <br />

                

                
                
              

              

                <div class="form.group">
             
                   
                <div class="col-md-2"> </div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnaddSize" CssClass="btn btn-success" runat="server" Text="Add Size " OnClick="BtnaddSize_Click"  />
                                
                    </div>
                </div>
                </div>
        <br />
        <br />
        <h1>Size</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="Rptrsize" runat="server">
                <HeaderTemplate>
                    <table class="table">
                    <thead>
                    <tr>
                        <th>Size ID</th>
                        <th>Size</th>
                        <th>Brand</th>
                        <th>Category</th>
                        <th>Sub-Category</th>
                        <th>Gender</th>
                        <th>Edit</th>
                    </tr>
                    </thead>

                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("SizeID") %></th>
                        <td><%#Eval("SizeName") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%#Eval("CatName") %></td>
                         <td><%#Eval("subCatName") %></td>
                         <td><%#Eval("GenderName") %></td>
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

