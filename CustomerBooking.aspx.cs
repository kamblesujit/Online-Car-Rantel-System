using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class CustomerBooking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnbooking_Click(object sender, EventArgs e)
    { 
        if (txtsearch.Text != "")
        {

            con.Open();

            SqlCommand cmd1 = new SqlCommand("SELECT bkcname as CarType,bkftype as Fuel,bkmodl as Model,bkmeeter as Meeter,bkseater as Seater,bkgeartype as Gear,bkrateperhr as Rate,bkdrivlinc as Licence,bkadhaarno as AdharNo,bkpaymentstatus as Payment,bktotalamt as Amount,bkreturndate as ReturnDate,bkpickupdate as PickupDate from BookingDetails where bktransid=@transid", con);
            //SqlCommand cmd1 = new SqlCommand("calcurent", con);
            //cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@transid", txtsearch.Text);
            SqlDataReader drr = cmd1.ExecuteReader();
            if (drr.HasRows)
            {
               
                GridView1.DataSource = drr;
                GridView1.DataBind();
                
            }
            else
            {
                Response.Write("<script>alert('Data Not Found.')</script>");
                Server.Transfer("CustomerBooking.aspx");


            }
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Data Not Blank Field.')</script>");
            
        }
        
    }
   
}