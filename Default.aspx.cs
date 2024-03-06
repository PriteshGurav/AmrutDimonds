using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            //LblSuccess.Text = "Login Success, Welcome" + Session["Username"].ToString();
            btnsignup.Visible = false;
            btnsigin.Visible = false;
            btnlogout.Visible = true;
        }
        else
        {
            btnsignup.Visible = false;
            btnsigin.Visible = true;
            btnlogout.Visible = false;
           // Response.Redirect("~/Default.aspx");
           
        }
    }
    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookieID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookieID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
        Session["Username"] = null;
    }
}