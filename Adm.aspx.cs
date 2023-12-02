using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Adm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindscat();
            //BindModel();
           // BindCarRepeater();
        }
    }

    private void Bindscat()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from Cbrand", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "bname";
            DropDownList1.DataValueField = "bid";
            DropDownList1.DataBind();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";
        
       
        SqlConnection con= new SqlConnection(mycon);
        SqlCommand cmd= new SqlCommand("insert into Cbrand values('"+TextBox1.Text+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";


        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("insert into Cmname values('" + TextBox1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";


        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("insert into ctypename values('" + TextBox1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";


        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("insert into carseats values('" + TextBox1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";


        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("insert into carfueltype values('" + TextBox1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";


        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("insert into subcate values('"+DropDownList1.SelectedItem.Text+"','" + TextBox1.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = string.Empty;
        DropDownList1.ClearSelection();
        DropDownList1.Items.FindByValue("0").Selected = true;
    }
}