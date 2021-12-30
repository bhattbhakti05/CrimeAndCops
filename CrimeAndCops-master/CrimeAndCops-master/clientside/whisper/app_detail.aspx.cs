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

public partial class clientside_whisper_app_detail : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD"].ConnectionString);
	SqlCommand cmd = new SqlCommand();
	SqlCommand cmd1 = new SqlCommand();
	SqlCommand cmd2 = new SqlCommand();

	string sts = "Approve";
	string stst = "Rejected";
	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void Btn_save_Click(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "UPDATE    lawyer_appointmnt   SET    is_status = '" + sts + "'   WHERE   (appt_id ='" + Request.QueryString["id"] + "')";
		
		cmd.ExecuteNonQuery();

		con.Close();

		Label lblaptid = (Label)DataList1.Items[0].FindControl("appt_idLabel");
		Label lblaptnm = (Label)DataList1.Items[0].FindControl("nmLabel");
		TextBox c_date = (TextBox)DataList1.Items[0].FindControl("TextBox1");
		TextBox l_email = (TextBox)DataList1.Items[0].FindControl("TextBox2");
		Label msglbl = (Label)DataList1.Items[0].FindControl("Label1");
		Label lblemail = (Label)DataList1.Items[0].FindControl("emailLabel");
		Label lbll_name = (Label)DataList1.Items[0].FindControl("Label1");
		//DateTime d1 = Convert.ToDateTime(c_date.Text);
		con.Open();

		cmd1.Connection = con;

		cmd1.CommandType = CommandType.Text;

		cmd1.CommandText = "INSERT INTO court_date(appt_id,nm,l_email,l_unm,court_date)VALUES('"+lblaptid.Text+"','"+ lblaptnm.Text + "','"+l_email.Text+"','"+lbll_name.Text+"','"+ c_date.Text+"')";

		cmd1.ExecuteNonQuery();

		con.Close();
		con.Open();

		cmd2.Connection = con;

		cmd2.CommandType = CommandType.Text;

		cmd2.CommandText = "select l_email from court_date  where appt_id ='" + lblaptid.Text + "'";
		//cmd2.ExecuteNonQuery();
		string n = cmd2.ExecuteScalar().ToString();
		con.Close();
		//mail

		MailMessage mail = new MailMessage();
		SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

		mail.From = new MailAddress("bhaktibhatt01@gmail.com");
		mail.To.Add(lblemail.Text);
		mail.Subject = "Test Mail";
		mail.Body = "lawyer email address is: " + n.ToString()+" And Date is: " + c_date.Text;
		
		SmtpServer.Port = 587;
		SmtpServer.Credentials = new System.Net.NetworkCredential("bhaktibhatt01@gmail.com", "05111997");
		SmtpServer.EnableSsl = true;

		SmtpServer.Send(mail);
		//msglbl.Text = "ur details send to ur mail";

		DataList1.DataBind();
		Response.Write("<script>alert('Appointment is Approved.. and Check your mail')</script>");
	}
	protected void Btn_cancel_Click(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "UPDATE    lawyer_appointmnt   SET    is_status = '" + stst + "'   WHERE   (appt_id ='" + Request.QueryString["id"] + "')";
		cmd.ExecuteNonQuery();

		con.Close();
		DataList1.DataBind();
		Response.Write("<script>alert('Appointment is Rejected..')</script>");
	}
}