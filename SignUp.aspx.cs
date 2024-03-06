using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsignup_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tbluser(Username,password,Email,Name,Usertype)Values('" + txtUname.Text + "','" + txtpass.Text + "','" + txtemail.Text + "','" + txtname.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Registration Successfully Done'); </script>");
                clr();
                con.Close();
                Massage.Text = "Registration Successfully Done";
                Massage.ForeColor = System.Drawing.Color.Green;
                
            }
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration Unsuccessfully Done'); </script>");
            Massage.Text = "Registration unsuccessfully Done";
            Massage.ForeColor = System.Drawing.Color.Red;
        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script> alert('Username not valid'); </script>");
            txtUname.Focus();
            return false;
        }
        else if(txtpass.Text != txtcpass.Text)
        {
            Response.Write("<script> alert('password not match'); </script>");
            txtcpass.Focus();
            return false;
        }
       else if (txtemail.Text == "")
        {
            Response.Write("<script> alert('Email not valid'); </script>");
            txtemail.Focus();
            return false;
        }
        else if (txtname.Text == "")
        {
            Response.Write("<script> alert('Name not valid'); </script>");
            txtname.Focus();
            return false;
        }
        return true;
    }

    private void clr()
    {
        txtname.Text = string.Empty;
       txtpass.Text = string.Empty;
        txtcpass.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtemail.Text = string.Empty;
    }
}