using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddToCarDropdownDetails : System.Web.UI.Page
{
    static string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCtype();
            BindCfueltype();
            BindCseater();
        }
    }
    private void BindCseater()
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from Seaters", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "CSeats";
            DropDownList3.DataValueField = "Sid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }

    private void BindCfueltype()
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from FuelType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "Ftype";
            DropDownList2.DataValueField = "Fid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("-Select-", "0"));
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
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Ctype";
            DropDownList1.DataValueField = "Ctid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd1 = new SqlCommand("insert into BrandName values(@bn,@ctid,@fid,@mnm,@sid)", con);
        cmd1.Parameters.AddWithValue("@bn", txtBname.Text);
        cmd1.Parameters.AddWithValue("@ctid", DropDownList1.SelectedValue);
        cmd1.Parameters.AddWithValue("@mnm", txtMname.Text);
        cmd1.Parameters.AddWithValue("@fid", DropDownList2.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@sid", DropDownList3.SelectedValue.ToString());
        cmd1.ExecuteNonQuery();
        txtBname.Text = string.Empty;
        txtMname.Text = string.Empty;
        DropDownList1.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        con.Close();

        
    }
    protected void btnnewcar_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void btnnewbrand_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
         Panel2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into CarType values(@ct)", con);
        cmd.Parameters.AddWithValue("@ct", txtCtype.Text);
        cmd.ExecuteNonQuery();
        txtCtype.Text = string.Empty;
        Label6.Text = "Item Saved succesfully ";
        con.Close();
    }
}