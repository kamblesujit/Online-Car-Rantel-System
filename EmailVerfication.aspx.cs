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



public partial class EmailVerfication : System.Web.UI.Page
{
    static string activationcode;
    
    string emll;
    
     String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["geml"] == null)
        {
            txtemlvrfy.Text = Session["eml"].ToString();

            txtemlvrfy.Enabled = false;
        }
        else
        {
            txtemlvrfy.Text = Session["geml"].ToString();

            txtemlvrfy.Enabled = false;
        }
        if (Session["Seml"] != null)
        {
            txtemlvrfy.Text = Session["Seml"].ToString();
            string semlid = txtemlvrfy.Text;
            Session["SSeml"] = semlid;
            txtemlvrfy.Enabled = false;
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Random randm = new Random();
        activationcode = randm.Next(1001, 9999).ToString();
       

       
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        verifyactcode();

        insrtverficationcode();
        
        Label9.Visible = false;
        txtemlvrfy.Visible = false;
        Button2.Visible = false;
        
        Label11.Visible = true;
        txtvrfycode.Visible = true;
        Button3.Visible = true;

    }

    private void verifyactcode()
    {
        
        String myquery = "Select emailid, status,activationcode from UserActivity where emailid='" + txtemlvrfy.Text + "' and activationcode='" + activationcode+"' and status='Verified'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmd;
        DataSet dss = new DataSet();
        daa.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";
            string activcd;
            activcd = dss.Tables[0].Rows[0]["status"].ToString();

            if (activcd == "Verified")
            {

                
                Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                Server.Transfer("UserHome.aspx");
            }
            else
            {
               

            }
            
        }
    }
        private void insrtverficationcode()
        {
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            //if (Session["lgtmg"] == null)
            //{
            //    string lgnntm = Session["clgtm"].ToString();
            //}
            //else
            //{
               //string llgtm = Session["clgtm"].ToString();
                SqlCommand cmd2 = new SqlCommand("insert into UserActivity(emailid,status,activationcode) values(@ceml,'unverified','" + activationcode + "')", conn);
                cmd2.Parameters.AddWithValue("@ceml", txtemlvrfy.Text);
               // cmd2.Parameters.AddWithValue("@logtm", llgtm);
                cmd2.Connection = conn;
                cmd2.ExecuteNonQuery();
                //cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('Verification Code Has Been Send to Your Email.\n Pls. Check your Mail Inbox .')</script>");
                sendcode();
           // }
            //conn.Close();
        }


 private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("your-email", "your-password");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "To Verify Activation Code ( Car Rental System )";
        msg.Body = "Dear " + txtemlvrfy.Text + ", Your Activation Code is  " + activationcode + "\n\n\nThanks & Regards\n Car Rental System";
        string toaddress = txtemlvrfy.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Car Rental System <your-email>";
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

    protected void Button3_Click(object sender, EventArgs e)
    {
       

        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        //String myquery = "Select * from Emailverify where emailid='" + Request.QueryString["emailadd"] + "'";
        String myquery = "Select * from UserActivity where emailid='" + txtemlvrfy.Text + "'";
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
            
            if (activcd == txtvrfycode.Text)
            {
                if (Session["SSeml"] !=null)
                {
                    changestatus();
                    Response.Write("<script>alert('Your Email Has been Verfied successfully ')</script>");
                    Server.Transfer("VisitorBooking.aspx");
                }
                changestatus();
                
                Response.Write("<script>alert('Your Email Has been Verfied successfully ')</script>");
                Server.Transfer("UserHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Your have enter invalid Activation code. ')</script>");
                Server.Transfer("EmailVerfication.aspx");
               
            }

            con.Close();
        }
    }

    private void changestatus()
    {
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        // String updatedata = "update Emailverify set status='Verified' where emailid='" + Request.QueryString["emailadd"] + "'";
        String updatedata = "update UserActivity set status='Verified' where activationcode='" + txtvrfycode.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}