﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            //LblSuccess.Text = "Login Success, Welcome" + Session["Username"].ToString();
            btnlogout.Visible = true;
            btnlogin.Visible = false;
        }
        else
        {
            btnlogout.Visible = false;
            Response.Redirect("~/Default.aspx");
            btnlogin.Visible = true;
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
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
