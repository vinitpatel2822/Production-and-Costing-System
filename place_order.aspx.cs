using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class _Default : System.Web.UI.Page
{
    Class1 obj = new Class1();
    public String strConnection = "Data Source=DESKTOP-BUH1RDD;Initial Catalog=pncsystem;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindclientdropdown();
        }

    }

    public void Bindclientdropdown()
    {
        //conenction path for database
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from client_tbl", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlclientname.DataSource = ds;
        ddlclientname.DataTextField = "c_name";
        ddlclientname.DataValueField = "c_id";
        ddlclientname.DataBind();
        ddlclientname.Items.Insert(0, new ListItem("--Select--", "0"));
       // ddlstate.Items.Insert(0, new ListItem("--Select--", "0"));
      //  ddlcity.Items.Insert(0, new ListItem("--Select--", "0"));

    }
    /// <summary>
    /// Bind State Dropdown Based on CountryID
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>


    protected void btn_save_Click(object sender, EventArgs e)
    {
        try
        {
            obj.insert("insert into order_tbl values('" + tb_date.Text + "','" + ddlclientname.SelectedItem.Text + "','" + tb_order_description.Text + "','" + tb_quantity.Text + "')");

            lblmsg.Visible = true;
            lblmsg.Text = "Order Confirmed";
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
    }
}