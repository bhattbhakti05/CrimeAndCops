<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Lawyer_details.aspx.cs" Inherits="AdminPanel_Lawyer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lwyr_id"  class="table table-striped table-bordered multiple-control-elements "   DataSourceID="SqlDataSource1" Width="900px" HorizontalAlign="Center">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="lwyr_id" HeaderText="lwyr_id" InsertVisible="False" ReadOnly="True" SortExpression="lwyr_id" />
        <asp:BoundField DataField="l_nm" HeaderText="l_nm" SortExpression="l_nm" />
        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="Practice_at" HeaderText="Practice_at" SortExpression="Practice_at" />
        <asp:BoundField DataField="Year_of_exp" HeaderText="Year_of_exp" SortExpression="Year_of_exp" />
        <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        <asp:BoundField DataField="addrs" HeaderText="addrs" SortExpression="addrs" />
        <asp:BoundField DataField="l_unm" HeaderText="l_unm" SortExpression="l_unm" />
        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
        <asp:BoundField DataField="is_status" HeaderText="is_status" SortExpression="is_status" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT * FROM [lawyer_db]" DeleteCommand="DELETE FROM lawyer_db WHERE (lwyr_id = @lwyr_id)">
    <DeleteParameters>
        <asp:QueryStringParameter Name="lwyr_id" QueryStringField="lwyr_id" />
    </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

