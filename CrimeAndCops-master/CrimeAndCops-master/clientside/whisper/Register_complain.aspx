<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Citizen.master" AutoEventWireup="true" CodeFile="Register_complain.aspx.cs" Inherits="clientside_Register_complain" %>

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
Lodge a complaint</h4>
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
                                    <label class="col-md-3 label-control" for="timesheetinput1">Polic Station Name</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                            <asp:DropDownList ID="drp_polid" runat="server" placeholder="choose Police Station" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ps_nm" 
                                                DataValueField="pol_id_usr"></asp:DropDownList>
                                            
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:BD %>" 
                                                SelectCommand="SELECT [pol_id_usr], [ps_nm] FROM [Police_stattion_db]">
                                            </asp:SqlDataSource>
                                            
                                            <%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
                                            <div class="form-control-position">
                                               <%-- <i class="ft-user"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput2">Subject</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                <asp:TextBox ID="txtsub" runat="server" class="form-control" placeholder="Enter subject" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="text" id="timesheetinput2" class="form-control" placeholder="project name" name="projectname">
                                           --%> <div class="form-control-position">
                                                <%--<i class="fa fa-briefcase"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Name</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtnm" runat="server"  class="form-control" placeholder="Enter Your Name" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Address</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtadd" runat="server"  class="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">City</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtcity" runat="server"  class="form-control" placeholder="Enter Your City" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Postal Code</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtpostal" runat="server"  class="form-control" placeholder="Enter Postal Code" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Phone Number</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtphn" runat="server"  class="form-control" placeholder="Enter Phone number" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Email</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtemail" runat="server"  class="form-control" placeholder="Enter Email" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Authorised Code</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txt_autho" runat="server"  class="form-control" placeholder="Enter Postal Code" TextMode="SingleLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 label-control" for="timesheetinput3">Your Complaint</label>
                                    <div class="col-md-9">
                                        <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="txtcmplnt" runat="server"  class="form-control" placeholder="Enter " TextMode="MultiLine"></asp:TextBox>
                                            <%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
                                            <div class="form-control-position">
                                                <%--<i class="ft-message-square"></i>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                

                                

                            </div>

                            <div class="form-actions right">
                                  
                                <asp:Button ID="Btn_save" runat="server" Text="Save"  class="btn btn-primary" OnClick="Btn_save_Click" /> 
                                <%--<button type="button" class="btn btn-warning mr-1">--%>
                                    <%--<i class="ft-x"></i> Cancel--%>
                               <%-- </button>--%>
                                <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1"  />
                               <%-- <button type="submit" class="btn btn-primary">--%>
                                     <%--<asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Btn_cancel_Click" />--%>
                                    <%--<i class="fa fa-check-square-o"></i> Save--%>
                               <%-- </button>--%>
                                <%--<asp:button ID="Btn_update" runat="server" text="Update" class="btn btn-primary" OnClick="Unnamed1_Click" />--%>
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

