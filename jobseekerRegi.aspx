<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="jobseekerRegi.aspx.cs" Inherits="jobseekerRegi" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 109px;
            text-align: left;
        }
        .style3
        {
            width: 109px;
        }
        .style4
        {
            width: 311px
        }
        .style5
        {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

<div align="center" 
        
        style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; color: #000000; background-image: url('images/con_bg.jpg'); background-repeat: no-repeat; height: 452px;">
        
        
        
        
        
        <div><br /><br /><h2>Job Seeker Registration Details</h2>
        
        <table style="width: 100%;">
            
            <tr>
                <td class="style4">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td class="style5">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    First Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Middle Name :</td>
                <td class="style5">
                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Birthdate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtbirthcal" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtbirthcal_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtbirthcal">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Contact No&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtcont" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="171px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Email-Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="style5">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="25px" 
                        Width="73px" onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" Height="25px" 
                        Width="73px" onclick="btnReset_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnNext" runat="server" Text="Next" Height="25px" 
                        Width="73px" PostBackUrl="~/jobseekerEdu.aspx" onclick="btnNext_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>
        </div>
        


</div>


    </div>
</asp:Content>

