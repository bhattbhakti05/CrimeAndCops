using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class clientside_whisper_policestationloginpage : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();

	protected void Page_Load(object sender, EventArgs e)
	{
		ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "select count(*) from Police_stattion_db where pol_id_usr='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";

		int k = Convert.ToInt32(cmd.ExecuteScalar());

		con.Close();

		if (k == 1)
		{
			Session["unm"] = TextBox1.Text;
			Response.Redirect("~/clientside/whisper/police_home.aspx");
		}
		else
		{
			Response.Write("<script>alert('username and Password not match')</script>");
		}

	}
}