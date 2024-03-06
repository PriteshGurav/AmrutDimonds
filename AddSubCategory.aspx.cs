using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class AddSubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMainCat();
            BindsubCategoryRepeter();
        }
    }

    private void BindsubCategoryRepeter()
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {

            using (SqlCommand cmd1 = new SqlCommand("select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CatID =a.MainCatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RptrSubCat.DataSource = dt;
                    RptrSubCat.DataBind();
                }
            }
        }
    }

    protected void BtnAddSubCategory_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblSubCategory(subCatName,MainCatID)Values('" + txtsubCategory.Text + "','"+ddlMainCatID.SelectedItem.Value+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Sub-Category Added Successfully'); </script>");
            txtsubCategory.Text = string.Empty;

            con.Close();
            ddlMainCatID.ClearSelection();
            ddlMainCatID.Items.FindByValue("0").Selected = true;
            
        }
        BindsubCategoryRepeter();
    }

     private void BindMainCat()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlMainCatID.DataSource = dt;
                ddlMainCatID.DataTextField = "CatName";
                ddlMainCatID.DataValueField = "CatID";
                ddlMainCatID.DataBind();
                ddlMainCatID.Items.Insert(0, new ListItem("-Select-", "0"));
            }
            

        }
    }
}