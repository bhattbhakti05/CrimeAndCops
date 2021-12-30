using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clientside_whisper_whisper_registrationpolicestation : System.Web.UI.Page
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

		cmd.CommandText = "INSERT INTO Police_stattion_db(ps_nm,ps_type,ps_add,dist,taluko,vlg,phn,email,pol_id_usr,pwd) VALUES('" + Tbps_name.Text + "','" + Tbps_type.Text + "','"+Tbps_adress.Text+"','" + DropDownList_dist.SelectedValue + "','" + DropDownList_taluko.SelectedValue + "','" + DropDownList1.SelectedValue + "','"+Tbps_phn.Text+"','"+Tbps_email.Text+"','"+Tbps_id.Text+"','"+Tbps_pass.Text+"')";
		cmd.ExecuteNonQuery();
		con.Close();
		Response.Redirect("policestationloginpage.aspx");
	}
}