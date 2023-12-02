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



public partial class ViewFeedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Custid"] != null)
        {
            int cid = Convert.ToInt16(Session["Custid"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Customer_Feedback where Cust_id=" + cid, con);            
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = "Data Found";
                Label1.Text = ds.Tables[0].Rows[0]["Cust_id"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["Cust_name"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["Cust_number"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["Cust_emailid"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["Comment"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["CmntDateTime"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["stauts"].ToString();
            }
            else
            {
                Response.Redirect("ViewFeedback.aspx");

            }
            con.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string args = btn.CommandArgument;
        Session["Custid"] = args;
        //Request.QueryString["Cust_id"] = args;
        //Response.Redirect("Request.QueryString['Cust_id']=" + args);
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {

        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        // String updatedata = "update Emailverify set status='Verified' where emailid='" + Request.QueryString["emailadd"] + "'";
        String updatedata = "Update Customer_Feedback set stauts='Processed'" + ", replymessage='" + TextBox2.Text + "' where Cust_id=" + Label1.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        //con.Open();
        //SqlCommand cmd1 = new SqlCommand("Update Customer_Feedback set stauts='Processed'" + ", replymessage='" + TextBox2.Text + "' where Cust_id=" + Label3.Text);
        //cmd1.ExecuteNonQuery();        
        //con.Close();
        sendcode();

        Response.Write("<script>alert('Relpy Has been Processed Properly.')</script>");
        Server.Transfer("ViewFeedback.aspx");
    }

    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your-email", "Your-password");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "To Relpy for Feedback   ( Car Rental System )";
        msg.Body = "Dear " + Label4.Text + ",  " + TextBox2.Text + "\n\n\nThanks & Regards\n Car Rental System";
        string toaddress = Label4.Text;
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
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Customer_Feedback where Cust_id='" +TextBox1.Text + "' or  Cust_name='" +TextBox1.Text + "' or Cust_emailid='" +TextBox1.Text + "'",  con);            
            SqlDataReader dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                GridView1.DataSource = dr;
                GridView1.DataBind();

            }
        else{
                Response.Write("<script>alert('Data Not Found.')</script>");
                Server.Transfer("ViewFeedback.aspx");
            }
            con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        Button2.Visible = true;
        Button1.Visible = false;
    }
}