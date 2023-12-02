using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;


public partial class DatewiseReport : System.Web.UI.Page
{
    static Boolean validdate;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    //{
    //    DateTime d;
    //    args.IsValid = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
    //    validdate = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

    //}
    //protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    //{
    //    DateTime d;
    //    args.IsValid = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
    //    validdate = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
    //}
    protected void btnsrch_Click(object sender, EventArgs e)
    {
        if (txtdtfrm.Text != "" && txtdtto.Text != "")
        {


            //String mycon = "Data Source=RAJ-PC\\SQLEXPRESS;Initial Catalog=CarRental;Integrated Security=True";
            //String myquery = "select transactionid,convert(varchar, cast(convert(varchar(10), transactiondate, 101) as datetime) , 106) as transactiondate, transdetail, transamount  from transactiondetail where transactiondate between CONVERT(datetime, '" + TextBox1.Text + "', 105) AND CONVERT(datetime, '" + TextBox2.Text + "', 105)";
           // String myquery = "select * from BookingDetails where bkdate between '" + Convert.ToDateTime(txtdtfrm.Text) + "' and '" + Convert.ToDateTime(txtdtto.Text) + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from BookingDetails where bkdate between '" + Convert.ToDateTime(txtdtfrm.Text) + "' and '" + Convert.ToDateTime(txtdtto.Text) + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            //SqlConnection con = new SqlConnection(mycon);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = myquery;
            //cmd.Connection = con;
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
          //  da.Fill(ds);
            if (dr.HasRows)
            {

                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found. ')</script>");
                Server.Transfer("DatewiseReport.aspx");
            }





            con.Close();

        }
        else
        {
            Response.Write("<script>alert('Data Not Blank Field. ')</script>");
            Server.Transfer("DatewiseReport.aspx");
        }
    }
}