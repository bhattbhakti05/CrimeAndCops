<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/afterloginMasterPage.master" AutoEventWireup="true" CodeFile="policestationloginpage.aspx.cs" Inherits="clientside_whisper_policestationloginpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-10 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Login Here</h2> 
              
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="TextBox1" class="form-control" placeholder="Your Id" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1" ErrorMessage="Id requierd " > </asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                         <asp:TextBox ID="TextBox2" class="form-control" placeholder="Your Password" runat="server" TextMode="Password" MaxLength="3"></asp:TextBox>
              </div> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is requierd"></asp:RequiredFieldValidator>
              <%--<div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>--%>
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                             <asp:Button ID="Button1" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" runat="server" Text="Login" />
                            
              </div>
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                            
                  <a href="">Forgot Password?</a>
              </div>
               <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                            
                  <a href="registrationpolicestation.aspx">Do you want to register yourself?</a>
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

