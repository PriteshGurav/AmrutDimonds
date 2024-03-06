using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;


public partial class forgatepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoping"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbluser where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", TxtEmailId.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                string myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                cmd1.ExecuteNonQuery();

               
                /*string ToEmailAddress = dt.Rows[0][3].ToString();
                string Username = dt.Rows[0][1].ToString();
                string EmailBody = "Hi, " + Username + ",<br>/<br/>Cilck the link below to reset your password<br/> <br/> http://localhost:1341/RecoverPassword.aspx/id=" + myGUID;

                MailMessage PassRecMail = new MailMessage("priteshgurav5832@gmail.com", ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                using (SmtpClient client = new SmtpClient()) {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("priteshgurav5832@gmail.com", "8291449236");
                    client.Host = "smtp.gamil.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(PassRecMail);
                }*/

                /*SmtpClient SMTP = new SmtpClient("smtp.gamil.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "priteshgurav5832@gmail.com",
                    Password = "8291449236"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);*/

                //---------------



                lalResetPassmsg.Text = "Reset Link send ! Check Your Email to reset password";
                lalResetPassmsg.ForeColor = System.Drawing.Color.Green;
                TxtEmailId.Text = string.Empty;

            }
            else
            {
                lalResetPassmsg.Text = "OOps! This Email Does not Exist....Try agian";
                lalResetPassmsg.ForeColor = System.Drawing.Color.Red;
                TxtEmailId.Text = string.Empty;
                TxtEmailId.Focus();
            }
        }
    }
}
