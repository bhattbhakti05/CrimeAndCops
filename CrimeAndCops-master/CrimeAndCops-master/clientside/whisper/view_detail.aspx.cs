using System.Net;
using System.Net.Mail;
using System;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class clientside_whisper_view_detail : System.Web.UI.Page
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

		cmd.CommandText ="update compl_db  set is_status='"+sts.ToString()+"' where comp_id='"+Request.QueryString["cid"]+"'";

		cmd.ExecuteNonQuery();

		con.Close();
		
		
		TextBox ps_date = (TextBox)DataList1.Items[0].FindControl("TextBox1");
		Label c_id = (Label)DataList1.Items[0].FindControl("comp_idLabel");
		Label lblemail = (Label)DataList1.Items[0].FindControl("emailLabel");
		Label msglbl = (Label)DataList1.Items[0].FindControl("Label1");
		
		con.Open();

		cmd1.Connection = con;

		cmd1.CommandType = CommandType.Text;

		cmd1.CommandText = "update compl_db  set p_date='" + ps_date.Text+ "' WHERE (comp_id='" + Request.QueryString["cid"] + "')";

		cmd1.ExecuteNonQuery();

		con.Close();

		con.Open();

		cmd2.Connection = con;

		cmd2.CommandType = CommandType.Text;

		cmd2.CommandText = "select p_date from compl_db  where comp_id ='" + c_id.Text + "'";
		//cmd2.ExecuteNonQuery();
		string n = cmd2.ExecuteScalar().ToString();
		con.Close();
		//mail

		MailMessage mail = new MailMessage();
		SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

		mail.From = new MailAddress("bhaktibhatt01@gmail.com");
		mail.To.Add(lblemail.Text);
		mail.Subject = "Test Mail";
		mail.Body = "Your complain has received visit policestation at given date  And Date is: " + ps_date.Text;

		SmtpServer.Port = 587;
		SmtpServer.Credentials = new System.Net.NetworkCredential("bhaktibhatt01@gmail.com", "05111997");
		SmtpServer.EnableSsl = true;

		SmtpServer.Send(mail);
		

		DataList1.DataBind();
		Response.Write("<script>alert('Appointment is Approved.. and Check your mail')</script>");
	}
	protected void Btn_cancel_Click(object sender, EventArgs e)
	{
		con.Open();

		cmd.Connection = con;

		cmd.CommandType = CommandType.Text;

		cmd.CommandText = "UPDATE    compl_db   SET    is_status = '" + stst + "'   WHERE   (comp_id ='" + Request.QueryString["id"] + "')";
		cmd.ExecuteNonQuery();

		con.Close();
		DataList1.DataBind();
		Response.Write("<script>alert('Appointment is Rejected..')</script>");
	}



	protected void Button1_Click(object sender, EventArgs e)
	{
		getimage();
	}

	public void getimage()
	{
		


		WebClient myClient = new WebClient();
		string myPageHTML = null;
		byte[] requestHTML;
		// Gets the url of the page
		string currentPageUrl = Request.Url.ToString();

		UTF8Encoding utf8 = new UTF8Encoding();

		// by setting currentPageUrl to mypage.aspx it will fetch the source (html) 
		// of the mypage.aspx and put it in the myPageHTML variable. 

		currentPageUrl = "http://localhost:53350/clientside/whisper/view_detail.aspx?cid=16";

		requestHTML = myClient.DownloadData(currentPageUrl);

		myPageHTML = utf8.GetString(requestHTML);

		Response.Write(myPageHTML);

	}
}