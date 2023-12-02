using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;


public partial class Forgetpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Image1.ValidateCaptcha(txtcapt.Text.Trim());
        //if (captcha1.UserValidated)
        //{
        //    Label3.ForeColor = System.Drawing.Color.Green;
        //    Label3.Text = "Your Captcha Text Has Been verified Successfully. You Have Entered Valid Captcha ";
        //    Panel1.Visible = false;

        //}
        //else
        //{
        //    Label3.ForeColor = System.Drawing.Color.Red;
        //    Label3.Text = "Your Captcha Text verification is Unsuccessfully. You Have Entered Invalid Captcha ";
        //}



        String password;        
        SqlCommand cmd = new SqlCommand("Select * from CustomerDetail where userid='" + txtusrid.Text + "' and emailid='" + txtemlid.Text + "'",con);        
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";

            password = ds.Tables[0].Rows[0]["password"].ToString();
            sendpassword(password, txtemlid.Text);            
            Response.Write("<script>alert('Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox.')</script>");
            Server.Transfer("LoginPage.aspx");

        }
        else
        {
           
            Response.Write("<script>alert('Your Username is Not Valid or Email Not Registered.')</script>");
            Server.Transfer("Forgetpassword.aspx");

        }

        


        con.Close();

    }
    private void sendpassword(String password, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your-email", "Your-Password");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password ( Car Rental System )";
        msg.Body = "Dear " + txtusrid.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\n Car Rental System";
        string toaddress = txtemlid.Text;
        msg.To.Add(toaddress);
        string fromaddress = " Car Rental System <Your-email>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
    }
}