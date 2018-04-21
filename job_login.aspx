<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="job_login.aspx.cs" Inherits="job_login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <center>
    <h1>Login</h1>
    <table>
     <tr>
         <td>
             E-mail ID:
         </td>
          <td>
        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                      <asp:DropShadowExtender ID="txt_email_DropShadowExtender" 
                  runat="server" Enabled="True" TargetControlID="txt_email">
              </asp:DropShadowExtender>
              <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
              </asp:ToolkitScriptManager>
                      </td>
    </tr>
    <tr>
        <td>
            Password:
         </td>
         <td>
        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
             
             <asp:DropShadowExtender ID="txt_pwd_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="txt_pwd">
             </asp:DropShadowExtender>
             
        </td>
    </tr>
    </table>
    </center>
    
</asp:Content>

