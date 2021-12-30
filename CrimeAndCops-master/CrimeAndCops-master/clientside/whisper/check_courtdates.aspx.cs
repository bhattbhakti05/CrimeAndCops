using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clientside_whisper_check_courtdates : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	SqlDataAdapter da = new SqlDataAdapter();
	DataSet ds = new DataSet();
	protected void Page_Load(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;
		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "SELECT * FROM [court_date] WHERE ([court_date] = '"+System.DateTime.Now.ToShortDateString()+"')";

		cmd.ExecuteScalar();

		da.SelectCommand = cmd;

		da.Fill(ds);


		con.Close();

		DataList1.DataSource = ds.Tables[0];

		DataList1.DataBind();

		
	}







	
}