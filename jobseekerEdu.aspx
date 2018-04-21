<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="jobseekerEdu.aspx.cs" Inherits="jobseekerEdu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {            width: 162px;
        }
        .style2
        {
            width: 283px;
        }
        .style3
        {
            width: 162px;
            text-align: left;
        }
        .style4
        {
            width: 50px;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            width: 162px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<div align="center" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; color: #000000; background-image: url('images/con_bg.jpg'); background-repeat: no-repeat; height: 452px;">

        <div><br /><h2>Education Details</h2><br />
            <table style="width: 100%;">
                
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style6">
                        Education Name :</td>
                    <td class="style4">
                        <asp:TextBox ID="txteducationname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style6">
                        Qualification :</td>
                    <td class="style4">
                        <asp:TextBox ID="txtqualificaion" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style6">
                        Passing Year&nbsp;:</td>
                    <td class="style4">
                        <asp:TextBox ID="txtpassingyr" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style6">
                        Institute Name :</td>
                    <td class="style4">
                        <asp:TextBox ID="txtinstiname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style5" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="25px" 
                        Width="73px" onclick="btnSubmit_Click"/>
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnReset" runat="server" Text="Reset" Height="25px" 
                        Width="73px" onclick="btnReset_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="btnNext" runat="server" Text="Next" Height="25px" 
                        Width="73px" onclick="btnNext_Click"/>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        
        </div>
</div>
</div>
</asp:Content>

