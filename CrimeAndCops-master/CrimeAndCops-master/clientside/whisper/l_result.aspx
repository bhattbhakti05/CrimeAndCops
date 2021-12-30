<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="l_result.aspx.cs" Inherits="clientside_whisper_l_result" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<script runat="server">

    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h3 align="Center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Solved Cases</h3>
    <asp:GridView ID="GridView1" runat="server"  align="Center" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AlternatingRowStyle-HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="appt_id" HeaderText="appt_id" SortExpression="appt_id" />
            <asp:BoundField DataField="nm" HeaderText="nm" SortExpression="nm" />
            <asp:BoundField DataField="l_email" HeaderText="l_email" SortExpression="l_email" />
            <asp:BoundField DataField="court_date" HeaderText="court_date" SortExpression="court_date" />
            <asp:BoundField DataField="next_date" HeaderText="next_date" SortExpression="next_date" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT Id, appt_id, nm, l_email, court_date, next_date, comments FROM court_date WHERE (l_unm=@l_unm)" UpdateCommand="UPDATE court_date SET next_date = @next_date, comments = @Comments WHERE appt_id=@appt_id">
        <SelectParameters>
            <asp:SessionParameter Name="l_unm" SessionField="unm" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="next_date" />
            <asp:Parameter Name="Comments" />
            <asp:QueryStringParameter Name="appt_id" QueryStringField="appt_id" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
   
</asp:Content>


