using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class TrialPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            
        }

    }
    protected void BindGrid()
    {
        GridView1.DataSource = ViewState["dt"] as DataTable;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id"), new DataColumn("Name"), new DataColumn("Country") });
        dt.Rows.Add(TextBox2.Text,TextBox3.Text,TextBox4.Text);
        //dt.Rows.Add(2, "Mudassar Khan", "India");
        //dt.Rows.Add(3, "Suzanne Mathews", "France");
        //dt.Rows.Add(4, "Robert Schidner", "Russia");
        ViewState["dt"] = dt;
        this.BindGrid();
    }

    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.BindGrid();
    }

    protected void OnUpdate(object sender, EventArgs e)
    {
        GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
        string name = (row.Cells[2].Controls[0] as TextBox).Text;
        string country = (row.Cells[3].Controls[0] as TextBox).Text;
        DataTable dt = ViewState["dt"] as DataTable;
        dt.Rows[row.RowIndex]["Name"] = name;
        dt.Rows[row.RowIndex]["Country"] = country;
        ViewState["dt"] = dt;
        GridView1.EditIndex = -1;
        this.BindGrid();
    }

    protected void OnCancel(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        this.BindGrid();
    }

}