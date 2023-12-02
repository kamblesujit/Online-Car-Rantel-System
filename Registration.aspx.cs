using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ASPSnippets.GoogleAPI;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;
using System.Media;



public partial class Registration : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    
    //string acntid, custnm, custeml, custimg, gndr, passwd, mobil;
    string lgtme = DateTime.Now.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

     


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["mtotl"] != null)
        {
            if (checkemail() == true)
            {
                Response.Write("<script>alert('This User Id is Already Registered with Us')</script>");
                Server.Transfer("Registration.aspx");
            }

            else
            {
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CustomerDetail(cname,address,emailid,gender,mobileno,userid,password,registrationtype,logintime) values(@ctnm,@addr,@eid,@gndr,@mobno,@usrid,@pswd,'Manual',@gt)", con);
            cmd.Parameters.AddWithValue("@ctnm", txtnm.Text);
            cmd.Parameters.AddWithValue("@addr", txtaddr.Text);
            cmd.Parameters.AddWithValue("@eid", txtemlid.Text);
            cmd.Parameters.AddWithValue("@gndr", RadioButtonList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@mobno", txtmob.Text);
            cmd.Parameters.AddWithValue("@usrid", txtusrid.Text);
            cmd.Parameters.AddWithValue("@pswd", txtpwd.Text);
            cmd.Parameters.AddWithValue("@gt", lgtme);



            try
            {
                cmd.ExecuteNonQuery();
                Session["eml"] = txtemlid.Text;
                Session["uridd"] = txtusrid.Text;
                Session["lgtmg"] = lgtme;

                Session["Seml"] = txtemlid.Text;
                Session["Suid"] = txtusrid.Text;
                Session["Spwd"] = txtusrid.Text;

                Response.Write("<script>alert('You have been successfully Registered.')</script>");
                Server.Transfer("EmailVerfication.aspx");
   

            }
            catch (Exception)
            {
                Response.Write("<script>alert('You have Not Registered')</script>");
                //Server.Transfer("Registration.aspx");
            }
            finally
            {
                con.Close();
            }
           
            }
            }

        else
        {

            if (checkemail() == true)
            {
                Response.Write("<script>alert('This User Id is Already Registered with Us')</script>");
                Server.Transfer("Registration.aspx");
            }

            else
            {
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into CustomerDetail(cname,address,emailid,gender,mobileno,userid,password,registrationtype,logintime) values(@ctnm,@addr,@eid,@gndr,@mobno,@usrid,@pswd,'Manual',@gt)", con);
                cmd.Parameters.AddWithValue("@ctnm", txtnm.Text);
                cmd.Parameters.AddWithValue("@addr", txtaddr.Text);
                cmd.Parameters.AddWithValue("@eid", txtemlid.Text);
                cmd.Parameters.AddWithValue("@gndr", RadioButtonList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@mobno", txtmob.Text);
                cmd.Parameters.AddWithValue("@usrid", txtusrid.Text);
                cmd.Parameters.AddWithValue("@pswd", txtpwd.Text);
                cmd.Parameters.AddWithValue("@gt", lgtme);
                cmd.ExecuteNonQuery();


                con.Close();
                Session["eml"] = txtemlid.Text;
                Session["uridd"] = txtusrid.Text;
                Session["lgtmg"] = lgtme;

                Session["Seml"] = txtemlid.Text;
                Session["Suid"] = txtusrid.Text;

                Response.Write("<script>alert('You have been successfully Registered.')</script>");
                Server.Transfer("EmailVerfication.aspx");
            }
        }
    }
    private Boolean checkemail()
    {
        Boolean emailavailable = false;
       // String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=RegisteredData1; Integrated Security=True";
        String myquery = "Select * from CustomerDetail where userid='" + txtusrid.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }

}
