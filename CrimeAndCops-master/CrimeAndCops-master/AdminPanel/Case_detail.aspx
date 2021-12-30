<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Case_detail.aspx.cs" Inherits="AdminPanel_Case_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="comp_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="comp_id" HeaderText="comp_id" InsertVisible="False" ReadOnly="True" SortExpression="comp_id" />
            <asp:BoundField DataField="pol_id_usr" HeaderText="pol_id_usr" SortExpression="pol_id_usr" />
            <asp:BoundField DataField="subj" HeaderText="subj" SortExpression="subj" />
            <asp:BoundField DataField="nm" HeaderText="nm" SortExpression="nm" />
            <asp:BoundField DataField="addrs" HeaderText="addrs" SortExpression="addrs" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="postal_code" HeaderText="postal_code" SortExpression="postal_code" />
            <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="auth_code" HeaderText="auth_code" SortExpression="auth_code" />
            <asp:BoundField DataField="yr_compl" HeaderText="yr_compl" SortExpression="yr_compl" />
            <asp:BoundField DataField="is_status" HeaderText="is_status" SortExpression="is_status" />
            <asp:BoundField DataField="p_date" HeaderText="p_date" SortExpression="p_date" />
            <asp:BoundField DataField="is_result" HeaderText="is_result" SortExpression="is_result" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" DeleteCommand="DELETE FROM compl_db WHERE (comp_id = @comp_id)" SelectCommand="SELECT * FROM [compl_db]">
        <DeleteParameters>
            <asp:QueryStringParameter Name="comp_id" QueryStringField="@comp_id" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

