<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/afterloginMasterPage.master" AutoEventWireup="true" CodeFile="loginwithgmail.aspx.cs" Inherits="clientside_whisper_loginwithgmail_lawyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>  
                LOGIN<br />
                <asp:Button ID="btnlogin" runat="server" Text="Login With Gmail" 
                    CssClass="gmailbutton" onclick="btnlogin_Click1" /> 
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" Width="102px" 
                    ImageUrl="http://localhost:2147/gmailloginwith_mspage/img/g+.png" 
                    onclick="ImageButton1_Click" />
     </div>
</asp:Content>

