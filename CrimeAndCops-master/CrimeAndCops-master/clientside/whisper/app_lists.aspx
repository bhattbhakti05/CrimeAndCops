<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="app_lists.aspx.cs" Inherits="clientside_whisper_app_lists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="horizontal-form-layouts">
    <div class="row">
        <div class="col-md-12">
            <div class="card" style="text-align:center;">
                <div class="card-header">
                    <h4 class="card-title" id="horz-layout-icons">My Appointment List</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                </div>
                <div class="card-body">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <ItemTemplate>
                            Name:
                            <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />
                            <br />
                            Issue:
                            <asp:Label ID="issueLabel" runat="server" Text='<%# Eval("issue") %>' />
                            <br />
                            Appointment status:
                            <asp:Label ID="is_statusLabel" runat="server" Text='<%# Eval("is_status") %>' />
                            <br />
                            <br />
                            <a href="app_detail.aspx?id=<%# Eval("appt_id") %>">Give Appointment</a>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" 
                        SelectCommand="SELECT nm,appt_id, issue, is_status, l_unm FROM lawyer_appointmnt WHERE (l_unm = @l_unm) AND (is_status = @sts)">
                        <SelectParameters>
                            <asp:SessionParameter Name="l_unm" SessionField="unm" DefaultValue="" />
                            <asp:Parameter DefaultValue="Pending" Name="sts" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
        </section>
</asp:Content>

