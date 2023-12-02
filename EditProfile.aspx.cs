using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditProfile : System.Web.UI.Page
{
    static string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["geml"] == null && Session["urid"] == null)
            {
                Response.Redirect("DataNotFound.aspx");
            }
        }
        
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CustomerDetail where emailid='"+Session["geml"]+"' or userid='"+Session["urid"]+"'",con);                
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmd;
        DataSet dss = new DataSet();
        daa.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {           
            string regist;
            regist = dss.Tables[0].Rows[0]["registrationtype"].ToString();

            if (regist == "Manual")
            {
                txtnm.Text=dss.Tables[0].Rows[0]["cname"].ToString();
                txtdob.Text=dss.Tables[0].Rows[0]["dateofbirth"].ToString();
                txtstate.Text=dss.Tables[0].Rows[0]["state"].ToString();
                txtdistrict.Text=dss.Tables[0].Rows[0]["district"].ToString();
                txtcity.Text=dss.Tables[0].Rows[0]["city"].ToString();
                txtzip.Text=dss.Tables[0].Rows[0]["zip"].ToString();
                txtmob.Text = dss.Tables[0].Rows[0]["mobileno"].ToString();
                txtaddr.Text = dss.Tables[0].Rows[0]["address"].ToString();
                RadioButtonList1.SelectedValue = dss.Tables[0].Rows[0]["gender"].ToString();

                
                txtaddr.Enabled = false;
                txtnm.Enabled = false;
                RadioButtonList1.Enabled = false;
                txtmob.Enabled = false;
                //txtmob.Visible = false;
                
               

                //Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                //Server.Transfer("UserHome.aspx");
            }
            if (regist == "Googleplus")
            {
                txtnm.Text = dss.Tables[0].Rows[0]["cname"].ToString();
                txtdob.Text = dss.Tables[0].Rows[0]["dateofbirth"].ToString();
                txtstate.Text = dss.Tables[0].Rows[0]["state"].ToString();
                txtdistrict.Text = dss.Tables[0].Rows[0]["district"].ToString();
                txtcity.Text = dss.Tables[0].Rows[0]["city"].ToString();
                txtzip.Text = dss.Tables[0].Rows[0]["zip"].ToString();
                txtmob.Text = dss.Tables[0].Rows[0]["mobileno"].ToString();
                txtaddr.Text = dss.Tables[0].Rows[0]["address"].ToString();
                RadioButtonList1.SelectedValue = dss.Tables[0].Rows[0]["gender"].ToString();


                //txtaddr.Enabled = false;
                txtnm.Enabled = false;
                //RadioButtonList1.Enabled = false;
                //txtmob.Enabled = false;
                //txtmob.Visible = false;

                

                //Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                //Server.Transfer("UserHome.aspx");
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd1 = new SqlCommand("select * from CustomerDetail where emailid='"+Session["geml"]+"' or userid='"+Session["urid"]+"'",con);                
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmd1;
        DataSet dss = new DataSet();
        daa.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {
            string regist;
            regist = dss.Tables[0].Rows[0]["registrationtype"].ToString();

            if (regist == "Manual")
            {

                con.Open();

                SqlCommand cmd2 = new SqlCommand("update CustomerDetail set dateofbirth=@dob, state=@st, district=@dist, city=@cty, zip=@zp where cname='" + txtnm.Text + "'", con);
                cmd2.Parameters.AddWithValue("@dob", txtdob.Text);
                cmd2.Parameters.AddWithValue("@st", txtstate.Text);
                cmd2.Parameters.AddWithValue("@dist", txtdistrict.Text);
                cmd2.Parameters.AddWithValue("@cty", txtcity.Text);
                cmd2.Parameters.AddWithValue("@zp", txtzip.Text);
                cmd2.ExecuteNonQuery();
                con.Close();
            }

            if (regist == "Googleplus")
            {

                con.Open();

                SqlCommand cmd3 = new SqlCommand("update CustomerDetail set dateofbirth=@dob, state=@st, district=@dist, city=@cty, zip=@zp, address=@adr, mobileno=@mob, gender=@gndr where cname='" + txtnm.Text + "' ", con);
                cmd3.Parameters.AddWithValue("@dob", txtdob.Text); 
                cmd3.Parameters.AddWithValue("@st", txtstate.Text);
                cmd3.Parameters.AddWithValue("@dist", txtdistrict.Text);
                cmd3.Parameters.AddWithValue("@cty", txtcity.Text);
                cmd3.Parameters.AddWithValue("@zp", txtzip.Text);
                cmd3.Parameters.AddWithValue("@adr", txtaddr.Text);
                cmd3.Parameters.AddWithValue("@mob", txtmob.Text);
                cmd3.Parameters.AddWithValue("@gndr", RadioButtonList1.SelectedItem.Text);
                cmd3.ExecuteNonQuery();

                con.Close();
            }
        }
        
        
    }
}