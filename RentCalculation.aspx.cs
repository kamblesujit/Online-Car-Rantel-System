using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;


public partial class RentCalculation : System.Web.UI.Page
{
    SqlConnection con  = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter adp;
    public int hrs, ia, mrc, erpk, rpk, totamt;
    string tranid;
    string Mtot;
    public string bkidd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random random = new Random();
        tranid = (Convert.ToString(random.Next(1000000, 9999999)));
        Session["TransactionID"] = "CarRental" + tranid.ToString();

       

      







       // if (Session["geml"] == null && Session["urid"] == null)
        //{
         //  Response.Redirect("DataNotFound.aspx");
        //}

        if (!IsPostBack)
        {
            
            
            BindCtype();
            BindScity();
            BindPlocation();
            // BindLocctyp();
        }

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


                Session["Mnm"]=txtnm.Text;
                Session["Mdob"] = txtdob.Text;
                Session["Mmob"] = txtmob.Text;
                Session["Meml"] = txteml.Text;
                Session["Mgndr"] = RadioButtonList1.SelectedValue;


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
            if (regist == "Googleplus")
            {
                Session["Custmerid"] = dsss.Tables[0].Rows[0]["custid"].ToString();
                txtnm.Text = dsss.Tables[0].Rows[0]["cname"].ToString();
                txtdob.Text = dsss.Tables[0].Rows[0]["dateofbirth"].ToString();
                txtmob.Text = dsss.Tables[0].Rows[0]["mobileno"].ToString();
                txteml.Text = dsss.Tables[0].Rows[0]["emailid"].ToString();
              //  RadioButtonList1.SelectedValue = dsss.Tables[0].Rows[0]["gender"].ToString();


                Session["Gnm"] = txtnm.Text;
                Session["Gdob"] = txtdob.Text;
                Session["Gmob"] = txtmob.Text;
                Session["Geml"] = txteml.Text;
                Session["Ggndr"] = RadioButtonList1.SelectedValue;


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


























    //private void BindLocctyp()
    //{
    //    throw new NotImplementedException();
    //}

    private void BindPlocation()
    {
        SqlCommand cmd = new SqlCommand("select * from LocationDetails", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlpickuplocation.DataSource = dt;
            ddlpickuplocation.DataTextField = "locnm";
            ddlpickuplocation.DataValueField = "locid";
            ddlpickuplocation.DataBind();
            ddlpickuplocation.Items.Insert(0, new ListItem("-Select-", "0"));
        }
       
        con.Close();
    }
    

    private void BindScity()
    {
        SqlCommand cmd1 = new SqlCommand("select * from CityDetails", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlcity.DataSource = dt;
            ddlcity.DataTextField = "ctynm";
            ddlcity.DataValueField = "ctyid";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    }

    private void BindCtype()
    {
                
        SqlCommand cmd2 = new SqlCommand("select * from CarType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            ddlcartype.DataSource = dt;
            ddlcartype.DataTextField = "Ctype";
            ddlcartype.DataValueField = "Ctid";
            ddlcartype.DataBind();
            ddlcartype.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        con.Close();
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       // btnViewHtml.Attributes.Add("onClick", "javascript:getHtml()");
       // GridView1.Visible = true;
       // GridView2.Visible = true;
        GridView3.Visible = true;
        if (ddlcity.SelectedItem.Text != null && ddlcartype.SelectedItem.Text != null && ddlpickuplocation.SelectedItem.Text != null && txtpickupdate.Text != null && txtpickuptime.Text != null && txtreturndate.Text != null && txtreturntime.Text != null)
        {


            Session["rctyp"] = Convert.ToInt32(ddlcartype.SelectedValue);
            //Session["Outstation"] = Label5.Text;

            Session["rcity"] = ddlcity.SelectedItem.Text;
            Session["rcartype"] = ddlcartype.SelectedItem.Text;
            Session["rpickuplocation"] = ddlpickuplocation.SelectedItem.Text;

            DateTime pickdate = Convert.ToDateTime(txtpickupdate.Text);
            DateTime retrundate = Convert.ToDateTime(txtreturndate.Text);
            DateTime picktime = Convert.ToDateTime(txtpickuptime.Text);
            DateTime retruntime = Convert.ToDateTime(txtreturntime.Text);
            TimeSpan datediff = retrundate - pickdate;
            TimeSpan timediff = retruntime - picktime;

            double tripday = datediff.TotalDays;
            double triphours = datediff.TotalHours;
            double triptime = timediff.TotalHours;

            Session["rpickupdate"] = txtpickupdate.Text;
            Session["rretrundate"] = txtreturndate.Text;
            Session["rtripdays"] = tripday;
            Session["rtriphrs"] = triphours + triptime;
            Session["rtripmin"] = triptime;
            if (Convert.ToInt32(tripday) < 1)
            {
                Response.Write("<script>alert('Select Proper Date')</script>");
               // Server.Transfer("RentCalculation.aspx");
            }
            else
            {
                //Response.Redirect("RentCalculation.aspx");
            }

            calculaterent();

            lblsrvc.Text = Session["Outstation"].ToString();
            lblsrc.Text = Session["pickuplocation"].ToString();
            lbldes.Text = Session["city"].ToString();
            lbldays.Text = Session["tripdays"].ToString();
            lblshr.Text = Session["triphrs"].ToString();
            //lblmin.Text = Session["tripmin"].ToString();
            lblpdt.Text = Session["pickupdate"].ToString();
            lblrdt.Text = Session["retrundate"].ToString();



        }
        //if (ddllocalpickuplocation.SelectedItem.Text != "" && ddlcarduratiom.SelectedItem.Text != "" && txtlocalpickupdate.Text != "" && txtlocalpickuptime.Text != "" )
        //{
 
        //}


    }

    private void calculaterent()
    {
        cmd = new SqlCommand("SELECT  cd.Cimages,cd.Insamt,cd.Mtrrd,cd.Erpkm, ct.Ctype,bm.CBrand,cd.Moid,F.Ftype,cd.millege,S.CSeats, cd.Gtype, cd.Crph from CarType ct, BrandName bm, FuelType F, Seaters S,CarDetails cd where cd.Ctid=ct.Ctid and cd.Fid=F.Fid and cd.Sid=s.Sid and cd.Bid=bm.Bid and bm.Ctid=@CID", con);
        // cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CID", Session["rctyp"]);
        //adp = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //adp.Fill(ds);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        DataTable dt= new DataTable();
        da.Fill(ds);
        da.Fill(dt);


        for (int ii = 0; ii <= dt.Rows.Count - 1; ii++)
        {
            //totamt = 0;
            hrs = Convert.ToInt32(Session["rtriphrs"]);
            ia = Convert.ToInt32(ds.Tables[0].Rows[ii]["Insamt"]);
            mrc = Convert.ToInt32(ds.Tables[0].Rows[ii]["Mtrrd"]);
            erpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Erpkm"]);
            rpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Crph"]);
            totamt = (ia / 365) + (hrs * rpk);
            // totamt=totamt + 1;
            //  int tamt = totamt;
            //ii = ii + 1;


            string brnd = ds.Tables[0].Rows[ii]["CBrand"].ToString();
            string ctp = ds.Tables[0].Rows[ii]["Ctype"].ToString();
            string mtr = ds.Tables[0].Rows[ii]["Mtrrd"].ToString();
            string cimg = ds.Tables[0].Rows[ii]["Cimages"].ToString();
            //string crnam = ds.Tables[0].Rows[0]["cname"].ToString();
            string fl = ds.Tables[0].Rows[ii]["Ftype"].ToString();
            string ml = ds.Tables[0].Rows[ii]["Moid"].ToString();
            string st = ds.Tables[0].Rows[ii]["CSeats"].ToString();
            string gr = ds.Tables[0].Rows[ii]["Gtype"].ToString();
            string rph = ds.Tables[0].Rows[ii]["Crph"].ToString();








            con.Open();
            SqlCommand cmdd = new SqlCommand("insert into RentcalculationDetails(rimg,rtyp,rbnm,rf,rm,rst,rgr,rrph,rtot,custid,rmetr) values (@rimg,@rtyp,@rbnm,@rf,@rm,@rst,@rgr,@rrph,@rtot,@ctid,'"+mtr+"')", con);
            cmdd.Parameters.AddWithValue("@rimg", cimg);
            // cmd.Parameters.AddWithValue("@rnm", crnam);
            cmdd.Parameters.AddWithValue("@rtyp", ctp);
            cmdd.Parameters.AddWithValue("@rbnm", brnd);
            cmdd.Parameters.AddWithValue("@rf", fl);
            cmdd.Parameters.AddWithValue("@rm", ml);
            cmdd.Parameters.AddWithValue("@rst", st);
            cmdd.Parameters.AddWithValue("@rgr", gr);
            cmdd.Parameters.AddWithValue("@rrph", rph);
            cmdd.Parameters.AddWithValue("@rtot", totamt);
            cmdd.Parameters.AddWithValue("@ctid", Session["Custmerid"]);

            // try
            //{
            cmdd.ExecuteNonQuery();
           // Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
            //Server.Transfer("Payment.aspx");


            con.Close();
            //GridView3.DataSource = ds;
            //GridView3.DataBind();







        }

























        //if (ds.Tables[0].Rows.Count > 0)
        //{


        //    hrs = Convert.ToInt32(Session["rtriphrs"]);
        //    ia = Convert.ToInt32(ds.Tables[0].Rows[0]["Insamt"]);
        //    mrc = Convert.ToInt32(ds.Tables[0].Rows[0]["Mtrrd"]);
        //    erpk = Convert.ToInt32(ds.Tables[0].Rows[0]["Erpkm"]);
        //    rpk = Convert.ToInt32(ds.Tables[0].Rows[0]["Crph"]);


        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {


        //        totamt = (ia / 365) + (hrs * rpk);

        //        string brnd = ds.Tables[0].Rows[i]["CBrand"].ToString();
        //        string ctp = ds.Tables[0].Rows[i]["Ctype"].ToString();

        //        string cimg = ds.Tables[0].Rows[i]["Cimages"].ToString();
        //        //string crnam = ds.Tables[0].Rows[0]["cname"].ToString();
        //        string fl = ds.Tables[0].Rows[i]["Ftype"].ToString();
        //        string ml = ds.Tables[0].Rows[i]["Moid"].ToString();
        //        string st = ds.Tables[0].Rows[i]["CSeats"].ToString();
        //        string gr = ds.Tables[0].Rows[i]["Gtype"].ToString();
        //        string rph = ds.Tables[0].Rows[i]["Crph"].ToString();
        //        //string  tot= ds.Tables[0].Rows[0]["cname"].ToString();



               // con.Open();
               // SqlCommand cmdd = new SqlCommand("insert into RentcalculationDetails(rimg,rtyp,rbnm,rf,rm,rst,rgr,rrph,rtot) values (@rimg,@rtyp,@rbnm,@rf,@rm,@rst,@rgr,@rrph,@rtot)", con);
               // cmdd.Parameters.AddWithValue("@rimg", cimg);
               //// cmd.Parameters.AddWithValue("@rnm", crnam);
               // cmdd.Parameters.AddWithValue("@rtyp", ctp);
               // cmdd.Parameters.AddWithValue("@rbnm", brnd);
               // cmdd.Parameters.AddWithValue("@rf", fl);
               // cmdd.Parameters.AddWithValue("@rm", ml);
               // cmdd.Parameters.AddWithValue("@rst", st);
               // cmdd.Parameters.AddWithValue("@rgr", gr);
               // cmdd.Parameters.AddWithValue("@rrph", rph);
               // cmdd.Parameters.AddWithValue("@rtot", totamt);

               //// try
               // //{
               //     cmdd.ExecuteNonQuery();
               //     Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
               //     //Server.Transfer("Payment.aspx");
               // //}
                //catch (Exception)
                //{
                  //  Response.Write("<script>alert('Pre-Booking has not done')</script>");
                   // Server.Transfer("CRentSummary.aspx");
                //}
                //finally
                //{
                    //con.Close();
                //}


















        //    }




        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // GridView1.Visible = true;
       // GridView2.Visible = true;
        //if (ddllocalpickuplocation.SelectedItem.Text != "" && ddlcarduratiom.SelectedItem.Text != "" && txtlocalpickupdate.Text != "" && txtlocalpickuptime.Text != "")
        //{
        //    //Session["rlocals"] = Label4.Text;
        //    //Session["rloctyp"] = drpctyp.SelectedItem.Text;
        //    Session["rpickloc"] = ddllocalpickuplocation.SelectedItem.Text;
        //    Session["rdur"] = ddlcarduratiom.SelectedItem.Text;
        //    Session["rpickd"] = txtlocalpickupdate.Text;
        //    Session["rpickt"] = txtlocalpickuptime.Text;



        //    // DateTime pickdt = Convert.ToDateTime(txtpdtloc.Text);
        //    // DateTime picktm = Convert.ToDateTime(txtptmloc.Text);

        //    // double pdt = pickdt.AddHours;
        //    //if (Convert.ToInt32(pickdt) < 1)
        //    //{
        //    //Response.Write("<script>alert('Select Proper Date')</script>");
        //    // Server.Transfer("Indexx.aspx");
        //    // }
        //    // else
        //    // {
        //   // Response.Redirect("CRentSummary.aspx");
        //    //}

        //}
    }


    //protected void Button3_Click (object sender, EventArgs e)
    //{
    //    Button btn = (Button)sender;
    //    string args = btn.CommandArgument;

    //    Session["totamt"] = args;
    //    //Response.Redirect("BookCar.aspx");

    //    Panel1.Visible = false;
    //    Panel2.Visible = true;
    //    GridView1.Visible = false;
    //    GridView2.Visible = false;
    //    Panel3.Visible = false;

    //}



    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //Panel1.Visible = false;
        //Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        //Panel5.Visible = true;

        Label21.Text = Session["TransactionID"].ToString();
        Label22.Text = Session["mtotl"].ToString();

        if (Session["Sseml"] != null && Session["Custmerid"] != null)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BookingDeatils(bkimg,bkcname,bkftyp,bkmillege,bkmeeter,bkseater,bkgeartype,bkrateperhr,bkseml,bksuid,bkdrvlinc,bkaddhaarno,bktc,bkpaymentstatus,bktotalamt,custid,bkreturndate,bkpickupdate,bkdate,bktransid) values (@bkimg,@bkcnm,@bkftyp,@bkmlg,'" + Session["mmtr"] + "',@bksetr,@bkgtyp,@bkrphr,@bksemlid,@bksurid,@bkdrv,@bkadhr,@bktc,'Unpaid',@bktot,@bkcstid,@bkpdate,bkrdate,'" + DateTime.Now.ToString() + "',@transid)", con);
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
            cmd.Parameters.AddWithValue("@bktot", Session["mtotl"].ToString());
            cmd.Parameters.AddWithValue("@bkcstid", Session["Custmerid"].ToString());
            cmd.Parameters.AddWithValue("@bkpdate", Session["pickupdate"].ToString());
            cmd.Parameters.AddWithValue("@bkrdate", Session["retrundate"].ToString());
            cmd.Parameters.AddWithValue("@transid", Session["TransactionID"].ToString());

            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
               // Response.Redirect("Payment.aspx");
                // Server.Transfer("Payment.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Pre-Booking has not done')</script>");
               // Server.Transfer("Payment.aspx");
            }
            finally
            {
                con.Close();
            }




        }
        if (Session["geml"] != null && Session["Custmerid"] != null)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BookingDetails(bkimg,bkcname,bkftype,bkmodl,bkmeeter,bkseater,bkgeartype,bkrateperhr,bkseml,bksuid,bkdrivlinc,bkadhaarno,bktc,bkpaymentstatus,bktotalamt,custid,bkpickupdate,bkreturndate,bkdate,bktransid) values (@bkimge,@bkcnm,@bkftyp,@bkmlg,'" + Session["mmtr"] + "',@bksetr,@bkgtyp,@bkrphr,@bksemlid,@bksurid,@bkdrv,@bkadhr,@bktc,'Unpaid',@bktot,@bkcstid,@bkpdate,@bkrdate,'" + DateTime.Now.ToString() + "',@transid)", con);
            cmd.Parameters.AddWithValue("@bkimge", Session["mimage"].ToString());
            cmd.Parameters.AddWithValue("@bkcnm", Session["mtype"].ToString());
            cmd.Parameters.AddWithValue("@bkftyp", Session["mful"].ToString());
            cmd.Parameters.AddWithValue("@bkmlg", Session["mmo"].ToString());
            cmd.Parameters.AddWithValue("@bksetr", Session["mseater"].ToString());
            cmd.Parameters.AddWithValue("@bkgtyp", Session["mgeartype"].ToString());
            cmd.Parameters.AddWithValue("@bkrphr", Session["mrateperhr"].ToString());
            cmd.Parameters.AddWithValue("@bksemlid", Session["geml"].ToString());
           cmd.Parameters.AddWithValue("@bksurid", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@bkdrv", txtdrvlicn.Text);
            cmd.Parameters.AddWithValue("@bkadhr", txtadhaarno.Text);
            cmd.Parameters.AddWithValue("@bktc", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@bktot", Session["mtotl"].ToString());
            cmd.Parameters.AddWithValue("@bkcstid", Session["Custmerid"].ToString());
            cmd.Parameters.AddWithValue("@bkpdate", Session["rpickupdate"].ToString());
            cmd.Parameters.AddWithValue("@bkrdate", Session["rretrundate"].ToString());
            cmd.Parameters.AddWithValue("@transid", Session["TransactionID"].ToString());

            


           // try
           // {
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
               // Response.Redirect("Payment.aspx");   
            // Server.Transfer("Payment.aspx");
           // }
           // catch (Exception)
           // {
             //   Response.Write("<script>alert('Pre-Booking has not done')</script>");
              //  Server.Transfer("CRentSummary.aspx");
            //}
           // finally
            //{
                con.Close();
            //}

        }





        if (Session["urid"] != null && Session["Custmerid"] != null)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into BookingDetails(bkimg,bkcname,bkftype,bkmodl,bkmeeter,bkseater,bkgeartype,bkrateperhr,bkseml,bksuid,bkdrivlinc,bkadhaarno,bktc,bkpaymentstatus,bktotalamt,custid,bkpickupdate,bkreturndate,bkdate,bktransid) values (@bkimge,@bkcnm,@bkftyp,@bkmodle," + Session["mmtr"] + ",@bksetr,@bkgtyp,@bkrphr,@bksemlid,@bksurid,@bkdrv,@bkadhr,@bktc,'Unpaid',@bktot,@bkcstid,@bkpdate,@bkrdate,'" + DateTime.Now.ToString() + "',@transid)", con);
            cmd.Parameters.AddWithValue("@bkimge", Session["mimage"].ToString());
            cmd.Parameters.AddWithValue("@bkcnm", Session["mtype"].ToString());
            cmd.Parameters.AddWithValue("@bkftyp", Session["mful"].ToString());
            cmd.Parameters.AddWithValue("@bkmodle", Session["mmo"].ToString());
            cmd.Parameters.AddWithValue("@bksetr", Session["mseater"].ToString());
            cmd.Parameters.AddWithValue("@bkgtyp", Session["mgeartype"].ToString());
            cmd.Parameters.AddWithValue("@bkrphr", Session["mrateperhr"].ToString());
            cmd.Parameters.AddWithValue("@bksemlid", Session["urid"].ToString());
            cmd.Parameters.AddWithValue("@bksurid", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@bkdrv", txtdrvlicn.Text);
            cmd.Parameters.AddWithValue("@bkadhr", txtadhaarno.Text);
            cmd.Parameters.AddWithValue("@bktc", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@bktot", Session["mtotl"].ToString());
            cmd.Parameters.AddWithValue("@bkcstid", Session["Custmerid"].ToString());
            cmd.Parameters.AddWithValue("@bkpdate", Session["rpickupdate"].ToString());
            cmd.Parameters.AddWithValue("@bkrdate", Session["rretrundate"].ToString());
            cmd.Parameters.AddWithValue("@transid", Session["TransactionID"].ToString());

            //Session["mimage"] = Mimg;
            //Session["mtype"] = Mtyp;
            //Session["mbnam"] = Mbnm;
            //Session["mmo"] = Mmodl;
            //Session["mseater"] = Msetr;
            //Session["mful"] = Mfl;
            //Session["mrateperhr"] = Mrphr;
            //Session["mgeartype"] = Mgr;
            //Session["mtotl"] = Mtot;








            // try
            // {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('You have done your Pre-Booking.\n Make Payment for Confirm Booking.')</script>");
           // Response.Redirect("Payment.aspx");
            //Server.Transfer("Payment.aspx");
            // }
            // catch (Exception)
            // {
            //   Response.Write("<script>alert('Pre-Booking has not done')</script>");
            //  Server.Transfer("CRentSummary.aspx");
            //}
            // finally
            //{
            con.Close();
            //}

        }

























    }
   

protected void btnbook_Click(object sender, EventArgs e)
{
    Button btn = (Button)sender;
    string args = btn.CommandArgument;

   // Session["totamt"] = args;

    GridViewRow gr = (GridViewRow)btn.NamingContainer;
    string Mimg = gr.Cells[0].Text.Trim();
    string Mtyp = gr.Cells[1].Text.Trim();
    string Mbnm = gr.Cells[2].Text.Trim();
    string Mmodl = gr.Cells[3].Text.Trim();
    string Msetr = gr.Cells[4].Text.Trim();
    string Mfl = gr.Cells[5].Text.Trim();
    string Mrphr = gr.Cells[6].Text.Trim();
    string Mgr = gr.Cells[7].Text.Trim();
    string Mtot = gr.Cells[8].Text.Trim();

    Session["mimage"] = Mimg;
    Session["mtype"] = Mtyp;
    Session["mbnam"] = Mbnm;
    Session["mmo"] = Mmodl;
    Session["mseater"] = Msetr;
    Session["mful"] = Mfl;
    Session["mrateperhr"] = Mrphr;
    Session["mgeartype"] = Mgr;
    Session["mtotl"] = Mtot;

}
protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
{

}
protected void Button6_Command(object sender, CommandEventArgs e)
{
    Button btn = (Button)sender;
    string args = btn.CommandArgument;

    // Session["totamt"] = args;

    GridViewRow gr = (GridViewRow)btn.NamingContainer;
    string Mimg = gr.Cells[0].Text.Trim();
    string Mtyp = gr.Cells[1].Text.Trim();
    string Mbnm = gr.Cells[2].Text.Trim();
    string Mmodl = gr.Cells[3].Text.Trim();
    string Msetr = gr.Cells[4].Text.Trim();
    string Mfl = gr.Cells[5].Text.Trim();
    string Mrphr = gr.Cells[6].Text.Trim();
    string Mgr = gr.Cells[7].Text.Trim();
    string Mtot = gr.Cells[8].Text.Trim();

    Session["mimage"] = Mimg;
    Session["mtype"] = Mtyp;
    Session["mbnam"] = Mbnm;
    Session["mmo"] = Mmodl;
    Session["mseater"] = Msetr;
    Session["mful"] = Mfl;
    Session["mrateperhr"] = Mrphr;
    Session["mgeartype"] = Mgr;
    Session["mtotl"] = Mtot;

}
protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
{
    Panel1.Visible = false;
    Panel2.Visible = true;
    //GridView1.Visible = false;
    //GridView2.Visible = false;
    GridView3.Visible = false;
    Panel3.Visible = false;

   // GridViewRow gr = GridView3.SelectedRow;

    string Mimg = GridView3.SelectedRow.Cells[1].Text.ToString();
    string Mtyp = GridView3.SelectedRow.Cells[2].Text.Trim();
    string Mbnm = GridView3.SelectedRow.Cells[3].Text.Trim();
    string Mmodl = GridView3.SelectedRow.Cells[5].Text.Trim();
    string Msetr = GridView3.SelectedRow.Cells[6].Text.Trim();
    string Mfl = GridView3.SelectedRow.Cells[4].Text.Trim();
    string Mrphr = GridView3.SelectedRow.Cells[8].Text.Trim();
    string Mgr = GridView3.SelectedRow.Cells[9].Text.Trim();
    string Mtot = GridView3.SelectedRow.Cells[7].Text.Trim();
    string Metr  = GridView3.SelectedRow.Cells[10].Text.Trim();

    Session["mimage"] = Mimg;
    Session["mtype"] = Mtyp;
    Session["mbnam"] = Mbnm;
    Session["mmo"] = Mmodl;
    Session["mseater"] = Msetr;
    Session["mful"] = Mfl;
    Session["mrateperhr"] = Mrphr;
    Session["mgeartype"] = Mgr;
    Session["mtotl"] = Mtot;
    Session["mmtr"] = Metr;

}
protected void btndebit_Click(object sender, EventArgs e)
{
    //Panel1.Visible = false;
    //Panel2.Visible = false;
    //Panel3.Visible = false;
    Panel4.Visible = true;
    Panel5.Visible = true;
    
}
protected void btnpayment_Click(object sender, EventArgs e)
{
    if (Label21.Text != null && Label22.Text != null)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into PaymentDetails(custid,paymethod,tranid,cardtype,cardno,nameoncard,cvvno,expmonth,expyear,totalamt,bkid) values ('" + Session["Custmerid"] + "',@pym,@tid,@cdtyp,@cdno,@nmoncd,@cno,@emnth,@eyr,@tot,'"+bkidd+"')", con);
        cmd.Parameters.AddWithValue("@pym", Label21.Text);
        cmd.Parameters.AddWithValue("@tid", Label21.Text);
        cmd.Parameters.AddWithValue("@cdtyp", ddlcardtype.SelectedValue);
        cmd.Parameters.AddWithValue("@cdno", txtcno.Text);
        cmd.Parameters.AddWithValue("@nmoncd", txtnameoncard.Text);
        cmd.Parameters.AddWithValue("@cno", txtcvvno.Text);
        cmd.Parameters.AddWithValue("@emnth", ddlmonth.SelectedValue);
        cmd.Parameters.AddWithValue("@eyr", ddlyear.SelectedValue);
        cmd.Parameters.AddWithValue("@tot", Label22.Text);

        cmd.ExecuteNonQuery();
        selectbkid();
        sendcode();
        updatepaymentstatus();
        Response.Write("<script>alert('Your Payment done successfully.')</script>");
        Response.Redirect("RentCalculation.aspx");

    }
}



private void sendcode()
{
    SmtpClient smtp = new SmtpClient();
    smtp.Host = "smtp.gmail.com";
    smtp.Port = 587;
    smtp.Credentials = new System.Net.NetworkCredential("carrentalsys220@gmail.com", "Car@12345");
    smtp.EnableSsl = true;
    MailMessage msg = new MailMessage();
    msg.Subject = "To Successfull Booking Done ( Car Rental System )";
    msg.Body = "Dear " + txteml.Text + ", Your Transaction ID  " + Label21.Text + ", For Payment of Rs. "+ Label22.Text+" To Booking our Car \n\n\nThanks & Regards\n Car Rental System";
    string toaddress = txteml.Text;
    msg.To.Add(toaddress);
    string fromaddress = "Car Rental System <carrentalsys220@gmail.com>";
    msg.From = new MailAddress(fromaddress);
    try
    {
        smtp.Send(msg);


    }
    catch
    {
        throw;
    }
}



private void selectbkid()
{
    cmd = new SqlCommand("SELECT bkid from BookingDetails where custid='"+Session["Custmerid"] +"' and bkpaymentstatus='Unpaid'", con);
      
       // cmd.Parameters.AddWithValue("@CID", Session["rctyp"]);
       
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        DataTable dt= new DataTable();
        da.Fill(ds);
        da.Fill(dt);


        for (int ii = 0; ii <= dt.Rows.Count - 1; ii++)
        {


           bkidd = ds.Tables[0].Rows[ii]["bkid"].ToString();

           
        }
}

private void updatepaymentstatus()
{
    String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    // String updatedata = "update Emailverify set status='Verified' where emailid='" + Request.QueryString["emailadd"] + "'";
    String updatedata = "Update BookingDetails set bkpaymentstatus='Paid'" + " where custid=" + Session["Custmerid"];
    SqlConnection con = new SqlConnection(mycon);
    con.Open();
    SqlCommand cmd = new SqlCommand();
    cmd.CommandText = updatedata;
    cmd.Connection = con;
    cmd.ExecuteNonQuery();

}
}