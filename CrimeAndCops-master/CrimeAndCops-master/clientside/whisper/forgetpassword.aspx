<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/afterloginMasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="clientside_whisper_forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-10 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Reset Your Password</h2> 
              
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="txtemail" class="form-control" placeholder="Enter Your Email" runat="server"></asp:TextBox>
              </div>
              
              <%--<div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>--%>
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                             <asp:Button ID="Button2" class="btn btn-primary py-3 px-5"  runat="server" OnClick="Button2_Click" Text="Forget Password" />

              </div>
              <div class="form-group">
                  <asp:Label ID="Label1" class="btn btn-primary py-3 px-5" runat="server" Text="Message"></asp:Label>
              </div>
              
               

          	<%--<h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">We are here to help!</h2>--%>
           <%-- <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
            	<span>Experience</span> . <span>Innovation</span> . <span>Excellence</span>
            </h1>--%>
           <%-- <p><a  class="btn btn-primary py-3 px-4">Welcome</a></p>--%>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

