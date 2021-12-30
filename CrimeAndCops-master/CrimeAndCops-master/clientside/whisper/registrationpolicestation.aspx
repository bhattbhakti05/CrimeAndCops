<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/registrationmasterpage.master" AutoEventWireup="true" CodeFile="registrationpolicestation.aspx.cs" Inherits="clientside_whisper_whisper_registrationpolicestation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-10 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h2 class="subheading" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Register Here</h2>  
    <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbps_name" class="form-control" placeholder="Enter PoliceStation Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Tbps_name" runat="server" ErrorMessage="Policestation name must be required"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="Tbps_type" class="form-control" placeholder="Enter PoliceStation Type" runat="server" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tbps_type" ErrorMessage="Email must be required"></asp:RequiredFieldValidator>
                  </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                 <asp:TextBox ID="Tbps_adress" class="form-control" placeholder="Enter PoliceStation address" runat="server" TextMode="MultiLine"></asp:TextBox>        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tbps_adress" ErrorMessage="PoliceStation address must be required"></asp:RequiredFieldValidator>
                  </div>
              <div class="form-group">
               

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
                <%--<input type="text" class="form-control" placeholder="Your Email">--%>
                     <asp:TextBox ID="Tbps_phn" class="form-control" placeholder="Enter Your Mobile Number" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Tbps_phn"  ErrorMessage=" Mobile Number must be required"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                <%--<input type="text" class="form-control" placeholder="Subject">--%>
                 <asp:TextBox ID="Tbps_email" class="form-control" placeholder="Enter Your Email" runat="server" TextMode="Email"></asp:TextBox>        
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Tbps_email" ErrorMessage="Email must be require"></asp:RequiredFieldValidator>
                  </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbps_id" class="form-control" placeholder="Enter Your Id" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Tbps_id"  ErrorMessage="Id must be require"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
               <%-- <input type="text" class="form-control" placeholder="Your Name">--%>
                <asp:TextBox ID="Tbps_pass" class="form-control" placeholder="Enter Your Password" runat="server" TextMode="Password"></asp:TextBox>

              </div>
             
              <div class="form-group">
                <%--<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">--%>
                             <asp:Button ID="Button1" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" runat="server" Text="Submit" />

              </div>
              </div>
        </div>
</asp:Content>

