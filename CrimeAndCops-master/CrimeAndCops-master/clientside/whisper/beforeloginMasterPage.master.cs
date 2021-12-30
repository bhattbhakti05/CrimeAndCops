using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clientside_whisper_beforeloginMasterPage : System.Web.UI.MasterPage
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void LinkButton1_Click1(object sender, EventArgs e)
	{
		string clientid = "813033172660-id1rdpt2cu6ttg2mg3r3t0vvca6d6i69.apps.googleusercontent.com";
		//your client secret  
		string clientsecret = "QWObNPxG67ghXJukrCPAi66u";
		//your redirection url  
		string redirection_url = "~/clientside/whisper/citizenhome.aspx";
		string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
		Response.Redirect(url);
	}
}
