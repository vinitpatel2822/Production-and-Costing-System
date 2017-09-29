using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

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
    }






    protected void btn_save_Click(object sender, EventArgs e)
    {
        try
        {
            obj.insert("insert into delivery_tbl values('" + tb_date.Text + "','" + tb_time.Text + "','" + ddlclientname.SelectedItem.Text + "','" + tb_addr.Text + "','" + tb_mno.Text + "','" + tb_mailid.Text + "','" + tb_desc.Text + "','" + tb_quantity.Text + "','" + tb_vehno.Text + "')");

            lblmsg.Visible = true;
            lblmsg.Text = "Delivery Confirmed";
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
    }
}