using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class RegisteredUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //txtsearch.Visible = false;
       // Button2.Visible = false;
        //Button1.Visible = false;

        if (txtsearch.Text != "")
        {

            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select custid AS ID, cname AS Name, address AS Address, gender AS Gender, dateofbirth AS DOB, mobileno AS Contact, emailid AS EmailID, userid AS UserID, password AS Password, registrationtype AS RegistrationType  from CustomerDetail where custid=@cid ", con);
            cmd1.Parameters.AddWithValue("@cid", txtsearch.Text);           
            SqlDataReader drr = cmd1.ExecuteReader();
            if (drr.HasRows)
            {
                drr.Read();
                GridView3.DataSource = drr;
                GridView3.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found.')</script>");
                Server.Transfer("RegisteredUser.aspx");


            }
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Data Not Blank Field.')</script>");
            Server.Transfer("RegisteredUser.aspx");
        }
   }




    protected void Button1_Click(object sender, EventArgs e)
    {
        txtsearch.Visible = true;
        Button2.Visible = true;
        Button1.Visible = false;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select custid AS ID, cname AS Name, address AS Address, gender AS Gender, dateofbirth AS DOB, mobileno AS Contact, emailid AS EmailID, userid AS UserID, password AS Password, registrationtype AS RegistrationType from CustomerDetail ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            GridView3.DataSource = dr;
            GridView3.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Data Not Found.')</script>");
            Server.Transfer("RegisteredUser.aspx");


        }
        con.Close();
    }
}