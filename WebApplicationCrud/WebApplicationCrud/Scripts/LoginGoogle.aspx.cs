using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplicationCrud.Scripts
{
    
    public partial class LoginGoogle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        void Email()
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                //mail.From = new MailAddress("atmsys14@gmail.com");
                //mail.To.Add("atmsys14@gmail.com");
                //mail.Subject = "Verification";
                //mail.Body = "LOGIN";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential(txtBoxEmailGoogle.Text, txtBoxSenhaGoogle.Text);
                SmtpServer.EnableSsl = true;

                Response.Redirect("WebFormCrud.aspx");

                //SmtpServer.Send(mail);
                //Form2 frm = new Form2();
                //frm.Show();
                //this.Hide();
            }

            catch (Exception ex)
            {
                //MessageBox.Show("You have entered an invalid username or password");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Email();
        }

      
    }
}