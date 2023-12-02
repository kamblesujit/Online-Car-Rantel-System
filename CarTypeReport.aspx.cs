using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class CarTypeReport : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
            ddlctype.DataSource = dt;
            ddlctype.DataTextField = "Ctype";
            ddlctype.DataValueField = "Ctid";
            ddlctype.DataBind();
            ddlctype.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
    //protected void ddlctype_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(mycon);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from BookingDetails where bkcname=@ctyp", con);
    //    cmd.Parameters.AddWithValue("@ctyp", ddlctype.SelectedValue);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    GridView1.DataSource = dr;
    //    GridView1.DataBind();


    //    //SqlConnection con = new SqlConnection(mycon);
    //    //SqlCommand cmd = new SqlCommand("select * from BookingDetails where bkcname=@ctyp", con);
    //    //con.Open();
    //    //cmd.Parameters.AddWithValue("@ctyp", ddlctype.SelectedValue);
    //    //SqlDataReader drr = cmd.ExecuteReader();
    //    //if (drr.HasRows)
    //    //{
    //    //    drr.Read();
    //    //    GridView1.DataSource = drr;
    //    //    GridView1.DataBind();
    //    //}
            
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void ddlctype_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from BookingDetails where bkcname=@ctyp", con);
        con.Open();
        cmd.Parameters.AddWithValue("@ctyp", ddlctype.SelectedItem.Text);
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.HasRows)
        {
            drr.Read();
            GridView1.DataSource = drr;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Data Not Found. ')</script>");
        }
    }
}