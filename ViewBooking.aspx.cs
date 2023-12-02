using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ViewBooking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtsearch.Text != "")
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from BookingDetails where bkid='" + txtsearch.Text + "'", con);
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found. ')</script>");
                Server.Transfer("ViewBooking.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Data Not Blank Field.')</script>");
            Server.Transfer("ViewBooking.aspx");
        }
  
    }
    protected void btnsearchall_Click(object sender, EventArgs e)
    {
      
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from BookingDetails ", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found. ')</script>");
                Server.Transfer("ViewBooking.aspx");
            }
       
    }
}