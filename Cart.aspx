<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="250px" src="Images/payimg.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                          <div class="col">
                              <center>
                                  <h4>Payment</h4>
                              </center>
                              
                      
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">

                     <div class="col-md-6">  
                         <label>Full Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="(Enter Full Name)"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>                   
                     </div>  
                                      
                     
                               
                     <div class="col-md-6">
                         <label>Date Of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="(Enter Valid Date)"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox><br />
                        </div> 
                     </div>

                  </div>

                   <div class="row">

                     <div class="col-md-6">  
                         <label>Contact No<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="(Enter Valid Contact)" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                         </label>&nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number" MaxLength="10"></asp:TextBox>
                        </div>                   
                     </div>  
                                      
                     <div class="col-md-6">
                         <label>Email ID<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="(Enter Valid Email id)" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         </label>&nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox><br />
                        </div> 
                     </div>

                  </div>

                    <div class="row">

                     <div class="col-md-4">  
                         <label>Pay Method<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="(Enter Pay Method)"></asp:RequiredFieldValidator>
                         </label>
&nbsp;<div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Cash" Value="cash" />
                              <asp:ListItem Text="UPI (Currently Unavailable)" Value="upi" />
                           </asp:DropDownList>
                        </div>                   
                     </div>  
                                      
                     <div class="col-md-4">
                         <label>City<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="(Enter City)"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox><br />
                        </div> 
                     </div>

                    <div class="col-md-4">
                         <label>Pincode<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="(Enter Valid Pincode)" ValidationExpression="^([0-9]){6}$"></asp:RegularExpressionValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number" MaxLength="6"></asp:TextBox><br />
                        </div> 
                     </div>

                  </div>

                   <div class="row">

                     <div class="col">  
                         <label>Full Address<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="(Enter Full Address)"></asp:RequiredFieldValidator>
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>                   
                     </div>                                        

                  </div>

                  <div class="row">
                     <div class="col">
                        
                                            
                         <div class="d-grid gap-2">
                            <asp:Button class="btn btn-info btn-lg" ID="Button3" runat="server" Text="Pay" OnClick="Button3_Click"/>
                        </div>
                       
                     </div>
                  </div>
               </div>
            </div>
             <a href="userhome.aspx"><< Back to Home</a><br/><br>
         </div>
       
      </div>
   </div>

</asp:Content>

