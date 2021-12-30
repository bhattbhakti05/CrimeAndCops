<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Police.master" AutoEventWireup="true" CodeFile="new_complain.aspx.cs" Inherits="clientside_whisper_new_complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%--<div class="col-md-3 col-lg-2 text-center">
        		<div class="practice-area ftco-animate fadeInUp ftco-animated">
        			<div class="icon d-flex justify-content-center align-items-center">
        				<span class="flaticon-handcuffs"></span>
        			</div>
        			<h3><a href="listof_criminals.aspx">List of Criminals</a></h3>
        		</div>
        	</div>--%>
    
    
   <div class="card-body" >
       <h4 class="card-title" id="horz-layout-icons" align="Center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Complain</h4>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="data" BackColor="#FFFFA6" BorderColor="Black" BorderStyle="Double" GridLines="Horizontal" HorizontalAlign="Center" DataKeyField="comp_id" align="Center" >
       
        <ItemTemplate>
            Complain Id:
            <asp:Label ID="comp_idLabel" runat="server" Text='<%# Eval("comp_id") %>' />
            <br />
            Police Station Name:
            <asp:Label ID="pol_id_usrLabel" runat="server" Text='<%# Eval("pol_id_usr") %>' />
            <br />
            Subject Of Complain:
            <asp:Label ID="subjLabel" runat="server" Text='<%# Eval("subj") %>' />
            <br />

            Name:
            <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' />

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
            Your Complain:
            <asp:Label ID="yr_complLabel" runat="server" Text='<%# Eval("yr_compl") %>' />
            <br />
           <a href="view_detail.aspx?cid=<%# Eval("comp_id") %>">View Details</a>
            <br />
        </ItemTemplate>
    </asp:DataList>
       
    <asp:SqlDataSource ID="data" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT [comp_id], [pol_id_usr], [subj], [nm], [city], [postal_code], [phn], [email], [yr_compl] FROM [compl_db] WHERE (([is_status] = @is_status) AND ([pol_id_usr] = @pol_id_usr))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Pending" Name="is_status" Type="String" />
            <asp:SessionParameter Name="pol_id_usr" SessionField="unm" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT * FROM [compl_db] WHERE ([comp_id] = @comp_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="comp_id" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
       </div>  
         
</asp:Content>

