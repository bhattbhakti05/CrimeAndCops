using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clientside_whisper_new_complain : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void View_details_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/clientside/whisper/view_detail.aspx");
	}



	
}