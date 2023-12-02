using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class UserHome : System.Web.UI.Page
{
    string mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
    string ltm,lotm;


     //Session["eml"] = custeml;
     //       Session["clgtm"]=Clogtm;
     //       Session["clgotm"] = Clogouttm;

    string emlid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["geml"] == null && Session["urid"] == null && Session["Seml"] != null)
        {
            Response.Redirect("Indexx.aspx");
        }
        else
        {
            if(Session["geml"]==null)
            {
                 emlid = Session["urid"].ToString();
                 Label1.Text = emlid;
            }
            if (Session["urid"] == null)
            {
                emlid = Session["geml"].ToString();
                Label1.Text = emlid;
            }
            if (Session["Seml"] != null)
            {
                emlid = Session["Seml"].ToString();
                Label1.Text = emlid;
            }


            if (!IsPostBack)
            {
                Session["clgtm"] = DateTime.Now.ToString();

                //string usid = Session["urid"].ToString();
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select custid from CustomerDetail where emailid='" + emlid + "' or userid='" + emlid + "'", con);
                SqlDataReader sd;
                sd = cmd.ExecuteReader();
                if (sd.HasRows)
                {

                    sd.Read();
                    int id = Convert.ToInt32(sd[0]);
                    con.Close();
                    ltm = Session["clgtm"].ToString();
                    //lotm = Session["clgotm"].ToString();
                    SqlConnection conn = new SqlConnection(mycon);
                    SqlCommand cmd1 = new SqlCommand("insert into customertimeline(emailid,logintm,custid,logouttm) values(@eml,@lg,@cid,2018-05-02)", con);
                    cmd1.Parameters.AddWithValue("@eml", emlid);
                    cmd1.Parameters.AddWithValue("@lg", ltm);
                    cmd1.Parameters.AddWithValue("@cid", id);
                    //cmd.Parameters.AddWithValue("@ctid", lotm);
                    con.Open();
                    cmd1.ExecuteNonQuery();

                    con.Close();
                }
            }
           // else
            //{

                //if (emlid == Label1.Text)
                //{
                //    Label1.Text = " " + Session["geml"].ToString();
                //}
                ////if (usid == Label1.Text)
                //{
                //    Label1.Text = " " + Session["username"].ToString();
                //}


                //Label1.Text = " " + Session["urid"].ToString();
                //ltm = Session["clgtm"].ToString();
                // lotm = Session["clgotm"].ToString();
                // SqlConnection connn = new SqlConnection(mycon);
                //connn.Open();
                //SqlCommand cmd2 = new SqlCommand("insert into customertimeline(logintm) values(@lg)", con);
                //cmd2.Parameters.AddWithValue("@lg", DateTime.Now.ToLongDateString());
                // cmd.Parameters.AddWithValue("@ctid", DateTime.Now.ToLongDateString());

                // cmd2.ExecuteNonQuery();

                // connn.Close();


           // }



       

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string lgotm= DateTime.Now.ToString();
        SqlConnection con = new SqlConnection(mycon);
        con.Open();

        SqlCommand cmd = new SqlCommand("update customertimeline set logouttm = @lgouttm where emailid='" + emlid + "'  and logouttm=2018-05-02 ", con);
        cmd.Parameters.AddWithValue("@lgouttm", lgotm);
        

        cmd.ExecuteNonQuery();

        
       


        //SqlCommand cmd1 = new SqlCommand("Select * from UserActivity where emailid='" + Label1.Text + "'");
        //cmd1.Connection = con;
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.SelectCommand = cmd1;
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    if (Session["eml"].Equals(Label1.Text))
        //    {update UserActivity set status='Verified' where activationcode='" + txtvrfycode.Text + "'";
              //SqlCommand cmd = new SqlCommand("update UserActivity set logouttime = @logouttm where emailid='"+Session["eml"]+"'", con);
              //  cmd.Parameters.AddWithValue("@logouttm",lgotm);
              //  cmd.Connection = con;
              //  cmd.ExecuteNonQuery();
              //  Session.Abandon();
                Response.Write("<script>alert('You have been successfully Logged Out.')</script>");
                Server.Transfer("Indexx.aspx");
           // }
       // }
        con.Close();
    }
}