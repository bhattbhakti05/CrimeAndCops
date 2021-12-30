<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Police.master" AutoEventWireup="true" CodeFile="approved_c_bypolice.aspx.cs" Inherits="clientside_whisper_solved_c_bypolice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         
 <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center" >
       
     <ItemTemplate>
           
             <table cellpadding="2" class="auto-style1" >
                <tr>
                    <td>Subject of complain:</td>
                    <td><%# Eval("subj") %></td>
                </tr>
                <tr>
                    <td>Citizen name:</td>
                    <td><%# Eval("nm") %></td>
                </tr>
                <tr>
                    <td>Phone No:</td>
                    <td><%# Eval("phn") %></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><%# Eval("email") %></td>
                </tr>
                <tr>
                    <td>Complain:</td>
                    <td><%# Eval("yr_compl") %></td>
                </tr>
                <tr>
                    <td>Date:</td>
                    <td><%# Eval("p_date") %></td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT [subj], [nm], [phn], [email], [yr_compl], [p_date] FROM [compl_db] WHERE (([is_status] = @is_status) AND ([pol_id_usr] = @pol_id_usr))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approve" Name="is_status" Type="String" />
            <asp:SessionParameter Name="pol_id_usr" SessionField="unm" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

