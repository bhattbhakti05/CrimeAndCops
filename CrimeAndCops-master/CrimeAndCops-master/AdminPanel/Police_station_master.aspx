<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Police_station_master.aspx.cs" Inherits="AdminPanel_Police_station_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-body {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pol_id" class="table table-striped table-bordered multiple-control-elements "  Width="900px" HorizontalAlign="Center" DataSourceID="SqlDataSource1">
    <Columns>
        
        <asp:CommandField ShowDeleteButton="True" />
        
        <asp:BoundField DataField="pol_id" HeaderText="pol_id" InsertVisible="False" ReadOnly="True" SortExpression="pol_id" />
        <asp:BoundField DataField="ps_nm" HeaderText="ps_nm" SortExpression="ps_nm" />
        <asp:BoundField DataField="ps_type" HeaderText="ps_type" SortExpression="ps_type" />
        <asp:BoundField DataField="ps_add" HeaderText="ps_add" SortExpression="ps_add" />
        <asp:BoundField DataField="dist" HeaderText="dist" SortExpression="dist" />
        <asp:BoundField DataField="taluko" HeaderText="taluko" SortExpression="taluko" />
        <asp:BoundField DataField="vlg" HeaderText="vlg" SortExpression="vlg" />
        <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="pol_id_usr" HeaderText="pol_id_usr" SortExpression="pol_id_usr" />
        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
    </Columns>
</asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT * FROM [Police_stattion_db]" DeleteCommand="DELETE FROM Police_stattion_db WHERE (pol_id = @pol_id)">
          <DeleteParameters>
              <asp:QueryStringParameter Name="pol_id" QueryStringField="pol_id" />
          </DeleteParameters>
    </asp:SqlDataSource>
      </asp:Content>

