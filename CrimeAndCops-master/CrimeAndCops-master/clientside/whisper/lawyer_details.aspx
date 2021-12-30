<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Citizen.master" AutoEventWireup="true" CodeFile="lawyer_details.aspx.cs" Inherits="clientside_whisper_lawyer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="app-content content">
      <div class="content-wrapper">
    <div class="content-body">
    <section id="horizontal-form-layouts">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title" id="horz-layout-icons" align="Center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lawyer Details</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <%--<ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>--%>
                    </div>
               <br />
            
            <asp:DataList ID="DataList1" runat="server" DataKeyField="lwyr_id" 
                        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
            
                    <table class="w-100" align="left">
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" 
                                    ImageUrl='<%# Eval("img") %>' />
                            </td>
                            <td>
                                Lawyer ID:
                                <asp:Label ID="lwyr_idLabel" runat="server" Text='<%# Eval("lwyr_id") %>' />
                                <br />
                                Name:
                                <asp:Label ID="l_nmLabel" runat="server" Text='<%# Eval("l_nm") %>' />
                                <br />
                                Contact:
                                <asp:Label ID="contact_noLabel" runat="server" 
                                    Text='<%# Eval("contact_no") %>' />
                                <br />
                                Email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                <br />
                                Practice At:
                                <asp:Label ID="Practice_atLabel" runat="server" 
                                    Text='<%# Eval("Practice_at") %>' />
                                <br />
                                Year Of Experince:
                                <asp:Label ID="Year_of_expLabel" runat="server" 
                                    Text='<%# Eval("Year_of_exp") %>' />
                                <br />
                                <asp:Image ID="Image1" runat="server" />
                                <br />
                                Office Address:
                                <asp:Label ID="addrsLabel" runat="server" Text='<%# Eval("addrs") %>' />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
            
                  
                    <br />
                </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" 
                    ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BD %>" 
                        SelectCommand="SELECT * FROM [lawyer_db]">
                    </asp:SqlDataSource>
            
                   
                </div>
               
            </div>
        </div>
    </div>
        </section>
        </div>
          </div>
        </div>
</asp:Content>

