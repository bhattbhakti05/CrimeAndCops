<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="disct_add.aspx.cs" Inherits="AdminPanel_state_add" %>

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
	                <h4 class="card-title" id="horz-layout-icons">State Detail</h4>
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
			                            	<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT [l_Id] FROM [Lawyer_master]"></asp:SqlDataSource>--%>
			                            	<%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
				                            <div class="form-control-position">
				                               <%-- <i class="ft-user"></i>--%>
				                            </div>
			                                Enter District:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			                            </div>
		                            </div>
		                        </div>
	                			<%--<div class="form-group row">
	                            	<label class="col-md-3 label-control" for="timesheetinput2">Case Details</label>
	                            	<div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                                <asp:TextBox ID="case_detail" runat="server" class="form-control" placeholder="Enter Case Detail" TextMode="MultiLine"></asp:TextBox>
			                            	<%--<input type="text" id="timesheetinput2" class="form-control" placeholder="project name" name="projectname">
				                           --%> <div class="form-control-position">
				                                <%--<i class="fa fa-briefcase"></i>--%>
				                            </div>
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

