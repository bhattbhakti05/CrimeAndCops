<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/beforeloginMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="clientside_whisper_index" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%-- Add content controls here --%>
    
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
    <div>  
               <%-- LOGIN<br />
                <asp:Button ID="btnlogin" runat="server" Text="Login With Gmail" 
                    CssClass="gmailbutton" onclick="btnlogin_Click1" /> 
                <br />--%>
       <%-- <a href="#">login with google</a>--%>

               <%-- <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" Width="102px" 
                    ImageUrl="http://localhost:2147/gmailloginwith_mspage/img/g+.png" 
                    onclick="ImageButton1_Click" />--%>
        <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login with google</asp:LinkButton>
     </div>--%>
        
        <%--<div class="col-md-3 col-lg-2 text-center">
        		<div class="practice-area ftco-animate">
        			<div class="icon d-flex justify-content-center align-items-center">
        				<span class="flaticon-auction"></span>
        			</div>
        			<%--<h3><a href="#">Business Law</a></h3>--%>
                    <%--<div>
            <asp:LinkButton ID="linkbutton1" runat="server">LinkButton</asp:LinkButton>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" PopupControlID="Panl1" TargetControlID="linkbutton1" CancelControlID="Button2" BackgroundCssClass="Background" runat="server"></ajaxToolkit:ModalPopupExtender>
        		<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">
                   <div>
                    <table>
                         <p>abcdjfhgdsgzfwadfswff</p>
                        <h1>fyuiuiyutdghv</h1>
                        <h2>uyutrewdfghjk</h2>
                    </table>
                       </div>
                   
                   
               
                    <asp:Button ID="Button2" runat="server" Text="Close" />

</asp:Panel>
</div>--%>
        		<%--</div>
            
    
        	</div>--%>
</asp:Content>