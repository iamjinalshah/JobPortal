<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
    <div align="center">
    
    <table style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: normal; font-style: normal; color: #000000" align="center">
   <tr>
    <td><center><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/City.aspx">City</asp:LinkButton></center>
        </td>
    </tr>
    
   
   <tr>
    <td> 
        <center><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/State.aspx">State</asp:LinkButton></center></td>
    </tr>
    
     
   <tr>
    <td> 
        <center><asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Country.aspx">Country</asp:LinkButton></center></td>
    </tr>
   
   
    </table>
    </center>
    </div>
</asp:Content>

