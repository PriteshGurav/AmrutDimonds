using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Request.Cookies["uname"]!=null && Request.Cookies["pwd"] != null)
            {
                txtUsername.Text= Request.Cookies["uname"].Value;
                txtpass.Text= Request.Cookies["pwd"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbluser where Username=@Username and password=@pwd", con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count !=0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["uname"].Value = txtUsername.Text;
                    Response.Cookies["pwd"].Value = txtpass.Text;

                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(10);

                }
                else
                {
                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);
                }

                string utype;
                utype = dt.Rows[0][5].ToString().Trim();
                if (utype == "User")
                {
                    Session["username"] = txtUsername.Text;
                    Response.Redirect("~/userhome.aspx");
                }
                if (utype == "Admin")
                {
                    Session["username"] = txtUsername.Text;
                    Response.Redirect("~/adminhomepage.aspx");
                }

            }
            else
            {
                lalError.Text = "Invalid Username And Password";
            }
            
            clr();
            con.Close();
            //Massage.Text = "Registration Successfully Done";
            //Massage.ForeColor = System.Drawing.Color.Green;

        }
    }

    private void clr()
    {
        txtpass.Text = string.Empty;
        txtUsername.Text = string.Empty;
        txtUsername.Focus();
    }
}