using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class clientside_Register_complain : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	string status = "Pending";
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void Btn_save_Click(object sender, EventArgs e)
		{
			con.Open();

			cmd.Connection = con;

			cmd.CommandType = CommandType.Text;

			cmd.CommandText = "INSERT INTO compl_db(pol_id_usr, subj, nm, addrs, city, postal_code, phn, email, auth_code, yr_compl,is_status)VALUES('" + drp_polid.SelectedValue + "','" + txtsub.Text + "','" + txtnm.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtpostal.Text + "','" + txtphn.Text + "','" + txtemail.Text + "','" + txt_autho.Text + "','" + txtcmplnt.Text + "','"+status+"')";

			cmd.ExecuteNonQuery();

			con.Close();
			Response.Write("<script>alert('Complaint Registered..')</script>");
			Response.Redirect("~/clientside/whisper/Register_complain.aspx");
		}
}
