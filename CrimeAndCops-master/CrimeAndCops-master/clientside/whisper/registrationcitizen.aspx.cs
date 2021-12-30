using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clientside_whisper_registrationcitizen : System.Web.UI.Page
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

		cmd.CommandText = "INSERT INTO user_db(nm,email,pwd,phn,gen,disct,taluko,vlg) VALUES('" + Tbc_name.Text + "','" + Tbc_email.Text + "','" + Tbc_pass.Text + "','"+Tbc_phn.Text+"','" + RadioButtonList1.SelectedValue + "','" + DropDownList_dist.SelectedValue + "','" + DropDownList_taluko.SelectedValue + "','" + DropDownList1.SelectedValue + "')";
		cmd.ExecuteNonQuery();
		con.Close();
		Response.Redirect("citizenloginpage.aspx");
	}
}