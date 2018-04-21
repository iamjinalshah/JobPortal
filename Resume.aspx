<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<form>
<table class="form" cellpadding="0" cellspacing="0" align="center">
    <tr class="heading">
        <td colspan="2">Job-Seeker Upload Resume...</td>
    </tr>
    <tr>
        <td class="title">Resume Upload</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="Upload" 
                onclick="Button1_Click1" />
            <%--<asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>--%>
        </td>
        </tr>
    </table>
    </form>

</div>

</asp:Content>

