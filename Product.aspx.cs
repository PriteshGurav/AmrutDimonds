using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductRepeteer();
        }
    }

    private void BindProductRepeteer()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            using (SqlCommand cmd1 = new SqlCommand("proBindAllProducts", con))
            {
                cmd1.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrproduct.DataSource = dt;
                    rptrproduct.DataBind();
                }
            }
        }
    }
}