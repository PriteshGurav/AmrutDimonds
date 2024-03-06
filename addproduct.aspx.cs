using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class addproduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //when page load frist time
            BindBrand();
            BindCategory();
            ddlSubCategory.Enabled = false;
            BindGender();
            ddlGender.Enabled = false;
        }
    }

    private void BindBrand()
    { 
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblbrand", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlbrand.DataSource = dt;
                ddlbrand.DataTextField = "Name";
                ddlbrand.DataValueField = "BrandID";
                ddlbrand.DataBind();
                ddlbrand.Items.Insert(0, new ListItem("-Select-", "0"));
            }


        }
    }

    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
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
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName",TxtProductname.Text);
            cmd.Parameters.AddWithValue("@PPrice",txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSalePrice",txtsellPrice.Text);
            cmd.Parameters.AddWithValue("@PBrandID",ddlbrand.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID",ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID",ddlSubCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PGender",ddlGender.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDiscription",txtDicription.Text);
            cmd.Parameters.AddWithValue("@PProductDetails",txtPDetail.Text);
            cmd.Parameters.AddWithValue("@PMaterialCare",txtmatcare.Text);
            if (ChFD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery",1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
            }
            if (Ch30return.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
            }
            if (ChCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }
            con.Open();
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

            //Insert Quanitiy
            for(int i = 0; i <cblSize.Items.Count; i++)
            {
                if (cblSize.Items[i].Selected == true)
                {
                    Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
                    int Quantity = Convert.ToInt32(txtQuantity.Text);

                    SqlCommand cmd2 = new SqlCommand("Insert into tblProductSizeQuantity Values('" + PID + "','" + SizeID + "','" + Quantity + "')",con);
                    cmd2.ExecuteNonQuery();
                }

            }

            //insert img
            //1h fileuplode
            if (FuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/icons/product/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(FuImg01.PostedFile.FileName);
                FuImg01.SaveAs(SavePath + "\\" + TxtProductname.Text.ToString().Trim() + "01" + Extension);


                SqlCommand cmd3 = new SqlCommand("insert into tblProductImges values('" + PID + "','" + TxtProductname.Text.ToString().Trim() + "01" + "','" + Extension + "')", con);
                cmd3.ExecuteNonQuery();
            }
            //2h fileuplode
            if (FuImg02.HasFile)
            {
                string SavePath = Server.MapPath("~/icons/product/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(FuImg02.PostedFile.FileName);
                FuImg02.SaveAs(SavePath + "\\" + TxtProductname.Text.ToString().Trim() + "02" + Extension);


                SqlCommand cmd4 = new SqlCommand("insert into tblProductImges values('" + PID + "','" + TxtProductname.Text.ToString().Trim() + "02" + "','" + Extension + "')", con);
                cmd4.ExecuteNonQuery();
            }
            //3h fileuplode
            if (FuImg03.HasFile)
            {
                string SavePath = Server.MapPath("~/icons/product/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(FuImg03.PostedFile.FileName);
                FuImg01.SaveAs(SavePath + "\\" + TxtProductname.Text.ToString().Trim() + "03" + Extension);


                SqlCommand cmd5 = new SqlCommand("insert into tblProductImges values('" + PID + "','" + TxtProductname.Text.ToString().Trim() + "03" + "','" + Extension + "')", con);
                cmd5.ExecuteNonQuery();
            }
            //4h fileuplode
            if (FuImg04.HasFile)
            {
                string SavePath = Server.MapPath("~/icons/product/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(FuImg04.PostedFile.FileName);
                FuImg01.SaveAs(SavePath + "\\" + TxtProductname.Text.ToString().Trim() + "04" + Extension);


                SqlCommand cmd6 = new SqlCommand("insert into tblProductImges values('" + PID + "','" + TxtProductname.Text.ToString().Trim() + "04" + "','" + Extension + "')", con);
                cmd6.ExecuteNonQuery();
            }
            //5h fileuplode
            if (FuImg05.HasFile)
            {
                string SavePath = Server.MapPath("~/icons/product/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extension = Path.GetExtension(FuImg05.PostedFile.FileName);
                FuImg01.SaveAs(SavePath + "\\" + TxtProductname.Text.ToString().Trim() + "05" + Extension);


                SqlCommand cmd7 = new SqlCommand("insert into tblProductImges values('" + PID + "','" + TxtProductname.Text.ToString().Trim() + "05" + "','" + Extension + "')", con);
                cmd7.ExecuteNonQuery();
            }

        }


        ddlCategory.ClearSelection();
        ddlCategory.Items.FindByValue("0").Selected = true;

        ddlbrand.ClearSelection();
        ddlbrand.Items.FindByValue("0").Selected = true;

        ddlGender.ClearSelection();
        ddlGender.Items.FindByValue("0").Selected = true;
        TxtProductname.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtsellPrice.Text = string.Empty;
        txtQuantity.Text = string.Empty;
        txtDicription.Text = string.Empty;
        txtPDetail.Text = string.Empty;
        txtmatcare.Text = string.Empty;
        


    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        ddlSubCategory.Enabled = true;
       
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID ='" + ddlCategory.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "subCatName";
                ddlSubCategory.DataValueField = "subCatID";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
    private void BindGender()
    {
        using (SqlConnection con = new SqlConnection(CS))
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

    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
       
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSize  where BrandID ='" + ddlbrand.SelectedItem.Value + "' and CategoryID ='" + ddlCategory.SelectedItem.Value + "' and subCategoryID ='" + ddlSubCategory.SelectedItem.Value + "' and GenderID ='" + ddlGender.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                cblSize.DataSource = dt;
                cblSize.DataTextField = "SizeName";
                cblSize.DataValueField = "SizeID";
                cblSize.DataBind();
                
            }
        }
    }

    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSubCategory.SelectedIndex!=0)
        { ddlGender.Enabled = true; }
        else
        {
            ddlGender.Enabled = false;
        }
    }
}