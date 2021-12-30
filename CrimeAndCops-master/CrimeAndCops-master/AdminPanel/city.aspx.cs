using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminPanel_city : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bhakti"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_save_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO talukaa(d_id,t_name)VALUES('" + DropDownList2.SelectedValue + "','"+TextBox1.Text+"') ";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('taluka added')</script>");
    }

    protected void Btn_cancel_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}

   