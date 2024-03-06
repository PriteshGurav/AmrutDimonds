<%@ Page Title="" Language="C#" MasterPageFile="~/adminmasterpage.master" AutoEventWireup="true" CodeFile="Addgender.aspx.cs" Inherits="Addgender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <h2>Add Gender</h2>
                <hr />
                <div class="form.group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger"  ErrorMessage="Plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
              

              


                <div class="form.group">
                    <br />
                    <br />
                    <br />
                <div class="col-md-2"> </div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddGender" CssClass="btn btn-success" runat="server" Text="Add " OnClick="BtnAddGender_Click"  />
                                
                    </div>
                </div>
                </div>
         <br />
         <br />
           <h1>Gender</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="RptrGender" runat="server">
                <HeaderTemplate>
                    <table class="table">
                    <thead>
                    <tr>
                        <th>Gender ID</th>
                        <th>Gender Name</th>
                        <th>Edit</th>
                    </tr>
                    </thead>

                    <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("GenderID") %></th>
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

