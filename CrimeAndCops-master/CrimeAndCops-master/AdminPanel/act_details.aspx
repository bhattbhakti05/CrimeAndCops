<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="act_details.aspx.cs" Inherits="AdminPanel_act_details" %>

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
	                <h4 class="card-title" id="horz-layout-icons">Law Detail</h4>
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
		                            <label class="col-md-3 label-control" for="timesheetinput1">Law Number</label>
		                            <div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                            <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Enter Law Number"></asp:TextBox>
			                            	<%--<input type="text" id="timesheetinput1" class="form-control" placeholder="employee name" name="employeename">--%>
				                            <div class="form-control-position">
				                               <%-- <i class="ft-user"></i>--%>
				                            </div>
			                            </div>
		                            </div>
		                        </div>
	                			<div class="form-group row">
	                            	<label class="col-md-3 label-control" for="timesheetinput2">Law Description</label>
	                            	<div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Description" TextMode="MultiLine"></asp:TextBox>
			                            	<%--<input type="text" id="timesheetinput2" class="form-control" placeholder="project name" name="projectname">
				                           --%> <div class="form-control-position">
				                                <%--<i class="fa fa-briefcase"></i>--%>
				                            </div>
			                            </div>
			                    	</div>
		                        </div>

		                        <div class="form-group row">
	                        		<label class="col-md-3 label-control" for="timesheetinput3">Punishment</label>
	                        		<div class="col-md-9">
			                            <div class="position-relative has-icon-left">
                                                    <asp:TextBox ID="TextBox3" runat="server"  class="form-control" placeholder="Enter Punishment" TextMode="MultiLine"></asp:TextBox>
			                            	<%--<input type="date" id="timesheetinput3" class="form-control" name="date">--%>
				                            <div class="form-control-position">
				                                <%--<i class="ft-message-square"></i>--%>
				                            </div>
			                            </div>
			                        </div>
		                        </div>

		                    	

								

		                        

								
							</div>

	                        <div class="form-actions right">
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT * FROM [act_master]" DeleteCommand="DELETE FROM act_master WHERE (act_id = @act_id)">
                                      <DeleteParameters>
                                          <asp:QueryStringParameter Name="act_id" QueryStringField="@act_id" />
                                      </DeleteParameters>
                                  </asp:SqlDataSource>
                                  <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-primary" OnClick="Button1_Click" />
	                            <%--<button type="button" class="btn btn-warning mr-1">--%>
	                            	<%--<i class="ft-x"></i> Cancel--%>
	                           <%-- </button>--%>
	                           <%-- <button type="submit" class="btn btn-primary">--%>
                                 <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-warning mr-1" OnClick="Button2_Click"/>
	                                <%--<i class="fa fa-check-square-o"></i> Save--%>
	                           <%-- </button>--%>
	                      
                                </div>
	                    
                        </form>
                        
	                </div>
                     
	            </div>
	    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered multiple-control-elements "  DataKeyNames="act_id" DataSourceID="SqlDataSource1" Width="900px" HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="act_id" HeaderText="Act number in ipc" ReadOnly="True" SortExpression="act_id" />
            <asp:BoundField DataField="descrip" HeaderText="Details" SortExpression="descrip" />
            <asp:BoundField DataField="puns" HeaderText="Punishments" SortExpression="puns" />
        </Columns>
    </asp:GridView> 
                </div>
	   
            </div>
       
	</div>
        </section>
        </div>
          </div>
        </div>
<&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
</asp:Content>

