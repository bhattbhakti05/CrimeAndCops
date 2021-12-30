using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clientside_whisper_loginwithgmail_lawyer : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void btnlogin_Click1(object sender, EventArgs e)
	{
		string clientid = "318530497048-kcq1t9cu7b4990c3ak7b8jovd81okhpl.apps.googleusercontent.com";
		//your client secret  
		string clientsecret = "kZXFcg618a5LOCbo8fgdFVRk";
		//your redirection url  
		string redirection_url = "~/clientside/whisper/citizenhome.aspx";
		string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
		Response.Redirect(url);
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
		string clientid = "318530497048-kcq1t9cu7b4990c3ak7b8jovd81okhpl.apps.googleusercontent.com";
		//your client secret  
		string clientsecret = "kZXFcg618a5LOCbo8fgdFVRk";
		//your redirection url  
		string redirection_url = "http://localhost:2147/gmailloginwith_mspage/index.aspx";
		string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
		Response.Redirect(url);
	}
}