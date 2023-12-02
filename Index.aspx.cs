using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    string stts;
    static string lockstatus;
    static int attempcount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {            
            if(Request.Cookies["username"]!=null)
            {
                txtuserid.Text=Request.Cookies["username"].Value;
            }
            if (Request.Cookies["userpwd"] != null)
            {
                txtpwd.Attributes.Add("value",Request.Cookies["username"].Value) ;
            }
            if (Request.Cookies["username"] != null && Request.Cookies["userpwd"] != null)
            {
                CheckBox1.Checked = true;
            }


            BindCtype();
        }

       

    }

    private void BindCtype()
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from CarType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpcartype.DataSource = dt;
            drpcartype.DataTextField = "Ctype";
            drpcartype.DataValueField = "Ctid";
            drpcartype.DataBind();
            drpcartype.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

                  

    }

    
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
        
        if (stts == "open")
        {

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select username , password from LoginDetails where username=@unm and password=@pass";

            cmd.Parameters.AddWithValue("@unm", txtuserid.Text);
            cmd.Parameters.AddWithValue("@pass", txtpwd.Text);
            SqlDataReader sd;
            con.Open();
            sd = cmd.ExecuteReader();
            if (sd.HasRows)
            {
                Session["username"] = txtuserid.Text;
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["username"].Value = txtuserid.Text;
                    Response.Cookies["userpwd"].Value = txtpwd.Text;
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["userpwd"].Expires = DateTime.Now.AddDays(1);

                }
                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["userpwd"].Expires = DateTime.Now.AddDays(-1);
                }

                Response.Redirect("AdminHome.aspx");
                Label3.Text = " Login Successfully ";
            }
            else
            {
                Label3.Text = " Invalid UserId or Password !! Re-login Properly .. Nof of Attempts Remaining :" + (2 - attempcount);
                attempcount = attempcount + 1;

            }

            cmd.Dispose();
            con.Close();

        }
        else
        {
            Label3.Text = "Your Account Locked Already";

        }
        if (attempcount == 5)
        {
            Label3.Text = "Account has been lock Due to 5 time invalid attempts";
            setlockstatus(txtuserid.Text);
        }
        
    }
    private void setlockstatus(string username)
    {

        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        SqlCommand cmd = new SqlCommand("update LoginDetails set status='locked' where username='" + username + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(mycon);       
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("insert into CustomerDetails values(@fnm,@lnm,@ad,@st,@dst,@cty,@zp,@dob,@mob,@eml,@usr)", conn);
        //cmd.Parameters.AddWithValue("@fnm", txtfnm.Text);
        //cmd.Parameters.AddWithValue("@lnm", txtlnm.Text);
        //cmd.Parameters.AddWithValue("@ad", txtadd.Text);
        //cmd.Parameters.AddWithValue("@st", drpstate.SelectedValue);
        //cmd.Parameters.AddWithValue("@dst", drpdistrict.SelectedValue);
        //cmd.Parameters.AddWithValue("@cty", txtcity.Text);
        //cmd.Parameters.AddWithValue("@zp", txtzip.Text);
        //cmd.Parameters.AddWithValue("@dob", txtdob.Text);
        //cmd.Parameters.AddWithValue("@mob", txtmobile.Text);
        //cmd.Parameters.AddWithValue("@eml", txtemailid.Text);
        //cmd.Parameters.AddWithValue("@usr", txtuser.Text);
        //cmd.ExecuteNonQuery();

        //Label3.Text = "Item Saved succesfully ";
        //conn.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button8_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UserHome.aspx");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {

    }
    protected void Button4_Click2(object sender, EventArgs e)
    {
        Response.Write("hello");
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
       
    }
    protected void Button4_Click3(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (drpselectcity.SelectedValue != "" && drpcartype.SelectedValue != "" && drppickuplocation.SelectedValue != "" && txtpickupdate.Text != "" && txtreturndate.Text != "")
        {
            // Session["locals"] = Label5.Text;
            Session["city"] = drpselectcity.SelectedValue;
            Session["cartype"] = drpcartype.SelectedValue;
            Session["pickuplocation"] = drppickuplocation.SelectedValue;

            DateTime pickdate = Convert.ToDateTime(txtpickupdate.Text);
            DateTime retrundate = Convert.ToDateTime(txtreturndate.Text);
            TimeSpan datediff = retrundate - pickdate;

            double triphours = datediff.TotalHours;

            Session["pickupdate"] = txtpickupdate.Text;
            Session["retrundate"] = txtreturndate.Text;
            Session["triphrs"] = triphours;
            if (Convert.ToInt32(datediff) < 1)
            {
                Response.Write("<script>alert('Select Proper Date')</script>");
                Server.Transfer("Indexx.aspx");
            }
            else
            {
                Response.Redirect("CRentSummary.aspx");
            }
        }
    }
}