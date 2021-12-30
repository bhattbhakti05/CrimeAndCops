<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Citizen.master" AutoEventWireup="true" CodeFile="lawyer_appoinment.aspx.cs" Inherits="clientside_whisper_lawyer_appoinment" %>

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
                    <h4 class="card-title" id="horz-layout-icons " align="Center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Book Lawyer Appointment</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <%--<ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>--%>
                    </div>
                </div>
                <div class="card-content collpase show">
                    <div class="card-body">
                        <div class="card-text">
                            
                        </div>
                        <form class="form form-horizontal">
                            <div class="form-body">

                                <div class="form-group row">
                                    &nbsp;<div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                            
                                            <%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
                                            <div class="form-control-position">
                                               <%-- <i class="ft-user"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput1">Select Lawyer</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                            <asp:DropDownList ID="drp_lawid" runat="server" placeholder="choose Police Station" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="l_nm" 
                                                DataValueField="l_unm"></asp:DropDownList>
                                            
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:BD %>" 
                                                SelectCommand="SELECT [l_nm], [l_unm] FROM [lawyer_db]">
                                            </asp:SqlDataSource>
                                            
                                            <%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
                                            <div class="form-control-position">
                                               <%-- <i class="ft-user"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput2">Your Name</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                <asp:TextBox ID="txtnm" runat="server" class="form-control" placeholder="Enter Your Name" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="text" id="timesheetinput2" class="form-control" placeholder="project name" name="projectname">
                                           --%> <div class="form-control-position">
                                                <%--<i class="fa fa-briefcase"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Contact Number</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtno" runat="server"  class="form-control" placeholder="Enter Your Contact Number" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Issues</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtissu" runat="server"  class="form-control" placeholder="Enter Your Issues" TextMode="MultiLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             
                                

                                

                            </div>

                            <div class="form-actions right">
                                  
                                <asp:Button ID="Btn_save" runat="server" Text="Save"  class="btn btn-primary" onclick="Btn_save_Click" 
                                    />
                                <%--<button type="button" class="btn btn-warning mr-1">--%>
                                    <%--<i class="ft-x"></i> Cancel--%>
                               <%-- </button>--%>
                                <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1"  />
                               <%-- <button type="submit" class="btn btn-primary">--%>
                                     <%--<asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Btn_cancel_Click" />--%>
                                    <%--<i class="fa fa-check-square-o"></i> Save--%>
                               <%-- </button>--%>
                                <%--<asp:button ID="Btn_update" runat="server" text="Update" class="btn btn-primary" OnClick="Unnamed1_Click" />--%>
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataKeyNames="appt_id" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:BoundField DataField="appt_id" HeaderText="App ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="appt_id" />
                                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    <asp:BoundField DataField="nm" HeaderText="Name" SortExpression="nm" />
                                    <asp:BoundField DataField="contact" HeaderText="Contact" 
                                        SortExpression="contact" />
                                    <asp:BoundField DataField="issue" HeaderText="Issues" SortExpression="issue" />
                                    <asp:BoundField DataField="is_status" HeaderText="Appointment Status" 
                                        SortExpression="is_status" />
                                </Columns>
                                </asp:GridView>
                            
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:BD %>" 
                                    SelectCommand="SELECT * FROM [lawyer_appointmnt] WHERE ([email] = @email)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="email" SessionField="unm" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
        </section>
        </div>
          </div>
        </div>


</asp:Content>

