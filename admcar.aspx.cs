using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admcar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindCbrand();
            BindModel();
            BindCarRepeater();
        }
    }

    private void BindCarRepeater()
    {
        string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("skproc", con);
        con.Open();
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {

           Repeater1.DataSource = dt;
           
            Repeater1.DataBind();
        }
    }
    private void BindCbrand()
    {
         string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=skpractice;Integrated Security=True";
        
        SqlConnection con= new SqlConnection(mycon);
        SqlCommand cmd= new SqlCommand("select * from Cbrand" ,con);
        con.Open();
        SqlDataAdapter da= new SqlDataAdapter(cmd);
        DataTable dt= new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count!=0)
        {
            DropDownList1.DataSource=dt;
            DropDownList1.DataTextField="bname";
            DropDownList1.DataValueField="bid";
            DropDownList1.DataBind();
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
        }

    }
    
    
}