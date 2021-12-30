<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="app_detail.aspx.cs" Inherits="clientside_whisper_app_detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
                    <h4 class="card-title" id="horz-layout-icons">
Appointment Detail</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <%--<ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>--%>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </div>
               <br />
            
            <asp:DataList ID="DataList1" runat="server" DataKeyField="appt_id" 
                        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
            
                    Appointment ID:
                    <asp:Label ID="appt_idLabel" runat="server" Text='<%# Eval("appt_id") %>' />
                    <br />
            
                  
                    Email ID:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            
                  
                    <br />
                    Name:
                    <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />
                    <br />
                    Contact:
                    <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                    <br />
                    Issue:
                    <asp:Label ID="issueLabel" runat="server" Text='<%# Eval("issue") %>' />
                    <br />
                    Appointment Status:
                    <asp:Label ID="is_statusLabel" runat="server" Text='<%# Eval("is_status") %>' />
                    
                    
                    <br />
                    Lawyer Name:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("l_unm") %>' />
                    
                    
                    <br />
                    
                    <br />
                    Court Date:<br />
                   
                    <div class="form-actions right">

                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" Format="dd/MM/yyyy"/>
                        <br />
                        My Email Id:<br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        
                              </div>

                                <asp:Button ID="Btn_save" runat="server" Text="Accept"  class="btn btn-primary" 
                                    onclick="Btn_save_Click" />
                                <%--<button type="button" class="btn btn-warning mr-1">--%>
                                    <%--<i class="ft-x"></i> Cancel--%>
                               <%-- </button>--%>
                                <asp:Button ID="Btn_cancel" runat="server" Text="Reject" 
                                    class="btn btn-warning mr-1" onclick="Btn_cancel_Click"  />
                               <%-- <button type="submit" class="btn btn-primary">--%>
                                     <%--<asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Btn_cancel_Click" />--%>
                                    <%--<i class="fa fa-check-square-o"></i> Save--%>
                               <%-- </button>--%>
                                <%--<asp:button ID="Btn_update" runat="server" text="Update" class="btn btn-primary" OnClick="Unnamed1_Click" />--%>
                            </div>
                </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" 
                    ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BD %>" 
                        
                        SelectCommand="SELECT * FROM [lawyer_appointmnt] WHERE ([appt_id] = @appt_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="appt_id" QueryStringField="id" Type="Int32" />
                        </SelectParameters>
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

