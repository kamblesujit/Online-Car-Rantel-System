using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CRentSummary : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter adp;
   public  int hrs, ia, mrc, erpk,rpk,totamt;
   public int amt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Outstation"] != null && Session["pickuplocation"] != null && Session["city"] != null && Session["tripdays"] != null && Session["triphrs"] != null && Session["pickupdate"] != null && Session["retrundate"] != null )
        {
        
        lblsrvc.Text=Session["Outstation"].ToString();
        lblsrc.Text = Session["pickuplocation"].ToString();
        lbldes.Text = Session["city"].ToString();
        lbldays.Text = Session["tripdays"].ToString();
        lblshr.Text = Session["triphrs"].ToString();
        //lblmin.Text = Session["tripmin"].ToString();
        lblpdt.Text = Session["pickupdate"].ToString();
        lblrdt.Text = Session["retrundate"].ToString();

        Session["pdt"] = lblpdt.Text;
        Session["rdt"] = lblrdt.Text;



       // cmd = new SqlCommand("SELECT cd.Cimages,cd.Insamt,cd.Mtrrd,cd.Erpkm, ct.Ctype,bm.CBrand,cd.Moid,F.Ftype,cd.millege,S.CSeats, cd.Gtype, cd.Crph from CarType ct, BrandName bm, FuelType F, Seaters S,CarDetails cd where cd.Ctid=ct.Ctid and cd.Fid=F.Fid and cd.Sid=s.Sid and cd.Bid=bm.Bid and bm.Ctid=@CID", cn);
       //// cmd.CommandType = CommandType.StoredProcedure;
       // cmd.Parameters.AddWithValue("@CID",Session["ctyp"]);
       // adp = new SqlDataAdapter(cmd);
       // DataSet ds = new DataSet();
       // DataTable dt=new DataTable();
       // adp.Fill(dt);
       // adp.Fill(ds);

        



       // //DataTable dtt = new DataTable();
       // //dtt= (DataTable)Session["buyitems"];
       // //int nrow = dtt.Rows.Count;
       // //int i = 0;
       // //int gtotal = 0;
       // //while (i < nrow)
       // //{
       // //    gtotal = gtotal + (ia / 365) + (hrs * rpk);

       // //    i = i + 1;
       // //}



       // for (int ii = 0; ii <= dt.Rows.Count-1; ii++)
       // {
       //     //totamt = 0;
       //     hrs = Convert.ToInt32(Session["triphrs"]);
       //     ia = Convert.ToInt32(ds.Tables[0].Rows[ii]["Insamt"]);
       //     mrc = Convert.ToInt32(ds.Tables[0].Rows[ii]["Mtrrd"]);
       //     erpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Erpkm"]);
       //     rpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Crph"]);
       //     totamt = (ia / 365) + (hrs * rpk);
       //     // totamt=totamt + 1;
       //  //  int tamt = totamt;
       //     //ii = ii + 1;
            

       // }


        calculaterent();


        }


        if (Session["loctyp"] != null && Session["locals"] != null && Session["pickloc"] != null && Session["dur"] != null && Session["pickd"] != null && Session["pickt"] != null)
        {
            lblsrvc.Text = Session["locals"].ToString();
            lblsrc.Text = Session["pickloc"].ToString();
            lbldes.Text = Session["dur"].ToString();
            lbldays.Text = Session["pickd"].ToString();
            lblshr.Text = Session["pickt"].ToString();
            //lblmin.Text = Session["tripmin"].ToString();
            lblpdt.Enabled = false;
            lblrdt.Enabled = false;
          
           
        }





    }

    private void calculaterent()
    {
        cmd = new SqlCommand("SELECT  cd.Cimages,cd.Insamt,cd.Mtrrd,cd.Erpkm, ct.Ctype,bm.CBrand,cd.Moid,F.Ftype,cd.millege,S.CSeats, cd.Gtype, cd.Crph from CarType ct, BrandName bm, FuelType F, Seaters S,CarDetails cd where cd.Ctid=ct.Ctid and cd.Fid=F.Fid and cd.Sid=s.Sid and cd.Bid=bm.Bid and bm.Ctid=@CID", cn);
        cmd.Parameters.AddWithValue("@CID", Session["ctyp"]);

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        da.Fill(dt);


        for (int ii = 0; ii <= dt.Rows.Count - 1; ii++)
        {
            hrs = Convert.ToInt32(Session["triphrs"]);
            ia = Convert.ToInt32(ds.Tables[0].Rows[ii]["Insamt"]);
            mrc = Convert.ToInt32(ds.Tables[0].Rows[ii]["Mtrrd"]);
            erpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Erpkm"]);
            rpk = Convert.ToInt32(ds.Tables[0].Rows[ii]["Crph"]);
            totamt = (ia / 365) + (hrs * rpk);


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








            cn.Open();
            SqlCommand cmdd = new SqlCommand("insert into RentcalculationDetails(rimg,rtyp,rbnm,rf,rm,rst,rgr,rrph,rtot,rmetr) values (@rimg,@rtyp,@rbnm,@rf,@rm,@rst,@rgr,@rrph,@rtot,'" + mtr + "')", cn);
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
           // cmdd.Parameters.AddWithValue("@ctid", Session["Custmerid"]);

            cmdd.ExecuteNonQuery();

            cn.Close();


        }





    }


    //protected void OnSelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //Accessing BoundField Column
    //    string name = GridView1.SelectedRow.Cells[0].Text;
    //    string simg = GridView1.SelectedRow.Cells[1].Text;
    //    string scnm = GridView1.SelectedRow.Cells[2].Text;
        
    //    //Accessing TemplateField Column controls
    //    //string country = (GridView1.SelectedRow.FindControl("LinkButton1") as Label).Text;

    //    //lblValues.Text = "<b>Name:</b> " + name + " <b>Country:</b> " + country;
    //}

    //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow gr = GridView2.SelectedRow;
    //    string simg = gr.Cells[0].Text.Trim();
    //    string scnm = gr.Cells[1].Text.Trim();
    //    string sftyp = gr.Cells[2].Text.Trim();
    //    string smlge = gr.Cells[3].Text.Trim();
    //    string ssetr = gr.Cells[4].Text.Trim();
    //    string sgrty = gr.Cells[5].Text.Trim();
    //    string srphr = gr.Cells[6].Text.Trim();

    //    Session["Simage"] = simg;
    //    Session["Scname"] = scnm;
    //    Session["Sftype"] = sftyp;
    //    Session["Smillege"] = smlge;
    //    Session["Sseater"] = ssetr;
    //    Session["Sgeartype"] = sgrty;
    //    Session["Srateperhr"] = srphr;

    //    Response.Redirect("Registration.aspx");
    //}


    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
    //    string simg = gr.Cells[0].Text.Trim();
    //    string scnm = gr.Cells[1].Text.Trim();
    //    string sftyp = gr.Cells[2].Text.Trim();
    //    string smlge = gr.Cells[3].Text.Trim();
    //    string ssetr = gr.Cells[4].Text.Trim();
    //    string sgrty = gr.Cells[5].Text.Trim();
    //    string srphr = gr.Cells[6].Text.Trim();

    //    Session["Simage"] = simg;
    //    Session["Scname"] = scnm;
    //    Session["Sftype"] = sftyp;
    //    Session["Smillege"] = smlge;
    //    Session["Sseater"] = ssetr;
    //    Session["Sgeartype"] = sgrty;
    //    Session["Srateperhr"] = srphr;

    //    Response.Redirect("Registration.aspx");
    //}

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "Details")
    //    {


    //        //string simg = GridView1.SelectedRow.Cells[1].Text;

    //        //Session["ww"] = simg;
    //        //Session["ww"] = GridView1.SelectedDataKey;
    //        //Session["ww"] = e.CommandArgument;
    //        //Session["ww"] = GridView1.SelectedDataKey;
    //        //string simg = GridView1.SelectedRow.Cells[1].Text;

    //        //Session["img"] = simg;
    //        //string nm  = GridView1.SelectedRow.Cells[2].Text;

    //        //Session["cnm"] = nm;





    //        GridViewRow gr = (GridViewRow)((LinkButton)e.CommandSource).NamingContainer;

    //        ////GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
    //        string simg = gr.Cells[0].Text.Trim();
    //        string scnm = gr.Cells[1].Text.Trim();
    //        string sftyp = gr.Cells[2].Text.Trim();
    //        string smlge = gr.Cells[3].Text.Trim();
    //        string ssetr = gr.Cells[4].Text.Trim();
    //        string sgrty = gr.Cells[5].Text.Trim();
    //        string srphr = gr.Cells[6].Text.Trim();

    //        Session["Simage"] = simg;
    //        Session["Scname"] = scnm;
    //        Session["Sftype"] = sftyp;
    //        Session["Smillege"] = smlge;
    //        Session["Sseater"] = ssetr;
    //        Session["Sgeartype"] = sgrty;
    //        Session["Srateperhr"] = srphr;

    //        Response.Redirect("Registration.aspx");
    //    }
    //}

    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    Button btn = (Button)sender;
    //    string args = btn.CommandArgument;
        
    //     Session["totamt"] = args;

    //     GridViewRow gr  = (GridViewRow)btn.NamingContainer;

    //    // GridViewRow gr = ((sender as Button).NamingContainer as GridViewRow);
    //     string simg = gr.Cells[0].Text.Trim();
    //     string scnm = gr.Cells[1].Text.Trim();
    //     string sftyp = gr.Cells[2].Text.Trim();
    //     string smlge = gr.Cells[3].Text.Trim();
    //     string ssetr = gr.Cells[4].Text.Trim();
    //     string sgrty = gr.Cells[5].Text.Trim();
    //     string srphr = gr.Cells[6].Text.Trim();

    //     Session["Simage"] = simg;
    //     Session["Scname"] = scnm;
    //     Session["Sftype"] = sftyp;
    //     Session["Smillege"] = smlge;
    //     Session["Sseater"] = ssetr;
    //     Session["Sgeartype"] = sgrty;
    //     Session["Srateperhr"] = srphr;
        
    //     Response.Redirect("Registration.aspx");
    //    //Request.QueryString["Cust_id"] = args;
    //    //Response.Redirect("Request.QueryString['Cust_id']=" + args);
    //   // Panel1.Visible = false;
    //   // Panel2.Visible = true;
    //}




    ////protected void lnkRequestID_Click(object sender, CommandEventArgs e)
    ////{
    ////    //GridViewRow gv  = (GridViewRow)((LinkButton)e.CommandSource).NamingContainer;
    ////    Session["ABC"] = GridView1.SelectedDataKey.Value;

    ////    var lb = (LinkButton)sender;
    ////    var row = (GridViewRow)lb.NamingContainer;
    ////    if (row != null)
    ////    {
    ////        var lblRequestor = row.FindControl("lblRequestor") as Label;
    ////        var lblRequestType = row.FindControl("lblRequestType") as Label;
    ////        var lblStatus = row.FindControl("lblStatus") as Label;

    ////        if (lblRequestType != null && lblRequestor != null && lblStatus != null)
    ////        {
    ////            //Get values
    ////            string requestor = lblRequestor.Text;
    ////            string requestType = lblRequestType.Text;
    ////            string status = lblStatus.Text;
    ////        }

    ////    }

    ////}

    //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
   // {


        //if (e.CommandName == "Booknow")
        //{



        //    DataList gr = (DataList)((Button)e.CommandArgument).NamingContainer;

        //    ////GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
        //    string simg = gr.Cells[0].Text.Trim();
        //    string scnm = gr.Cells[1].Text.Trim();
        //    string sftyp = gr.Cells[2].Text.Trim();
        //    string smlge = gr.Cells[3].Text.Trim();
        //    string ssetr = gr.Cells[4].Text.Trim();
        //    string sgrty = gr.Cells[5].Text.Trim();
        //    string srphr = gr.Cells[6].Text.Trim();

        //    Session["Simage"] = simg;
        //    Session["Scname"] = scnm;
        //    Session["Sftype"] = sftyp;
        //    Session["Smillege"] = smlge;
        //    Session["Sseater"] = ssetr;
        //    Session["Sgeartype"] = sgrty;
        //    Session["Srateperhr"] = srphr;




        //   // DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        //    Response.Redirect("Registration.aspx?Moid=" + e.CommandArgument.ToString());

        //}


        //if (e.CommandName == "Details")
        //{



        //    GridViewRow gr = (GridViewRow)((LinkButton)e.CommandSource).NamingContainer;

        //    ////GridViewRow gr = ((sender as LinkButton).NamingContainer as GridViewRow);
        //    string simg = gr.Cells[0].Text.Trim();
        //    string scnm = gr.Cells[1].Text.Trim();
        //    string sftyp = gr.Cells[2].Text.Trim();
        //    string smlge = gr.Cells[3].Text.Trim();
        //    string ssetr = gr.Cells[4].Text.Trim();
        //    string sgrty = gr.Cells[5].Text.Trim();
        //    string srphr = gr.Cells[6].Text.Trim();

        //    Session["Simage"] = simg;
        //    Session["Scname"] = scnm;
        //    Session["Sftype"] = sftyp;
        //    Session["Smillege"] = smlge;
        //    Session["Sseater"] = ssetr;
        //    Session["Sgeartype"] = sgrty;
        //    Session["Srateperhr"] = srphr;

        //    Response.Redirect("Registration.aspx");
        //}
    //}
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

       
        string Mimg = GridView4.SelectedRow.Cells[0].Text.Trim();
        string Mtyp = GridView4.SelectedRow.Cells[2].Text.Trim();
        string Mbnm = GridView4.SelectedRow.Cells[3].Text.Trim();
        string Mmodl = GridView4.SelectedRow.Cells[5].Text.Trim();
        string Msetr = GridView4.SelectedRow.Cells[6].Text.Trim();
        string Mfl = GridView4.SelectedRow.Cells[4].Text.Trim();
        string Mrphr = GridView4.SelectedRow.Cells[8].Text.Trim();
        string Mgr = GridView4.SelectedRow.Cells[9].Text.Trim();
        string Mtot = GridView4.SelectedRow.Cells[7].Text.Trim();

        Session["mimage"] = Mimg;
        Session["mtype"] = Mtyp;
        Session["mbnam"] = Mbnm;
        Session["mmo"] = Mmodl;
        Session["mseater"] = Msetr;
        Session["mful"] = Mfl;
        Session["mrateperhr"] = Mrphr;
        Session["mgeartype"] = Mgr;
        Session["mtotl"] = Mtot;

        Response.Redirect("Registration.aspx");



    }
}