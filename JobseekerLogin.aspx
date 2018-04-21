<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="JobseekerLogin.aspx.cs" Inherits="JobseekerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 309px;
        }
        .style3
        {
            width: 132px
        }
        .style4
        {
            width: 131px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <marquee> <h1>Welcome to the Jobseeker Login </h1></marquee>
    
    <div align="center" height:332px; width: 918px;">
        
         <form>
      <center >
         <div> 
         <table style="width: 100%; color: #000000; font-size: medium; font-family: 'Times New Roman', Times, serif; " 
              align="center">
              
             
              
                <caption align="top" 
                    style="font-family: Arial, Helvetica, sans-serif; color: #000000; font-size: medium">
                    Login</caption>
              
             
              
                <td class="style2">
                      &nbsp;
                  </td>
               <td class="style4">
                      &nbsp;
                  </td>
                  <td class="style3">
                      &nbsp;
                  </td>
                  <td>
                      &nbsp;
                  </td>
                

                 
   
              <tr>
                <td class="style2">
                      
                  </td>
               <td class="style4">
                      Email Address :
                  </td>
                  <td class="style3">
                     <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address"></asp:TextBox>
                      
                  </td>
                  <td>
                      &nbsp;
                  </td>
                

                 
              </tr>
              <tr>
                  <td class="style2">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </td>
               <td class="style4">
                      Password :</td>
                  <td class="style3">
                      
                      <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                      
                      
                      
                  </td>
                  <td>
                      &nbsp;
                  </td>
                 
              </tr>
              <tr>
                  <td class="style2">
                      &nbsp;
                  </td>
                  <td class="style1" colspan="2">
                      &nbsp;
                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="btnLogin" runat="server" 
                          ImageUrl="~/images/loginbtn.png" onclick="btnLogin_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblerror" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="Green" Visible="False"></asp:Label></td>
               <td>
                      &nbsp;
                  <a href="jobseekerRegi.aspx" style="color: #FF0000; font-size: large">New User? Sign Up</a></td>
             
              </tr>
          </table>
          </div>
      </center>
      </form>
      </div>
    </div>


</asp:Content>

