using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Changepassword : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    SqlConnection con= new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    SqlCommand cmd,cmd1;
    string newpass,oldpass,cpass;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["geml"] == null && Session["urid"] == null)
        {
            Response.Redirect("ErrorPage.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        oldpass = txtopwd.Text;
        newpass = txtnpwd.Text;
        cpass = txtcnpwd.Text;
        cmd = new SqlCommand("select * from CustomerDetail where password='" + oldpass + "'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows && newpass == cpass)
        {
            con.Close();
            cmd1 = new SqlCommand("update CustomerDetail set password='" + newpass + "' where password='" + oldpass + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Your Password Have been  successfully Changed ')</script>");
            Server.Transfer("Changepassword.aspx");
        }
        else
        {
            Response.Write("<script>alert('New Password and Confirm Password Doesn't Match.\n Or Blank Password Not Accepted  ')</script>");
            Server.Transfer("Changepassword.aspx");
        }
        con.Close();

    }

        
    //    SqlConnection con = new SqlConnection(mycon);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Select * from CustomerDetail",con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    DataTable dt = new DataTable();
    //    da.Fill(ds);
    //    da.Fill(dt);
    //    string pass,tpass,tcpass,topass;
    //    topass=txtopwd.Text;
    //    tpass=txtnpwd.Text;
    //    tcpass=txtcnpwd.Text;
    //    if (dt.Rows.Count > 0)
    //    {
    //        pass = ds.Tables[0].Rows[0]["password"].ToString();

    //        if (pass == topass)
    //        {

    //            if (tpass == tcpass && tpass != "")
    //            {
    //                String updatedata = "update CustomerDetail set password='" + tpass + "' where password='" + topass + "'";
    //                SqlConnection conn = new SqlConnection(mycon);
    //                conn.Open();
    //                SqlCommand cmdd = new SqlCommand();
    //                cmdd.CommandText = updatedata;
    //                cmdd.Connection = conn;
    //                cmdd.ExecuteNonQuery();


    //                Response.Write("<script>alert('Your Password Have been  successfully Changed ')</script>");
    //                Server.Transfer("Changepassword.aspx");
    //            }
    //            else
    //            {

    //                Response.Write("<script>alert('New Password and Confirm Password Doesn't Match.\n Or Blank Password Not Accepted  ')</script>");
    //                Server.Transfer("Changepassword.aspx");
    //            }

    //        }
    //        else
    //        {
    //            Response.Write("<script>alert('Invalid Old Password \n- You Cannot change your password without our old password ')</script>");
    //            Server.Transfer("Changepassword.aspx");
    //        }
    //    }
    //    con.Close();
    //}
}