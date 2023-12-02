using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UpdateCar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCtype();
            BindCbrand();
            BindCmodel();

        }
    }
    private void BindCtype()
    {

        SqlCommand cmd = new SqlCommand("select * from CarType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlctype.DataSource = dt;
            ddlctype.DataTextField = "Ctype";
            ddlctype.DataValueField = "Ctid";
            ddlctype.DataBind();
            ddlctype.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }
    private void BindCbrand()
    {
        SqlCommand cmd = new SqlCommand("select * from BrandName ", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlbnm.DataSource = dt;
            ddlbnm.DataTextField = "CBrand";
            ddlbnm.DataValueField = "Bid";
            ddlbnm.DataBind();
            ddlbnm.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }

    private void BindCmodel()
    {
        SqlCommand cmd = new SqlCommand("select Mname from BrandName ", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlmnm.DataSource = dt;
            ddlmnm.DataTextField = "Mname";
            ddlmnm.DataValueField = "Mname";
            ddlmnm.DataBind();
            ddlmnm.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }

    protected void btnsrch_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from BookingDetails where bkid=@srch", con);
        cmd.Parameters.AddWithValue("@srch", txtsrch.Text);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            // Label1.Text = "Data Found";
            txtcid.Text = ds.Tables[0].Rows[0]["custid"].ToString();
           // txtcnm.Text = ds.Tables[0].Rows[0]["bkcname"].ToString();
            ddlctype.SelectedItem.Text = ds.Tables[0].Rows[0]["bkcname"].ToString();
            //ddlbnm.SelectedValue = ds.Tables[0].Rows[0]["Cust_id"].ToString();
            ddlmnm.SelectedItem.Text = ds.Tables[0].Rows[0]["bkmodl"].ToString();
            txtpmreading.Text = ds.Tables[0].Rows[0]["bkmeeter"].ToString();
            txtlmreading.Text = ds.Tables[0].Rows[0]["bkrmeeter"].ToString();


        }
        else
        {
            Response.Write("<script>alert('Data Not Found.')</script>");
            Server.Transfer("UpdateCar.aspx");
        }
        con.Close();

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
        // String updatedata = "update Emailverify set status='Verified' where emailid='" + Request.QueryString["emailadd"] + "'";
        String updatedata = "Update BookingDetails set bkrmeeter='"+txtlmreading.Text+"'" + " where custid=" +txtcid.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        
        Response.Write("<script>alert('Car Meeter reading Has been Updated successfully.')</script>");
        Server.Transfer("UpdateCar.aspx");
    }
}