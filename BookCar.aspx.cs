﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BookCar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    string tranid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random random = new Random();
        tranid = (Convert.ToString(random.Next(10000, 20000)));
        Session["TransactionID"] = "CarRental" + tranid.ToString();

        if (!IsPostBack)
        {

            //if (Session["SSeml"] != null && Session["Suid"] != null)
            //{
            //    Response.Redirect("DataNotFound.aspx");
            //}
            //else
            //{
            //    Response.Redirect("BookCar.aspx");
            //}
            ////if (Session["geml"] == null)
            //{
            //    emlid = Session["urid"].ToString();
            //    Label1.Text = emlid;
            //}
            //if (Session["urid"] == null)
            //{
            //    emlid = Session["geml"].ToString();
            //    Label1.Text = emlid;
            //}

            if (Session["geml"] == null && Session["urid"] == null)
            {
                Response.Redirect("DataNotFound.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from CustomerDetail where emailid='" + Session["geml"] + "' or userid='" + Session["urid"] + "'", con);
                SqlDataAdapter daaa = new SqlDataAdapter();
                daaa.SelectCommand = cmd1;
                DataSet dsss = new DataSet();
                daaa.Fill(dsss);
                if (dsss.Tables[0].Rows.Count > 0)
                {
                    string regist;
                    regist = dsss.Tables[0].Rows[0]["registrationtype"].ToString();

                    if (regist == "Manual")
                    {
                        Session["Custmerid"] = dsss.Tables[0].Rows[0]["custid"].ToString();
                        txtnm.Text = dsss.Tables[0].Rows[0]["cname"].ToString();
                        txtdob.Text = dsss.Tables[0].Rows[0]["dateofbirth"].ToString();
                        txtmob.Text = dsss.Tables[0].Rows[0]["mobileno"].ToString();
                        txteml.Text = dsss.Tables[0].Rows[0]["emailid"].ToString();
                        RadioButtonList1.SelectedValue = dsss.Tables[0].Rows[0]["gender"].ToString();


                        txtnm.Enabled = false;
                        txtdob.Enabled = false;
                        txtmob.Enabled = false;
                        txteml.Enabled = false;
                        RadioButtonList1.Enabled = false;


                        //txtmob.Enabled = false;
                        //txtmob.Visible = false;



                        //Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                        //Server.Transfer("UserHome.aspx");
                    }
                }
                con.Close();
            }





        }
        
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CustomerDetail where emailid='" + Session["SSeml"] + "' or userid='" + Session["Suid"] + "'", con);                
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmd;
        DataSet dss = new DataSet();
        daa.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {
            string regist;
            regist = dss.Tables[0].Rows[0]["registrationtype"].ToString();

            if (regist == "Manual")
            {
                Session["Custmerid"] = dss.Tables[0].Rows[0]["custid"].ToString();
                txtnm.Text = dss.Tables[0].Rows[0]["cname"].ToString();
                txtdob.Text = dss.Tables[0].Rows[0]["dateofbirth"].ToString();
                txtmob.Text = dss.Tables[0].Rows[0]["mobileno"].ToString();
                txteml.Text = dss.Tables[0].Rows[0]["emailid"].ToString();
                RadioButtonList1.SelectedValue = dss.Tables[0].Rows[0]["gender"].ToString();


                txtnm.Enabled = false;
                txtdob.Enabled = false;
                txtmob.Enabled = false;
                txteml.Enabled = false;
                RadioButtonList1.Enabled = false;


                //txtmob.Enabled = false;
                //txtmob.Visible = false;



                //Response.Write("<script>alert('You Have been already Verfied successfully ')</script>");
                //Server.Transfer("UserHome.aspx");
            }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["Sseml"] != null && Session["Custmerid"]!=null)
        {            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BookingDeatils(bkimg,bkcname,bkftyp,bkmillege,bkseater,bkgeartype,bkrateperhr,bkseml,bksuid,bkdrvlinc,bkaddhaarno,bktc,bkpaymentstatus,bktotalamt,custid,bkreturndate,bkpickupdate,bkdate) values (@bkimg,@bkcnm,@bkftyp,@bkmlg,@bksetr,@bkgtyp,@bkrphr,@bksemlid,@bksurid,@bkdrv,@bkadhr,@bktc,'Unpaid',@bktot,@bkcstid,@bkpdate,bkrdate,'"+DateTime.Now.ToString()+"')", con);
            cmd.Parameters.AddWithValue("@bkimg", Session["Simage"].ToString());
            cmd.Parameters.AddWithValue("@bkcnm", Session["Scname"].ToString());
            cmd.Parameters.AddWithValue("@bkftyp", Session["Sftype"].ToString());
            cmd.Parameters.AddWithValue("@bkmlg", Session["Smillege"].ToString());
            cmd.Parameters.AddWithValue("@bksetr", Session["Sseater"].ToString());
            cmd.Parameters.AddWithValue("@bkgtyp", Session["Sgeartype"].ToString());
            cmd.Parameters.AddWithValue("@bkrphr", Session["Srateperhr"].ToString());
            cmd.Parameters.AddWithValue("@bksemlid", Session["Sseml"].ToString());
            cmd.Parameters.AddWithValue("@bksurid", Session["Suid"].ToString());
            cmd.Parameters.AddWithValue("@bkdrv", txtdrvlicn.Text);
            cmd.Parameters.AddWithValue("@bkadhr", txtadhaarno.Text);
            cmd.Parameters.AddWithValue("@bktc", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@bktot", Session["totamt"].ToString());
            cmd.Parameters.AddWithValue("@bkcstid", Session["Custmerid"].ToString());
            cmd.Parameters.AddWithValue("@bkpdate", Session["pickupdate"].ToString());
            cmd.Parameters.AddWithValue("@bkrdate", Session["retrundate"].ToString());
            
            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
                Server.Transfer("Payment.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Pre-Booking has not done')</script>");
                Server.Transfer("Payment.aspx");
            }
            finally
            {
                con.Close();
            }
           
            
            

        }
        else
        {
        }
    }
}