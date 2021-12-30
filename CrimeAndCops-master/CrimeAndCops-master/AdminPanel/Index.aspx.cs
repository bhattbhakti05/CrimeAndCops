using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Tb_uname.Text == "admin" && password.Text == "admin")

        {
            Response.Redirect("afterlogin.aspx");
        }

        else
        {
            Response.Write("<script>alert('Invalid Username and Password')</script>");

        }
    }
}