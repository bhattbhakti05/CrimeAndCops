<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/Police.master" AutoEventWireup="true" CodeFile="view_detail.aspx.cs" Inherits="clientside_whisper_view_detail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" SelectedItemStyle-HorizontalAlign="Center" DataKeyField="comp_id" DataSourceID="SqlDataSource1" BackColor="#F9EA93" BorderColor="Black" BorderStyle="Ridge" HorizontalAlign="Center" ForeColor="#663300"  >
         
        <ItemTemplate>
         <asp:Panel ID="Panel1" runat="server">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Complain details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
           
            <table class="auto-style1" id="tblCustomers" >
                <tr>
                  <td>  Complain Id:</td>
           <td> <asp:Label ID="comp_idLabel" runat="server" Text='<%# Eval("comp_id") %>' /></td>
                    <caption>
                        <br />
                    </caption>
         
                    
                </tr>
                <tr>
                     <td>  Police Station Name:</td>
          <td>  <asp:Label ID="pol_id_usrLabel" runat="server" Text='<%# Eval("pol_id_usr") %>' /></td>
                </tr>
                <tr>
                    <td>  Subject Of Complain:</td>
                  
           <td> <asp:Label ID="subjLabel" runat="server" Text='<%# Eval("subj") %>' /></td>
                    <caption>
                        <br />
                    </caption>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>  <asp:Label ID="nmLabel" runat="server" Text='<%# Eval("nm") %>' /></td>
                </tr>
                <tr>
                    <td>Addrss:</td>
                   
                     <td>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("addrs") %>' /></td>
                </tr>
                <tr>
                    <td>City:</td>
                 <td>   <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td>
                </tr>
                <tr>
                    <td>Postal code:</td>
                        <td>       <asp:Label ID="postal_codeLabel" runat="server" Text='<%# Eval("postal_code") %>' /></td>
              </tr>
                <tr>
                    <td>Phone Number:</td>
               <td>    <asp:Label ID="phnLabel" runat="server" Text='<%# Eval("phn") %>' /></td> 
              </tr>
                <tr>
                    <td>Email:</td>
                  <td>   <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' /></td>
             </tr>
                <tr>
                    <td>Authorized Code: </td>
                   
                     <td>  <asp:Label ID="Label2" runat="server" Text='<%# Eval("auth_code") %>' /></td>
            
                </tr>
                <tr>
                    <td>Your Complain:</td>
                    <td><asp:Label ID="yr_complLabel" runat="server" Text='<%# Eval("yr_compl") %>' />
        </td>
                </tr>
                <tr>
                    <td>Appointment Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" />
                    </td>
                </tr>
            </table>
                
             <br />
            <asp:button runat="server" class="btn btn-primary" text="Approve and Give Appintment" OnClick="Btn_save_Click"  />
    <asp:button runat="server" class="btn btn-primary" text="Reject" OnClick="Btn_cancel_Click" /> <input type="button" class="btn btn-primary" id="btnExport" value="Export" />
             <br />
              <br />
             <br />
            <br />
             
                 </asp:Panel>
             </ItemTemplate>
        

<SelectedItemStyle HorizontalAlign="Center"></SelectedItemStyle>
    </asp:DataList>
    <div>
     <%--<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Print" />--%>
			<%--							<input type="button" id="btnExport" value="Export" />						 
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#tblCustomers')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Table.pdf");
                }
            });
        });
    </script>	--%>


        
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#tblCustomers')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Table.pdf");
                }
            });
        });
    </script>	

    </div>
   
   <%-- <asp:Panel ID="Panel1" runat="server"></asp:Panel>--%>
    
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD %>" SelectCommand="SELECT * FROM [compl_db] WHERE ([comp_id] = @comp_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="comp_id" runat="server" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
   
</asp:Content>

