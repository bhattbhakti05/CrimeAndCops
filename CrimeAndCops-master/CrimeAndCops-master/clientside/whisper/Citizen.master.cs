using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clientside_whisper_Citizen : System.Web.UI.MasterPage
{
	protected void Page_Load(object sender, EventArgs e)
	{
		Label1.Text = Session["unm"].ToString();
	}
	protected void LinkButton1_Click(object sender, EventArgs e)
	{
		Response.Redirect("https://www.google.com/maps/search/nearest+police+station/@22.5542358,72.9020741,13z/data=!3m1!4b1");
	}
}
