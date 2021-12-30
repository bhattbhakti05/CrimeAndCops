<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Police.master" AutoEventWireup="true" CodeFile="Listof_criminals.aspx.cs" Inherits="clientside_whisper_Listof_criminals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" RepeatDirection="Horizontal" RepeatLayout="Flow" >
       <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="auto-style1" style="text-align:left;">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" 
                            ImageUrl='<%# Eval("img") %>' />
                    </td>
                </tr>
                <tr>
                    <td width="20%">Id:</td>
                    <td width="80%"><%# Eval("Id") %></td>
                </tr>
                <tr>
                    <td>Name Of Criminal:</td>
                    <td><%# Eval("c_name") %></td>
                </tr>
                <tr>
                    <td>Alias:</td>
                    <td><%# Eval("alias") %></td>
                </tr>
                <tr>
                    <td>Rewards:</td>
                    <td><%# Eval("rewards") %></td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bhakti %>" SelectCommand="SELECT * FROM [criminal_list]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>

