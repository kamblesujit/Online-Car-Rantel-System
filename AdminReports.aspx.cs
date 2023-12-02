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


public partial class AdminReports : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    static Boolean validdate;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Chart1.Visible = true;
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

        DateTime d;
        args.IsValid = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None,

out d);
        validdate = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

        DateTime d;
        args.IsValid = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None,

out d);
        validdate = DateTime.TryParseExact(args.Value, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(validdate==true)
        {










// String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=BankingRecord; Integrated Security=True";
//        String myquery = "select transactionid,convert(varchar, cast(convert(varchar(10), transactiondate, 101) as 
//datetime) , 106) as transactiondate, transdetail, transamount  from transactiondetail where transactiondate between 
//CONVERT(datetime, '"+TextBox1.Text+"', 105) AND CONVERT(datetime, '"+TextBox2.Text+"', 105)";
//        SqlConnection con = new SqlConnection(mycon);
//        SqlCommand cmd = new SqlCommand();
//        cmd.CommandText = myquery;
//        cmd.Connection = con;
//        SqlDataAdapter da = new SqlDataAdapter();
//        da.SelectCommand = cmd;
//        DataSet ds = new DataSet();
//        da.Fill(ds);
//        GridView1.DataSource = ds;
//        GridView1.DataBind();
        con.Close();
}

    }
}