using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


public partial class SendWishes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtmsg.Text != "" && txtemlsub.Text != "")
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[2].FindControl("CheckBox1") as CheckBox);
                String emailadd = row.Cells[1].Text;
                if (status.Checked)
                {
                    sendcustomermail(emailadd);
                }

            }
        }
        else
        {
            Response.Write("<script>alert('Please Do Not Empty Any Filed')</script>");
           // Response.Write("<script>alert('Email Sent To.\n\n " + emailadd1 + "')</script>");
            Server.Transfer("SendWishes.aspx");
        
        }

    }

        private void sendcustomermail(String emailadd1)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your-email", "Your-Password");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = txtemlsub.Text;
        msg.Body = txtmsg.Text+"\n\n\n Thanks & Regards.\n Car Rental System";
        string toaddress = emailadd1;
        msg.To.Add(toaddress);
        string fromaddress = "Car Rental System <Your-email>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
         Response.Write("<script>alert('Email Sent To.\n\n " + emailadd1 + "')</script>");
        Server.Transfer("SendWishes.aspx");
            
       // Response.Write("email sent to " + emailadd1);
    }

    
}