using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class RecoverPassword : System.Web.UI.Page
{
    string GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)

    {
       
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            GUIDvalue = Request.QueryString["id"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("slect * from ForgotPass where Id=@Id", con);
                cmd.Parameters.AddWithValue("@ID", GUIDvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                
                sda.Fill(dt);
                if (dt.Rows.Count!=0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {

                    Lblmessage.Text = "Your Password Reset Link is Expired or Ivalid.....try again!!";
                    Lblmessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        if (!IsPostBack)
        {
            if (dt.Rows.Count !=0)
            {
                TxtConfirmPass.Visible = true;
                TxtNewPass.Visible = true;
                LblNewPassword.Visible = true;
                Label1.Visible = true;
                btnResetPass.Visible = true;
            }
            else
            {
                Lblmessage.Text = "Your Password Reset Link is Expired or Ivalid.....try again!!";
                Lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        if (TxtNewPass.Text!="" && TxtConfirmPass.Text!="" && TxtNewPass.Text== TxtConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Upadate tbluser set Password=@p where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@p", TxtNewPass.Text);
                cmd.Parameters.AddWithValue("@Uid", Uid);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid ='" + Uid + "'", con);
                cmd2.ExecuteNonQuery();

                Response.Write("<script> alert('Password reset successfully done'); </script>");
                Response.Redirect("~/SignIn.axps");

            }
        }
    }
}