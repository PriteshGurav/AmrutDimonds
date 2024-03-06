using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            btnlogout.Visible = true;
            btnlogin.Visible = false;
            LblSuccess.Text = "Login Success, Welcome" + Session["Username"].ToString();
        }
        else
        {
            btnlogout.Visible = false;
            btnlogin.Visible = true;
            //Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
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
}