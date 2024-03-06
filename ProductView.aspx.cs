using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ProductView : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductimg();
                BindProductdetails();
            }
        }
        else
        {
            Response.Redirect("~/Product.aspx");
        }
    }

    private void BindProductdetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {

            using (SqlCommand cmd1 = new SqlCommand("select * from tblProduct where PID='" + PID + "'", con))
            {
                cmd1.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rpteproductdetails.DataSource = dt;
                    rpteproductdetails.DataBind();
                }
            }
        }
    }

    private void BindProductimg()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {

            using (SqlCommand cmd1 = new SqlCommand("select * from tblProductImges where PID='" + PID + "'", con))
            {
                cmd1.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrimg.DataSource = dt;
                    rptrimg.DataBind();
                }
            }
        }
    }
    protected string GetActionImgClass(int Itemindex)
    {
        if (Itemindex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }

    protected void rpteproductdetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
            string CatID = (e.Item.FindControl("HfCatID") as HiddenField).Value;
            string SubCatID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
            string GenderID = (e.Item.FindControl("hfGenderID") as HiddenField).Value;

            RadioButtonList rblSize = e.Item.FindControl("rblsize") as RadioButtonList;

            using (SqlConnection con = new SqlConnection(CS))
            {

                using (SqlCommand cmd1 = new SqlCommand("select * from tblSize where BrandID='" + BrandID + "'and CategoryID='" + CatID + "'and SubCategoryID='" + SubCatID + "' and GenderID='" + GenderID + "'", con))
                {
                    cmd1.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rblSize.DataSource = dt;
                        rblSize.DataTextField = "sizename";
                        rblSize.DataValueField = "sizeid";
                        rblSize.DataBind();
                    }
                }
            }


        }
    }

    protected void BtnAddtoCart_Click(object sender, EventArgs e)
    {
        String SelectedSize = string.Empty;
        foreach (RepeaterItem item in rpteproductdetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("rblsize") as RadioButtonList;
                SelectedSize = rbList.SelectedValue;
                var lblError = item.FindControl("lalError") as Label;
                lblError.Text = "";
            }
        }
        if (SelectedSize != "")
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            if (Request.Cookies["CartPID"]!=null)
            {
                string CookiePID = Request.Cookies["CartID"].Value.Split('=')[-1]    ;
                CookiePID = CookiePID + "," + PID + "-" + SelectedSize;

                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PID.ToString();
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);

            }
            else
            {

                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/ProductView.aspx?PID="+PID);
        }
        else
        {
            foreach (RepeaterItem item in rpteproductdetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lalError") as Label;
                    lblError.Text = "Please select a weight";
                }
            }
        }
    }

    protected void BtnAddtoCart_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Cart.aspx");
    }
}