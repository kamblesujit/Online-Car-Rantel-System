using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


public partial class Emailverify : System.Web.UI.Page
{
    static string activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label4.Text = "Your Email Is " + Request.QueryString["emailadd"].ToString()+", Kindly Check Your Mail Inbox For Activation Code ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random randm = new Random();
        activationcode = randm.Next(1001, 9999).ToString();
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        String myquery = "insert into Emailverify(cname,emailid,status,activationcode) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','unverified','" + activationcode + "')";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        sendcode();
       // Response.Redirect("emailadd="+TextBox2.Text);
    }

    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your-email", "Your-Password");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "To Verify Activation Code ( SSK )";
        msg.Body = "Dear " + TextBox1.Text + ", Your Password is  " + activationcode + "\n\n\nThanks & Regards";
        string toaddress = TextBox2.Text;
        msg.To.Add(toaddress);
        string fromaddress = " <Your-email>";
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        //String myquery = "Select * from Emailverify where emailid='" + Request.QueryString["emailadd"] + "'";
        String myquery = "Select * from Emailverify where emailid='" + TextBox2.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";
            string activcd;
            activcd = ds.Tables[0].Rows[0]["activationcode"].ToString();

            if (activcd == TextBox3.Text)
            {
                changestatus();
                Label5.Text = " Your Email Hass been Verfied successfully";
            }
            else
            {
                Label5.Text = " Your have enter invalid Activation code, kindly check your mail inbox";
            }

            con.Close();
        }
    }

    private void changestatus()
    {
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
       // String updatedata = "update Emailverify set status='Verified' where emailid='" + Request.QueryString["emailadd"] + "'";
        String updatedata = "update Emailverify set status='Verified' where activationcode='" + TextBox3.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String password;
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        String myquery = "Select * from Emailverify where cname='" + TextBox1.Text + "' and emailid='" + TextBox2.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";

            password = ds.Tables[0].Rows[0]["password"].ToString();
            sendpassword(password, TextBox2.Text);
            Label3.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

        }
        else
        {
            Label3.Text = "Your Username is Not Valid or Email Not Registered";

        }
        con.Close();

    }
    private void sendpassword(String password, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your-email", "Your-Password);
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password (SSK)";
        msg.Body = "Dear " + TextBox1.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards";
        string toaddress = TextBox2.Text;
        msg.To.Add(toaddress);
        string fromaddress = " <Your-email>";
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

    protected void Button4_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        //String myquery = "Select * from Emailverify where emailid='" + Request.QueryString["emailadd"] + "'";
        String myquery = "Select * from Emailverify where emailid='" + TextBox2.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";
            string activcd;
            activcd = ds.Tables[0].Rows[0]["password"].ToString();

            if (activcd == TextBox3.Text)
            {
                //changestatus();
                Label5.Text = " Your Email Hass been Verfied successfully";
            }
            else
            {
                Label5.Text = " Your have enter invalid Activation code, kindly check your mail inbox";
            }

            con.Close();
        }
    }
}