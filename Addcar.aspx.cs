using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Addcar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCbrand();
            BindModel();
           // BindCarRepeater();
            Bindftype();
            BindStype();
            BindCtype();
        }
    }

    private void BindCtype()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from ctypename", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList5.DataSource = dt;
            DropDownList5.DataTextField = "ctypname";
            DropDownList5.DataValueField = "ctypid";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, new ListItem("-Select-","0"));
        }
    }

    private void BindStype()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from carseats", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "cseater";
            DropDownList3.DataValueField = "sid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }

    private void Bindftype()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from carfueltype", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList4.DataSource = dt;
            DropDownList4.DataTextField = "fueltype";
            DropDownList4.DataValueField = "ftypid";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";
        //int bn = Convert.ToInt32(DropDownList1.SelectedItem.Text);
        //int mn = Convert.ToInt32(DropDownList2.SelectedItem.Text);
        //int ctyy = Convert.ToInt32(DropDownList3.SelectedItem.Text);
        //int stt = Convert.ToInt32(DropDownList4.SelectedItem.Text);
        //int ftt = Convert.ToInt32(DropDownList5.SelectedItem.Text);
       string fp = FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("~/Images/"+fp));
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Addcar values('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + FileUpload1.FileName + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        
        cmd.ExecuteNonQuery();
        Label6.Text = "Item Saved succesfully ";
        con.Close();
    }

    //private void BindCarRepeater()
    //{
    //    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

    //    SqlConnection con = new SqlConnection(mycon);
    //    SqlCommand cmd = new SqlCommand("select * from Cbrand", con);
    //    con.Open();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    if (dt.Rows.Count != 0)
    //    {

    //        Repeater1.DataSource = dt;

    //        Repeater1.DataBind();
    //    }
    //}
    private void BindCbrand()
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
            DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
    private void BindModel()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from Cmname", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "modelname";
            DropDownList2.DataValueField = "mid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
   













}