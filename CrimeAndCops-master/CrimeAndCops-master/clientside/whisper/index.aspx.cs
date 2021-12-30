using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Globalization;
public partial class clientside_whisper_index : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	//protected void btnlogin_Click1(object sender, EventArgs e)
	//{
	//	string clientid = "318530497048-kcq1t9cu7b4990c3ak7b8jovd81okhpl.apps.googleusercontent.com";
	//	//your client secret  
	//	string clientsecret = "kZXFcg618a5LOCbo8fgdFVRk";
	//	//your redirection url  
	//	string redirection_url = "~/clientside/whisper/citizenhome.aspx";
	//	string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
	//	Response.Redirect(url);
	//}
	//protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	//{
	//	string clientid = "318530497048-kcq1t9cu7b4990c3ak7b8jovd81okhpl.apps.googleusercontent.com";
	//	//your client secret  
	//	string clientsecret = "kZXFcg618a5LOCbo8fgdFVRk";
	//	//your redirection url  
	//	string redirection_url = "http://localhost:2147/gmailloginwith_mspage/index.aspx";
	//	string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
	//	Response.Redirect(url);
	//}

	protected void LinkButton1_Click(object sender, EventArgs e)
	{
		string clientid = "318530497048-kcq1t9cu7b4990c3ak7b8jovd81okhpl.apps.googleusercontent.com";
		//your client secret  
		string clientsecret = "kZXFcg618a5LOCbo8fgdFVRk";
		//your redirection url  
		string redirection_url = "~/clientside/whisper/citizenhome.aspx";
		string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
		Response.Redirect(url);
	}

	protected void LinkButton2_Click(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "SELECT COUNT(*) FROM user_db ";

		cmd.ExecuteNonQuery();

		con.Close();
	}
}
