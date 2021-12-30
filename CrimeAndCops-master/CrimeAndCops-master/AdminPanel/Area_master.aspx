<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="Area_master.aspx.cs" Inherits="AdminPanel_Area_master" %>

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
	                <h4 class="card-title" id="horz-layout-icons">Area Detail</h4>
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
		                            <label class="col-md-3 label-control" for="timesheetinput1">Select District name</label>
		                            <div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                            <asp:DropDownList ID="Ds_id" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="d_name" DataValueField="d_Id"></asp:DropDownList>
			                            	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT * FROM [district]"></asp:SqlDataSource>
			                            	<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT [l_Id] FROM [Lawyer_master]"></asp:SqlDataSource>--%>
			                            	<%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
				                            <div class="form-control-position">
				                               <%-- <i class="ft-user"></i>--%>
				                            </div>
			                            </div>
		                            </div>
		                        </div>

                                <div class="form-group row">
		                            <label class="col-md-3 label-control" for="timesheetinput1">Select Taluka Name</label>
		                            <div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                            <asp:DropDownList ID="dc_id" runat="server" DataSourceID="SqlDataSource2" DataTextField="t_name" DataValueField="t_Id"></asp:DropDownList>
			                            	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT * FROM [talukaa] WHERE ([d_id] = @d_id)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Ds_id" Name="d_id" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
			                            </div>
		                            </div>
		                        </div>

                                <div class="form-group row">
		                            <label class="col-md-3 label-control" for="timesheetinput1"> Village Name</label>
		                            <div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Area Name"></asp:TextBox>
			                            	<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT [l_Id] FROM [Lawyer_master]"></asp:SqlDataSource>--%>
			                            	<%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
				                            <div class="form-control-position">
				                               <%-- <i class="ft-user"></i>--%>
				                            </div>
			                            </div>
		                            </div>
		                        </div>
	                			<%--<%--<div class="form-group row">
	                            	<label class="col-md-3 label-control" for="timesheetinput2">Case Details</label>
	                            	<div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                                <asp:TextBox ID="case_detail" runat="server" class="form-control" placeholder="Enter Case Detail" TextMode="MultiLine"></asp:TextBox>
			                            	<%--<input type="text" id="timesheetinput2" class="form-control" placeholder="project name" name="projectname">
				                           --%> <div class="form-control-position">
				                                <%--<i class="fa fa-briefcase"></i>--%>
				                           --%> </div>
			                            </div>
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
                                <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Btn_cancel_Click" />
	                           <%-- <button type="submit" class="btn btn-primary">--%>
                                     <%--<asp:Button ID="Btn_cancel" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Btn_cancel_Click" />--%>
	                                <%--<i class="fa fa-check-square-o"></i> Save--%>
	                           <%-- </button>--%>
	                        </div>
	                    </form>

	                </div
	            </div>
	        </div>
	    </div>
	</div>
        </section>
        </div>
          </div>
        </div>
</asp:Content>

