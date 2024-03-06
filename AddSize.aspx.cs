using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddSize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrand();
            BindMainCategory();
            BindGender();
            bindRepeterSize();
        }
    }

    private void bindRepeterSize()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {

            using (SqlCommand cmd1 = new SqlCommand("select  A.*,B.*,C.*,D.*,E.*  from tblSize A inner join tblCategory B on B.CatID=A.CategoryID inner join tblbrand C on C.BrandID=a.BrandID inner join tblSubCategory D on D.subCatID= A.SubCategoryID inner join tblGender E on E.GenderID=A.GenderID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Rptrsize.DataSource = dt;
                    Rptrsize.DataBind();
                }
            }
        }
    }

    private void BindMainCategory()
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
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }


        }
    }

    private void BindBrand()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblbrand", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));
            }


        }
    }

    protected void BtnaddSize_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into  tblSize(SizeName,BrandID,CategoryID,SubCategoryID,GenderID)Values('" + txtSize.Text + "','" + ddlBrand.SelectedItem.Value + "','" + ddlCategory.SelectedItem.Value + "','" + ddlSubCat.SelectedItem.Value + "','" + ddlGender.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Size Added Successfully'); </script>");
            txtSize.Text = string.Empty;

            con.Close();
            ddlBrand.ClearSelection();
            ddlBrand.Items.FindByValue("0").Selected = true;

            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;

            ddlSubCat.ClearSelection();
            ddlSubCat.Items.FindByValue("0").Selected = true;

            ddlGender.ClearSelection();
            ddlGender.Items.FindByValue("0").Selected = true;


        }
        bindRepeterSize();
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID ='" + ddlCategory.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCat.DataSource = dt;
                ddlSubCat.DataTextField = "subCatName";
                ddlSubCat.DataValueField = "subCatID";
                ddlSubCat.DataBind();
                ddlSubCat.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }


    private void BindGender()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblGender with(nolock)", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlGender.DataSource = dt;
                ddlGender.DataTextField = "GenderName";
                ddlGender.DataValueField = "GenderID";
                ddlGender.DataBind();
                ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));
            }


        }
    }

}