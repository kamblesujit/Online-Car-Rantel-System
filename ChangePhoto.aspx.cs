using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePhoto : System.Web.UI.Page
{
     SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
     SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["geml"] == null && Session["urid"] == null)
            {
                Response.Redirect("ErrorPage.aspx");
            }
            else
            {
                cmd = new SqlCommand("select profilepic from CustomerDetail where emailid='" + Session["geml"] + "' or userid='" + Session["urid"] + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Image1.ImageUrl = dr[0].ToString();


                }
                con.Close();
            }


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fp = "~/Images/userprofile/" + FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(fp));
        Image1.ImageUrl = fp;
        cmd = new SqlCommand("update CustomerDetail set profilepic='" + fp + "' where emailid='" + Session["geml"] + "' or userid='" + Session["urid"] + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Your Profile Picture Have been  successfully Changed ')</script>");
        Server.Transfer("ChangePhoto.aspx");
        Label1.Text = "Your Updatted Profile Picture";
    }
}