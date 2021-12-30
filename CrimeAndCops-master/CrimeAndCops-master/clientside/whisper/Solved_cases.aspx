<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="Solved_cases.aspx.cs" Inherits="clientside_whisper_Solved_cases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 align="Center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Solved Cases</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="appt_id" DataSourceID="SqlDataSource1" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center">
        <ItemTemplate>
            appt_id:
            <asp:Label ID="appt_idLabel" runat="server" Text='<%# Eval("appt_id") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            nm:
            <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />
            <br />
            contact:
            <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
            <br />
            issue:
            <asp:Label ID="issueLabel" runat="server" Text='<%# Eval("issue") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT [appt_id], [email], [nm], [contact], [issue] FROM [lawyer_appointmnt] WHERE ([is_status] = @is_status2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Pending" Name="is_status2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

