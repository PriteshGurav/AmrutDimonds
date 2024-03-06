using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addgender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindgenderRepeter();
    }

    private void BindgenderRepeter()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {

            using (SqlCommand cmd1 = new SqlCommand("select * from tblGender", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RptrGender.DataSource = dt;
                   RptrGender.DataBind();
                }
            }
        }
    }

    protected void BtnAddGender_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblGender(GenderName)Values('" + txtGender.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Gender Added Successfully'); </script>");
            txtGender.Text = string.Empty;

            con.Close();
            txtGender.Focus();

        }
        BindgenderRepeter();
    }
}