<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="job_category.aspx.cs" Inherits="job_category" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center >
<h1>Job Category</h1>
<table >

<tr>
<td>
Category Name:
    </td>
<td>
    <asp:DropDownList ID="dp_category" runat="server">
    </asp:DropDownList>
    
    <asp:DropDownExtender ID="dp_category_DropDownExtender" runat="server" 
        DynamicServicePath="" Enabled="True" TargetControlID="dp_category">
    </asp:DropDownExtender>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    
</td>
</tr>

</table>
</center>

</asp:Content>

