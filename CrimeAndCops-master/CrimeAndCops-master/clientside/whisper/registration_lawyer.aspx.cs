using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class clientside_whisper_registration_lawyer : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	protected void Page_Load(object sender, EventArgs e)
	{
		ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
	}

	protected void Button1_Click(object sender, EventArgs e)
	{

		//for image
		Fp1.SaveAs(Server.MapPath("~/image" + Fp1.FileName));
		string path = "~/image" + Fp1.FileName;
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "INSERT INTO lawyer_db(l_nm,contact_no,email,Practice_at,Year_of_exp,img,addrs,l_unm,pwd) VALUES('" + Tbl_name.Text + "','" + Tbl_phn.Text + "','" + Tbl_email.Text + "','" + Tbl_practice.Text + "','" + Tbl_exp.Text + "','" + path.ToString() + "','" + Tbl_add.Text + "' ,'" + Tbl_id.Text + "','" + Tbl_pass.Text + "')";
		cmd.ExecuteNonQuery();
		con.Close();
		Response.Redirect("lawyerloginpage.aspx");
	}
	
}