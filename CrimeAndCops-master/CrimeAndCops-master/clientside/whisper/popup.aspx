<%@ Page Title="" Language="C#" MasterPageFile="~/clientside/whisper/beforeloginMasterPage.master" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="clientside_whisper_popup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>

<%--<asp:Button ID="Button1" runat="server" Text="Fill Form in Popup" />--%>
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
 

<!-- ModalPopupExtender -->

<%--<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"

    CancelControlID="Button2" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>--%>
    
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" PopupControlID="Panl1" TargetControlID="LinkButton1"

    CancelControlID="Button2" BackgroundCssClass="Background" runat="server"></ajaxToolkit:ModalPopupExtender>
<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">

    <%--<table>

    <tr>

    <td>

    <asp:Label runat="server" CssClass="lbl" Text="First Name"></asp:Label>

    </td>

    <td>

    <asp:TextBox runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Middle Name"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox1" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Last Name"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox2" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Gender"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox3" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="Age"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox4" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label5" runat="server" CssClass="lbl" Text="City"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox5" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label6" runat="server" CssClass="lbl" Text="State"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox6" runat="server" Font-Size="14px" ></asp:TextBox>

    </td>

    </tr>

    </table>--%>

    <br />

    <asp:Button ID="Button2" runat="server" Text="Close" />

</asp:Panel>
</asp:Content>

