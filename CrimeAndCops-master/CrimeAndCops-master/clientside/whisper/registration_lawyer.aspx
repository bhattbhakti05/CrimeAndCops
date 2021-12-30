<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/registrationmasterpage.master" AutoEventWireup="true" CodeFile="registration_lawyer.aspx.cs" Inherits="clientside_whisper_registration_lawyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-10 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">register Here</h2>  
    <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_name" class="form-control" placeholder="Enter Your Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tbl_name" ErrorMessage="Name must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="Tbl_phn" class="form-control" placeholder="Enter Your Mobile Number" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tbl_phn" ErrorMessage="Phone number must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                 <asp:TextBox ID="Tbl_email" class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email"></asp:TextBox>        
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tbl_email" ErrorMessage="Email must be require"></asp:RequiredFieldValidator>
 
              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_practice" class="form-control" placeholder="Practice at" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Tbl_practice" ErrorMessage="Practice at must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_exp" class="form-control" placeholder="Enter Your experiance Year" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Tbl_exp" ErrorMessage="Experiance must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                    <asp:FileUpload ID="Fp1" class="form-control" placeholder="Your Image" runat="server" style="height: 42px !important;line-height: 0px;padding: 0 0 0 10px;" />
              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_add" class="form-control" placeholder="Enter Your Address" runat="server" TextMode="MultiLine"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Tbl_add" ErrorMessage="Address must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_id" class="form-control" placeholder="Enter Your Id" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Tbl_id" ErrorMessage="Id must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbl_pass" class="form-control" placeholder="Enter Your Password" runat="server" TextMode="Password"></asp:TextBox>

              </div>
             
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                             <asp:Button ID="Button1" class="btn btn-primary py-3 px-5" runat="server" OnClick="Button1_Click" Text="Submit" />

              </div>
              </div>
        </div>



</asp:Content>

