<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="detail_candc.aspx.cs" Inherits="clientside_whisper_detail_candc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h2 align="Center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Details of Client And Cases</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center" DataSourceID="SqlDataSource2">
        
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Name:
            <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />
            <br />
            Phone:
            <asp:Label ID="phnLabel" runat="server" Text='<%# Eval("phn") %>' />
            <br />
            Gender:
            <asp:Label ID="genLabel" runat="server" Text='<%# Eval("gen") %>' />
            <br />
            Subject:
            <asp:Label ID="subjLabel" runat="server" Text='<%# Eval("subj") %>' />
            <br />
            Complain Details:
            <asp:Label ID="yr_complLabel" runat="server" Text='<%# Eval("yr_compl") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT user_db.nm, user_db.phn, user_db.gen, compl_db_1.subj, compl_db_1.yr_compl FROM compl_db AS compl_db_1 INNER JOIN user_db ON compl_db_1.email = user_db.email"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
</asp:Content>

