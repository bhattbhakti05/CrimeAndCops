<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/registrationmasterpage.master" AutoEventWireup="true" CodeFile="registrationcitizen.aspx.cs" Inherits="clientside_whisper_registrationcitizen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-10 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Register Here</h2>  
   <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbc_name" class="form-control" placeholder="Enter Your Name" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tbc_name" ErrorMessage="Name must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                 <asp:TextBox ID="Tbc_email" class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email"></asp:TextBox>        
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tbc_email" ErrorMessage="Email must be require"></asp:RequiredFieldValidator>

                  </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbc_pass" class="form-control" placeholder="Enter Your Password" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tbc_pass" ErrorMessage="password must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="Tbc_phn" class="form-control" placeholder="Enter Your Mobile Number" runat="server" TextMode="Phone"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Tbc_phn" ErrorMessage="Phone number must be require"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
              <asp:RadioButtonList ID="RadioButtonList1" class="form-control" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" style="text-align:left;" >
                  <asp:ListItem style="padding-right:10px;"> Female</asp:ListItem>
                  <asp:ListItem> Male</asp:ListItem>
              </asp:RadioButtonList>
              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                     <asp:DropDownList ID="DropDownList_dist"  class="form-control" runat="server">
                  <asp:ListItem>Anand</asp:ListItem>
                     <asp:ListItem>Baroda</asp:ListItem>
                     <asp:ListItem>Kheda</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                     <asp:DropDownList ID="DropDownList_taluko"  class="form-control" runat="server">
                  <asp:ListItem>Anand</asp:ListItem>
                     <asp:ListItem>Baroda</asp:ListItem>
                     <asp:ListItem>Kheda</asp:ListItem>
                  </asp:DropDownList>
              </div>
               <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                     <asp:DropDownList ID="DropDownList1"  class="form-control"  runat="server">
                  <asp:ListItem>Anand</asp:ListItem>
                     <asp:ListItem>Matar</asp:ListItem>
                     <asp:ListItem>Vadatal</asp:ListItem>
                          <asp:ListItem>Mogari</asp:ListItem>
                          <asp:ListItem>Vvnagar</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                    <asp:Button ID="Button1" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" runat="server" Text="Submit" />
              </div>
              </div>
        </div>
</asp:Content>

