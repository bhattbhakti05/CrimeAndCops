﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clientside_whisper_lawyer_appoinment : System.Web.UI.Page
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

		cmd.CommandText = "INSERT INTO lawyer_appointmnt (email, nm, contact, issue, is_status, l_unm)VALUES ('" + Session["unm"] + "','" + txtnm.Text + "','" + txtno.Text + "','" + txtissu.Text + "','" + status + "','" + drp_lawid.SelectedValue + "')";

		cmd.ExecuteNonQuery();

		con.Close();
		Response.Write("<script>alert('Appointed Taken....')</script>");

	}
}