<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="job_search.aspx.cs" Inherits="job_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div> 
  
  <div>
  
 
  <div align="center">
  <table align="center">
<h1><font color="maroon" size="5">
Search Company Job  Form</font>
</h1><br />
    <tr>
  <td> Company Name</td>
   
    
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </td>
    </tr>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
</td>
    </tr>
    <tr>
    <td>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
        </asp:DetailsView>
    </td>
    </tr>
       
    </table>
  </div>
  
  
  
  
  </div><center>
       <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" 
           PostBackUrl="~/job_apply.aspx">Job Apply</asp:LinkButton></center>
     </div>       

</asp:Content>

