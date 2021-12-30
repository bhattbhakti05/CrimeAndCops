<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Police.master" AutoEventWireup="true" CodeFile="pending_fir.aspx.cs" Inherits="clientside_whisper_pending_fir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="card-body" >
       <h4 class="card-title" id="horz-layout-icons" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pending FIR</h4>
   
    <asp:datalist runat="server" DataKeyField="comp_id" DataSourceID="SqlDataSource1" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center">
        <ItemTemplate>
            Complain Id:
            <asp:Label ID="comp_idLabel" runat="server" Text='<%# Eval("comp_id") %>' />
            <br />
            Police Station Name:
            <asp:Label ID="pol_id_usrLabel" runat="server" Text='<%# Eval("pol_id_usr") %>' />
            <br />
            Subject:
            <asp:Label ID="subjLabel" runat="server" Text='<%# Eval("subj") %>' />
            <br />
            Name:
            <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />
            <br />
            Address:
            <asp:Label ID="addrsLabel" runat="server" Text='<%# Eval("addrs") %>' />
            <br />
            City:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            Postal Code:
            <asp:Label ID="postal_codeLabel" runat="server" Text='<%# Eval("postal_code") %>' />
            <br />
            Phone:
            <asp:Label ID="phnLabel" runat="server" Text='<%# Eval("phn") %>' />
            <br />
            Email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            Authorized Code:
            <asp:Label ID="auth_codeLabel" runat="server" Text='<%# Eval("auth_code") %>' />
            <br />
            your Compalain:
            <asp:Label ID="yr_complLabel" runat="server" Text='<%# Eval("yr_compl") %>' />
            <br />
           
<br />
        </ItemTemplate>
    </asp:datalist>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT * FROM [compl_db] WHERE (([is_status] = @is_status) AND ([pol_id_usr] = @pol_id_usr))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Pending" Name="is_status" Type="String" />
            <asp:SessionParameter Name="pol_id_usr" SessionField="unm" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
       </div>
</asp:Content>

