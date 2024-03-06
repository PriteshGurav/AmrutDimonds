using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrandRepeter();
        }
    }

    private void BindBrandRepeter()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
          
            using (SqlCommand cmd1 = new SqlCommand("select * from tblbrand", con))
            {
                using(SqlDataAdapter sda =new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RptrBrand.DataSource = dt;
                    RptrBrand.DataBind();
                }
            }
        }
    }

    protected void BtnAddBrand_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblbrand(Name)Values('" + txtbrand.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Brand Added Successfully'); </script>");
            txtbrand.Text= string.Empty;
           
            con.Close();
            // Massage.Text = "Registration Successfully Done";
            //Massage.ForeColor = System.Drawing.Color.Green;
            txtbrand.Focus();
        }
    }
}