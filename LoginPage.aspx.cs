using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;



public partial class LoginPage : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    string stts;
    static string lockstatus;
    static int attempcount = 0;
    string acntid, custnm, custeml, custimg ;
   // string lgtm = DateTime.Now.ToString();
    //string Clogtm = DateTime.Now.ToString();
    //string Clogouttm = DateTime.Now.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["username"] != null)
            {
                txtusrid.Text = Request.Cookies["username"].Value;
            }
            if (Request.Cookies["userpwd"] != null)
            {
                txtpwd.Attributes.Add("value", Request.Cookies["username"].Value);
            }
            if (Request.Cookies["username"] != null && Request.Cookies["userpwd"] != null)
            {
                CheckBox1.Checked = true;
            }

        }


       
        GoogleConnect.ClientId = "Your-GoogleID";
        GoogleConnect.ClientSecret = "YourClient-Key";
        GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

        if (!string.IsNullOrEmpty(Request.QueryString["code"]))
        {
            string code = Request.QueryString["code"].ToString();
            string json = GoogleConnect.Fetch("me", code.ToString());
            GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
            acntid = profile.Id;
            custnm = profile.DisplayName;
            custeml = profile.Emails.Find(email => email.Type == "account").Value;
            custimg = profile.Image.Url;

            SqlConnection conn = new SqlConnection(mycon);
            
            conn.Open();
            
           SqlCommand cmd2 = new SqlCommand("select cname , emailid from CustomerDetail where cname=@cnm and emailid=@cem",conn);
        
        cmd2.Parameters.AddWithValue("@cnm", custnm);
        cmd2.Parameters.AddWithValue("@cem", custeml);
        cmd2.Connection = conn;


        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd2;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";



            Session["geml"] = custeml;
            //Session["clgtm"]=Clogtm;
            //Session["clgotm"] = Clogouttm;
            verfycode();
            Response.Write("<script>alert('You have been already Registered !')</script>");
            Server.Transfer("EmailVerfication.aspx");
            conn.Close();

            //password = ds.Tables[0].Rows[0]["password"].ToString();
            //sendpassword(password, TextBox2.Text);
            //Label3.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

        }
        //else
        //{
        //    Label3.Text = "Your Username is Not Valid or Email Not Registered";

        //}
        //con.Close();




        //SqlDataReader sd;        
        //sd = cmd2.ExecuteReader();
        //if (sd.HasRows)
        //{
        //    Session["eml"] = custeml;
        //    Response.Write("<script>alert('You have been already Registered !')</script>");
        //    Server.Transfer("EmailVerification.aspx");
        //    conn.Close();
        //}
        else
        {
            
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand("insert into CustomerDetail(cname,accountid,emailid,profilepic,registrationtype,logintime) values(@ctnm,@ctid,@cteml,@ctimg,'Googleplus',@logtm)", conn);
            cmd.Parameters.AddWithValue("@ctnm", custnm);
            cmd.Parameters.AddWithValue("@ctid", acntid);
            cmd.Parameters.AddWithValue("@cteml", custeml);
            cmd.Parameters.AddWithValue("@ctimg", custimg);
            cmd.Parameters.AddWithValue("@logtm", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();

            con.Close();
            Session["geml"] = custeml;
            //Session["clgtm"] = Clogtm;
            //Session["clgotm"] = Clogouttm;




            verfycode();

            Response.Write("<script>alert('You have been successfully Registered.')</script>");
        
            Server.Transfer("EmailVerfication.aspx");
        }
        if (Request.QueryString["error"] == "access_denied")
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
        }
            
        }
        

    }

    private void verfycode()
    {
        String myquery = "Select emailid, status from UserActivity where emailid='" + custeml + "' and status='Verified'";
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

               //Session["geml"] = custeml;
              // Session["urid"] = txtusrid.Text;
                Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                Server.Transfer("UserHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('You Have to be Verfied your email ')</script>");
                Server.Transfer("EmailVerfication.aspx");

            }
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (stts == "open")
        //{


        if (txtusrid.Text == "AdminYourId" && txtpwd.Text == "AdminPassword")
        {
            Session["Admin"]=txtusrid.Text;
            Response.Write("<script>alert('You have successfully Login.')</script>");
            Server.Transfer("AdminHome.aspx");

        }
        else
        {
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select userid , password from CustomerDetail where userid=@unm and password=@pass";

            cmd.Parameters.AddWithValue("@unm", txtusrid.Text);
            cmd.Parameters.AddWithValue("@pass", txtpwd.Text);
            SqlDataReader sd;
            con.Open();
            sd = cmd.ExecuteReader();
            if (sd.HasRows)
            {

                
                Session["urid"] = txtusrid.Text;
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["username"].Value = txtusrid.Text;
                    Response.Cookies["userpwd"].Value = txtpwd.Text;
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["userpwd"].Expires = DateTime.Now.AddDays(1);

                }
                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["userpwd"].Expires = DateTime.Now.AddDays(-1);
                }

                //Session["eml"] = custeml;
                
                
                if (Session["SSeml"] == txtusrid.Text || Session["Suid"] == txtusrid.Text  )
                {
                    
                    Response.Write("<script>alert('You have successfully Login.')</script>");
                    Server.Transfer("BookCar.aspx");
                    
                }
                else
                {
                    Session["lgtmg"] = DateTime.Now.ToString();
                    Response.Write("<script>alert('You have successfully Login.')</script>");
                    Server.Transfer("UserHome.aspx");

                }

                
            }
            else
            {
                //Label3.Text = " Invalid UserId or Password !! Re-login Properly .. No of Attempts Remaining :" + (2 - attempcount);
                //attempcount = attempcount + 1;
                Response.Write("<script>alert('Invalid UserId or Password !! Re-login Properly.')</script>");
                Server.Transfer("LoginPage.aspx");
                

            }

            cmd.Dispose();
            con.Close();
        }

        
        //else
        //{
        //    Response.Write("<script>alert('Invalid Userid or Password.')</script>");
        //    Server.Transfer("LoginPage.aspx");

        //}





        //}
        //else
        //{
        //    Label3.Text = "Your Account Locked Already";

        //}
        //if (attempcount == 5)
        //{
        //    Label3.Text = "Account has been lock Due to 5 time invalid attempts";
        //    setlockstatus(txtusrid.Text);
        //}
        
    }
    //private void setlockstatus(string username)
    //{

    //    SqlConnection conn = new SqlConnection(mycon);
    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("update LoginDetails set status='locked' where username='" + username + "'", conn);
    //    cmd.ExecuteNonQuery();
    //    conn.Close();

    //}

    //protected void Button3_Click(object sender, EventArgs e)
    //{

    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    GoogleConnect.Authorize("profile", "email");
    //}

    //public class GoogleProfile
    //{
    //    public string Id { get; set; }
    //    public string DisplayName { get; set; }
    //    public Image Image { get; set; }
    //    public List<Email> Emails { get; set; }
    //    public string Gender { get; set; }
    //    public string ObjectType { get; set; }
    //}

    //public class Email
    //{
    //    public string Value { get; set; }
    //    public string Type { get; set; }
    //}

    //public class Image
    //{
    //    public string Url { get; set; }
    //}


    //protected void Button4_Click(object sender, EventArgs e)
    //{

    //}
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GoogleConnect.Authorize("profile", "email");
    }
    public class GoogleProfile
    {
        public string Id { get; set; }
        public string DisplayName { get; set; }
        public Image Image { get; set; }
        public List<Email> Emails { get; set; }
        public string Gender { get; set; }
        public string ObjectType { get; set; }
    }
    public class Email
    {
        public string Value { get; set; }
        public string Type { get; set; }
    }

    public class Image
    {
        public string Url { get; set; }
    }
}