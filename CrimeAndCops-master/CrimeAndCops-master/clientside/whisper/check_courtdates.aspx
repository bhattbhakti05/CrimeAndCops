<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/lawyer.master" AutoEventWireup="true" CodeFile="check_courtdates.aspx.cs" Inherits="clientside_whisper_check_courtdates" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <div> Court Dates  
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
       <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDOB" Format="dd/MM/yyyy" runat="server" />--%>
   <h2 class="card-title" id="horz-layout-icons" align="Center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Today's Court Date</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center" >
        <ItemTemplate>
            Name:<asp:Label ID="Label2" runat="server" Text='<%# Eval("nm") %>'></asp:Label>
            <br />
            Email:<asp:Label ID="Label3" runat="server" Text='<%# Eval("l_email") %>'></asp:Label>
            <br />
            Date:<asp:Label ID="Label1" runat="server" Text='<%# Eval("court_date") %>'></asp:Label>
            <br />
        </ItemTemplate>
    </asp:DataList>
                   
</asp:Content>

