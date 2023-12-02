using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class PaymentReport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsrchall_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Pid AS PID, custid AS CID, tranid AS TransID, cardtype AS CardType, cardno AS CardNo, nameoncard AS Name, cvvno AS CVVNo, expmonth AS ExpiryMonth, expyear AS ExpiryYear,totalamt AS TotalAmount from PaymentDetails", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
    }
    protected void btnsrch_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Pid AS PID, custid AS CID, tranid AS TransID, cardtype AS CardType, cardno AS CardNo, nameoncard AS Name, cvvno AS CVVNo, expmonth AS ExpiryMonth, expyear AS ExpiryYear,totalamt AS TotalAmount from PaymentDetails where custid='"+txtsrch.Text+"'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {

        GridView1.DataSource = dr;
        GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Data Not Found. ')</script>");
            Server.Transfer("PaymentReport.aspx");
        }
    }
}