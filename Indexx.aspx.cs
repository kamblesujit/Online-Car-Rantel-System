using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Index1 : System.Web.UI.Page
{
    SqlConnection con  = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    string stts;
    static string lockstatus;
    static int attempcount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Request.Cookies["username"] != null)
            //{
            //    txtuserid.Text = Request.Cookies["username"].Value;
            //}
            //if (Request.Cookies["userpwd"] != null)http://localhost:50185/CarRentalSystem/Indexx.aspx.cs
            //{
            //    txtpwd.Attributes.Add("value", Request.Cookies["username"].Value);
            //}
            //if (Request.Cookies["username"] != null && Request.Cookies["userpwd"] != null)
            //{
            //    CheckBox1.Checked = true;
            //}


            BindCtype();
            BindScity();
            BindPlocation();
            BindLocctyp();


        }

    }

    private void BindLocctyp()
    {
        //SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from CarType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpctyp.DataSource = dt;
            drpctyp.DataTextField = "Ctype";
            drpctyp.DataValueField = "Ctid";
            drpctyp.DataBind();
            drpctyp.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }

    private void BindPlocation()
    {
       // SqlConnection con = new SqlConnection(con);
        SqlCommand cmd1 = new SqlCommand("select * from LocationDetails", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drppickuplocation.DataSource = dt;
            drppickuplocation.DataTextField = "locnm";
            drppickuplocation.DataValueField = "locid";
            drppickuplocation.DataBind();
            drppickuplocation.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt.Rows.Count != 0)
        {
            drpploclo.DataSource = dt;
            drpploclo.DataTextField = "locnm";
            drpploclo.DataValueField = "locid";
            drpploclo.DataBind();
            drpploclo.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }

    private void BindScity()
    {
       // SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd2 = new SqlCommand("select * from CityDetails", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpselectcity.DataSource = dt;
            drpselectcity.DataTextField = "ctynm";
            drpselectcity.DataValueField = "ctyid";
            drpselectcity.DataBind();
            drpselectcity.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }
    private void BindCtype()
    {
        //SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd3 = new SqlCommand("select * from CarType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd3);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpcartype.DataSource = dt;
            drpcartype.DataTextField = "Ctype";
            drpcartype.DataValueField = "Ctid";
            drpcartype.DataBind();
            drpcartype.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }








    protected void Button1_Click(object sender, EventArgs e)
    {
        if (drpselectcity.SelectedItem.Text != "" && drpcartype.SelectedItem.Text != "" && drppickuplocation.SelectedItem.Text != "" && txtpickupdate.Text != "" && txtreturndate.Text != "" && txtpickuptime.Text != "" && txtreturntime.Text != "")
        {
            if (drppickuplocation.SelectedItem.Text != "Office")
            {
                
                Session["ctyp"] = Convert.ToInt32(drpcartype.SelectedValue);
                Session["Outstation"] = Label5.Text;

                Session["city"] = drpselectcity.SelectedItem.Text;
                Session["cartype"] = drpcartype.SelectedItem.Text;
                Session["pickuplocation"] = drppickuplocation.SelectedItem.Text;

                DateTime pickdate = Convert.ToDateTime(txtpickupdate.Text);
                DateTime retrundate = Convert.ToDateTime(txtreturndate.Text);
                DateTime picktime = Convert.ToDateTime(txtpickuptime.Text);
                DateTime retruntime = Convert.ToDateTime(txtreturntime.Text);
                TimeSpan datediff = retrundate - pickdate;
                TimeSpan timediff = retruntime - picktime;

                
                double tripday = datediff.TotalDays;
                double triphours = datediff.TotalHours;
                double triptime = timediff.TotalHours;

                Session["pickupdate"] = txtpickupdate.Text;
                Session["retrundate"] = txtreturndate.Text;
                Session["tripdays"] = tripday;
                Session["triphrs"] = triphours + triptime;
                Session["tripmin"] = triptime;
                if (Convert.ToInt32(tripday) < 1)
                {
                    Response.Write("<script>alert('Select Proper Date')</script>");
                    Server.Transfer("Indexx.aspx");
                }
                else
                {
                    Response.Redirect("CRentSummary.aspx");
                }
            }
            else
            {
                Response.Write("<script language=javascript>");
                Response.Write("if(confirm('El vehiculo no existe, Deseas crear el registro?')){window.location.href='IngresoVehiculos.aspx'}");
                Response.Write("</script>");

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "confirm('Unable to locate your search item. Do you want to search the closest match from your item?');", true);
               // Response.Write("<script>alert('You need to pick your car from our office ')</script>");

                Session["ctyp"] = Convert.ToInt32(drpcartype.SelectedValue);
                Session["Outstation"] = Label5.Text;

                Session["city"] = drpselectcity.SelectedItem.Text;
                Session["cartype"] = drpcartype.SelectedItem.Text;
                Session["pickuplocation"] = drppickuplocation.SelectedItem.Text;

                DateTime pickdate = Convert.ToDateTime(txtpickupdate.Text);
                DateTime retrundate = Convert.ToDateTime(txtreturndate.Text);
                DateTime picktime = Convert.ToDateTime(txtpickuptime.Text);
                DateTime retruntime = Convert.ToDateTime(txtreturntime.Text);
                TimeSpan datediff = retrundate - pickdate;
                TimeSpan timediff = retruntime - picktime;

                double tripday = datediff.TotalDays;
                double triphours = datediff.TotalHours;
                double triptime = timediff.TotalHours;

                Session["pickupdate"] = txtpickupdate.Text;
                Session["retrundate"] = txtreturndate.Text;
                Session["tripdays"] = tripday;
                Session["triphrs"] = triphours + triptime;
                Session["tripmin"] = triptime;
                if (Convert.ToInt32(tripday) < 1)
                {
                    Response.Write("<script>alert('Select Proper Date')</script>");
                    Server.Transfer("Indexx.aspx");
                }
                else
                {
                    Response.Redirect("CRentSummary.aspx");
                }
            }

        }
        else
        {
            Response.Write("<script>alert('Pls Select any one option ')</script>");
            Server.Transfer("Indexx.aspx");
        }

      

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (drpctyp.SelectedItem.Text != "" && drpploclo.SelectedItem.Text != "" && drpcduration.SelectedItem.Text != "" && txtpdtloc.Text != "" && txtptmloc.Text != "")
        {
            Session["locals"] = Label4.Text;
            Session["loctyp"] = drpctyp.SelectedItem.Text;
            Session["pickloc"] = drpploclo.SelectedItem.Text;
            Session["dur"] = drpcduration.SelectedItem.Text;
            Session["pickd"] = txtpdtloc.Text;
            Session["pickt"] = txtptmloc.Text;



           // DateTime pickdt = Convert.ToDateTime(txtpdtloc.Text);
           // DateTime picktm = Convert.ToDateTime(txtptmloc.Text);

           // double pdt = pickdt.AddHours;
            //if (Convert.ToInt32(pickdt) < 1)
            //{
                //Response.Write("<script>alert('Select Proper Date')</script>");
               // Server.Transfer("Indexx.aspx");
           // }
           // else
           // {
                Response.Redirect("CRentSummary.aspx");
            //}






        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd4 = new SqlCommand("insert into Customer_Feedback(Cust_name,Cust_number,Cust_emailid,Comment,CmntDateTime) values(@cnm,@cmob,@ceml,@ccmnt,'"+DateTime.Now.ToString()+"')", con);
        cmd4.Parameters.AddWithValue("@cnm", txtnm.Text);
        cmd4.Parameters.AddWithValue("@cmob", txtmob.Text);
        cmd4.Parameters.AddWithValue("@ceml", txteml.Text);        
        cmd4.Parameters.AddWithValue("@ccmnt", txtcomment.Text);       
        cmd4.ExecuteNonQuery();


        con.Close();        
        Response.Write("<script>alert('Thank you for giving comment to our website.')</script>");
        Server.Transfer("Indexx.aspx");
    }
}