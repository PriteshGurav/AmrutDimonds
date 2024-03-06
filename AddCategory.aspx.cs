using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCategoryRepeter();
    }

    private void BindCategoryRepeter()
    {
        using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
          
            using (SqlCommand cmd1 = new SqlCommand("select * from tblCategory", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RptrCategory.DataSource = dt;
                    RptrCategory.DataBind();
                }
            }
        }
    }

    protected void BtnAddCategory_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblCategory(CatName)Values('" + txtCategory.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('category Added Successfully'); </script>");
            txtCategory.Text = string.Empty;

            con.Close();
            // Massage.Text = "Registration Successfully Done";
            //Massage.ForeColor = System.Drawing.Color.Green;
            txtCategory.Focus();
        }
    }
}