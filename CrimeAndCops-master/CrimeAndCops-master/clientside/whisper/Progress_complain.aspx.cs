using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class clientside_whisper_Progress_complain : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	string sts = "Approve";
	string stst = "Rejected";
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void Btn_save_Click(object sender, EventArgs e)
	{

		Response.Redirect("citizenhome.aspx");
	}
	
}