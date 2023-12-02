using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AddCarDetails : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    static int cnvt;
    string fp;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCtype();
           // refreshdata();  
            
         
        }
    }

    //private void refreshdata()
    //{
    //    SqlConnection con = new SqlConnection(mycon);
    //    con.Open();

    //    SqlCommand cmd1 = new SqlCommand("select * from CarDetails", con);
    //    SqlDataAdapter sda = new SqlDataAdapter(cmd1);
    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    con.Close();
    //    GridView2.DataSource = dt;
    //    GridView2.DataBind();  
         
    //}


    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        SqlConnection con = new SqlConnection(mycon);
    //        con.Open();
    //        DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);



    //        //SqlConnection con = new SqlConnection(mycon);
    //        SqlCommand cmd = new SqlCommand("select * from FuelType ", con);
    //       // con.Open();
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        if (dt.Rows.Count != 0)
    //        {
    //            DropDownList1.DataSource = dt;
    //            DropDownList1.DataTextField = "Ftype";
    //            DropDownList1.DataValueField = "Fid";
    //            DropDownList1.DataBind();
    //            DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));
    //        }







    //        //SqlCommand cmd = new SqlCommand("select * from BrandName", con);
    //        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
    //        //DataTable dt = new DataTable();
    //        //sda.Fill(dt);
    //        //con.Close();
    //        //DropDownList1.DataSource = dt;

    //        //DropDownList1.DataTextField = "CBrand";
    //        //DropDownList1.DataValueField = "Bid";
    //        //DropDownList1.DataBind();
    //        //DropDownList1.Items.Insert(0, new ListItem("--Select --", "0"));
    //     }

    //}



    private void BindCseater()
    {
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from Seaters", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpseats.DataSource = dt;
            drpseats.DataTextField = "CSeats";
            drpseats.DataValueField = "Sid";
            drpseats.DataBind();
            drpseats.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }

    private void BindCfueltype()
    {        
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from FuelType", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpftype.DataSource = dt;
            drpftype.DataTextField = "Ftype";
            drpftype.DataValueField = "Fid";
            drpftype.DataBind();
            drpftype.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }

    private void BindCmodel()
    {        
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select Mname from BrandName where Bid='"+drpbname.SelectedValue+"'", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpmname.DataSource = dt;
            drpmname.DataTextField = "Mname";
            drpmname.DataValueField = "Mname";
            drpmname.DataBind();
            drpmname.Items.Insert(0, new ListItem("-Select-", "0"));
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
            dprctyp.DataSource = dt;
            dprctyp.DataTextField = "Ctype";
            dprctyp.DataValueField = "Ctid";
            dprctyp.DataBind();
            dprctyp.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
    private void BindCbrand()
    {        
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from BrandName where Ctid='"+dprctyp.SelectedValue+"'", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            drpbname.DataSource = dt;
            drpbname.DataTextField = "CBrand";
            drpbname.DataValueField = "Bid";
            drpbname.DataBind();
            drpbname.Items.Insert(0, new ListItem("-Select-", "0"));
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(mycon);
        fp = "~/Images/UploadedImages/" + fpimage.FileName;
        fpimage.PostedFile.SaveAs(Server.MapPath(fp));
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into CarDetails values(@cty,@bnm,@mnm,@fty,@st,@cimg,@rph,@mrdng,@insur,@expkm,@gtype,@mlg)", con);
        cmd.Parameters.AddWithValue("@cty", dprctyp.SelectedValue);
        cmd.Parameters.AddWithValue("@bnm", drpbname.SelectedValue);
        cmd.Parameters.AddWithValue("@mnm", drpmname.SelectedValue);
        cmd.Parameters.AddWithValue("@fty", drpftype.SelectedValue);
        cmd.Parameters.AddWithValue("@st", drpseats.SelectedValue);
        cmd.Parameters.AddWithValue("@cimg", fp);
        cmd.Parameters.AddWithValue("@rph", txtrphr.Text);
        cmd.Parameters.AddWithValue("@mrdng", txtmtrrd.Text);
        cmd.Parameters.AddWithValue("@insur", txtcrinsuamt.Text);
        cmd.Parameters.AddWithValue("@expkm", txtexrpkm.Text);
        cmd.Parameters.AddWithValue("@gtype", ddlgType.SelectedValue);
        cmd.Parameters.AddWithValue("@mlg", txtmillege.Text);

        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Car Deatils has been successfully inserted.')</script>");
            Server.Transfer("AddCarDetails.aspx");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Car Deatils has not inserted.')</script>");
            Server.Transfer("AddCarDetails.aspx");
        }
        finally
        {
            con.Close();
        }


           
        
    }
    protected void dprctyp_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCbrand();
    }
    protected void drpbname_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCmodel();
           BindCfueltype();
            BindCseater();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        //Panel2.Visible = false;
        GridView1.Visible = false;
        Label13.Visible = false;
        Button2.Visible = false;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Panel2.Visible = true;
        Panel1.Visible = false;
    }
    protected void btninsrt_Click(object sender, EventArgs e)
    {
       

    }
    //protected void btnupdate_Click(object sender, EventArgs e)
    //{
    //    foreach (GridViewRow row in GridView1.Rows)
    //    {
    //        DropDownList classincharge = (row.Cells[2].FindControl("DropDownList3") as DropDownList);
    //        //int Cimages    = Convert.ToInt32(row.Cells[0].Text);
    //        int cnt=Convert.ToInt32(classincharge.SelectedItem.Text);

    //        updaterow(cnt);



    //    }

    //}

    //private void updaterow(int cnt)
    //{
    //    String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    //    // int cnvt = Convert.ToInt32(classassigned1);
    //    String updatedata = "Update CarDetails set Ctid='" + cnt + "'";
    //    SqlConnection con = new SqlConnection(mycon);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = updatedata;
    //    cmd.Connection = con;
    //    try
    //    {
    //        cmd.ExecuteNonQuery();
    //        Response.Write("<script>alert('Data Has Been Updated Successfully.')</script>");
            
    //    }
        
    //    catch (Exception)
    //    {
    //        Response.Write("<script>alert('Data Has Been Not Updated .')</script>");
    //    }
    //    finally
    //    {
    //        con.Close();
    //    }
    //}

    //private void updaterow(int p)
    //{
        
    //}
    //private void updaterow( String classassigned1)
    //{
        
    //}

    protected void btndelete_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmmd = new SqlCommand("delete from CarDetails where Cid=@CID", con);
        cmmd.Parameters.AddWithValue("@CID", txtsrch.Text);
        cmmd.ExecuteNonQuery();
        Response.Write("<script>alert('Record Deleted Successfully.')</script>");
        Server.Transfer("AddCarDetails.aspx");

        con.Close();
    }
    protected void btnsrch_Click(object sender, EventArgs e)
    {
        
        

        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand("select * from CarDetails where Cid=@CID or Moid=@modl", con);
       // SqlCommand cmd = new SqlCommand("select CarDetails.Crph,CarDetails.Mtrrd,CarDetails.Insamt,CarDetails.Erpkm,CarDetails.Gtype,CarDetails.Millege,BrandName.CBrand,BrandName.Mname,BrandName.Ctid,BrandName.Fid,BrandName.Sid from BrandName INNER JOIN CarDetails ON CarDetails.Bid=BrandName.Bid where Cid=@CID or Moid=@modl", con);
        //SqlCommand cmd = new SqlCommand("SearchCar", con);
        //cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CID",txtsrch.Text);
        cmd.Parameters.AddWithValue("@modl", txtsrch.Text);
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.SelectCommand = cmd;
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //if (ds.Tables[0].Rows.Count > 0)
        con.Open();
        try
        {
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                dprctyp.SelectedValue = dr[1].ToString();
               // dprctyp.Items.FindByValue(dr["drpbname"].ToString()).Selected = true;
                drpbname.SelectedValue = dr[2].ToString();
                drpmname.SelectedValue = dr[3].ToString();
                //drpftype.SelectedValue = dr[4].ToString();
                // drpseats.SelectedValue = dr[5].ToString();
                //txtorgnlprc.Text = dr[6].ToString();
                txtrphr.Text = dr[7].ToString();
                txtmtrrd.Text = dr[8].ToString();
                txtcrinsuamt.Text = dr[9].ToString();
                txtexrpkm.Text = dr[10].ToString();
                ddlgType.SelectedValue = dr[11].ToString();
                txtmillege.Text = dr[12].ToString();
                //Label1.Text = "Data Found";
                //dprctyp.SelectedValue = ds.Tables[0].Rows[0]["Ctid"].ToString();
                //drpbname.SelectedValue = ds.Tables[0].Rows[0]["Bid"].ToString();
                //drpmname.SelectedValue = ds.Tables[0].Rows[0]["Moid"].ToString();
                //drpftype.SelectedValue = ds.Tables[0].Rows[0]["Fid"].ToString();
                //drpseats.SelectedValue = ds.Tables[0].Rows[0]["Sid"].ToString();
                //txtrphr.Text = ds.Tables[0].Rows[0]["Crph"].ToString();
                //txtmtrrd.Text = ds.Tables[0].Rows[0]["Mtrrd"].ToString();
                //txtcrinsuamt.Text = ds.Tables[0].Rows[0]["Insamt"].ToString();
                //txtexrpkm.Text = ds.Tables[0].Rows[0]["Erpkm"].ToString();
                //ddlgType.SelectedValue = ds.Tables[0].Rows[0]["Gtype"].ToString();
                //txtmillege.Text = ds.Tables[0].Rows[0]["millege"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found.')</script>");
               // Response.Redirect("AddCarDetails.aspx");

            }
            dr.Close();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Data Not Found.')</script>");
           // Response.Redirect("AddCarDetails.aspx");

        }
        finally
        {
            con.Close();
        }





        
    }
    //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow gr = GridView2.SelectedRow;
    //    //DropDownList4.SelectedValue= gr.Cells[3].Text;
    //    DropDownList5.SelectedValue = gr.Cells[4].Text; 
    //    TextBox1.Text = gr.Cells[5].Text;
    //   // TextBox4.Text = gr.Cells[4].Text; 
    //}

    protected void btnava_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Button2.Visible = true;
        btnava.Visible = false;
        Label13.Visible = true;
        GridView1.Visible = true;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmmd = new SqlCommand("update from CarDetails set Ctid='" + dprctyp.SelectedValue + "',Bid='" + drpbname.SelectedValue + "',Moid='" + drpmname.SelectedValue + "',Fid='" + drpftype.SelectedValue + "',Sid='" + drpseats.SelectedValue + "',Cimages='" + fp + "',Crph='" + txtrphr.Text + "',Mtrrd='" + txtmtrrd.Text + "',Insamt='" + txtcrinsuamt.Text + "',Erpkm='" + txtexrpkm.Text + "',Gtype='" + ddlgType.SelectedValue + "',millege='" + txtmillege.Text + "'  where Cid=@CID", con);
        cmmd.Parameters.AddWithValue("@CID", txtsrch.Text);
        cmmd.ExecuteNonQuery();
        Response.Write("<script>alert('Record Updated Successfully.')</script>");
        Server.Transfer("AddCarDetails.aspx");

        con.Close();
    }
}