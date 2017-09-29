using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Configuration;



public partial class _Default : System.Web.UI.Page
{
    Class1 obj = new Class1();
    public String strConnection = "Data Source=DESKTOP-BUH1RDD;Initial Catalog=pncsystem;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindContrydropdown();
        }
       
         lblmsg.Visible = false; 
    }
    public void BindContrydropdown()
    {
        //conenction path for database
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from country_tbl", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcountry.DataSource = ds;
        ddlcountry.DataTextField = "country_name";
        ddlcountry.DataValueField = "country_id";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlstate.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlcity.Items.Insert(0, new ListItem("--Select--", "0"));

    }
    /// <summary>
    /// Bind State Dropdown Based on CountryID
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        int country_id = Convert.ToInt32(ddlcountry.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from state_tbl where country_id=" + country_id, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlstate.DataSource = ds;
        ddlstate.DataTextField = "state_name";
        ddlstate.DataValueField = "state_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddlstate.SelectedValue == "0")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Insert(0, new ListItem("--Select--", "0"));
        }

    }
    /// <summary>
    /// Bind Region dropdown based on Re
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        int state_id = Convert.ToInt32(ddlstate.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from city_tbl where state_id=" + state_id, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcity.DataSource = ds;
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("--Select--", "0"));
    }



    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            obj.insert("insert into reg_user_tbl values('" + tb_fname.Text + "','" + tb_lname.Text + "','" + tb_bdate.Text + "','" + rdbl1.SelectedValue + "','" + tb_addr.Text + "','" + ddlcountry.SelectedItem.Text + "','" + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + tb_mno.Text + "','" + tb_mailid.Text + "','" + tb_username.Text + "','" + tb_password.Text + "')");

            lblmsg.Visible = true;
            lblmsg.Text = "User Registered";
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Something went Wrong...";
            lblmsg.Visible = true;
        }
       

    }
    protected void tb_username_TextChanged(object sender, EventArgs e)
    {

    }
}