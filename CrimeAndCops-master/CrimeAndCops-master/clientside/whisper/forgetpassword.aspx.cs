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


public partial class clientside_whisper_forgetpassword : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	SqlCommand cmd1 = new SqlCommand();
	SqlCommand cmd2 = new SqlCommand();
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void Button2_Click(object sender, EventArgs e)
	{
		con.Open();
		cmd.Connection = con;
		cmd1.Connection = con;
		cmd2.Connection = con;
		cmd.CommandType = CommandType.Text;
		cmd1.CommandType = CommandType.Text;
		cmd2.CommandType = CommandType.Text;
		cmd.CommandText = "select pwd from lawyer_db where email='" + txtemail.Text + "'";
		cmd1.CommandText = "select pwd from user_db where email='" + txtemail.Text + "'";
		cmd2.CommandText = "select pwd from Police_stattion_db where email='" + txtemail.Text + "'";
		string n = cmd.ExecuteScalar().ToString();
		con.Close();
		//mail

		MailMessage mail = new MailMessage();
		SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

		mail.From = new MailAddress("jjp.1987@gmail.com");
		mail.To.Add(txtemail.Text);
		mail.Subject = "Test Mail";
		mail.Body = "This is ur password::" + n.ToString();

		SmtpServer.Port = 587;
		SmtpServer.Credentials = new System.Net.NetworkCredential("jjp.1987@gmail.com", "nidhijeet786");
		SmtpServer.EnableSsl = true;

		SmtpServer.Send(mail);
		Label1.Text = "ur pass details send to ur mail";
		// TextBox1.Text = "";



	}
}