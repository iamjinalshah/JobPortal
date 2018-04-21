<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="Experience.aspx.cs" Inherits="experiance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div><h1> Jobseeker Experience</h1>
<div> <center> 
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        Caption="Experience" CaptionAlign="Top" CellPadding="3" CellSpacing="2" 
        DataKeyNames="experince_id" DataSourceID="SqlDataSource1" Font-Size="X-Large" 
        GridLines="Both">
        <EditItemTemplate>
            experince_id:
            <asp:Label ID="experince_idLabel1" runat="server" 
                Text='<%# Eval("experince_id") %>' />
            <br />
            job_seeker_id:
            <asp:TextBox ID="job_seeker_idTextBox" runat="server" 
                Text='<%# Bind("job_seeker_id") %>' />
            <br />
            city_id:
            <asp:TextBox ID="city_idTextBox" runat="server" Text='<%# Bind("city_id") %>' />
            <br />
            experince_year:
            <asp:TextBox ID="experince_yearTextBox" runat="server" 
                Text='<%# Bind("experince_year") %>' />
            <br />
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" 
                Text='<%# Bind("company_name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            experince_id:
            <asp:TextBox ID="experince_idTextBox" runat="server" 
                Text='<%# Bind("experince_id") %>' />
            <br />
            job_seeker_id:
            <asp:TextBox ID="job_seeker_idTextBox" runat="server" 
                Text='<%# Bind("job_seeker_id") %>' />
            <br />
            city_id:
            <asp:TextBox ID="city_idTextBox" runat="server" Text='<%# Bind("city_id") %>' />
            <br />
            experince_year:
            <asp:TextBox ID="experince_yearTextBox" runat="server" 
                Text='<%# Bind("experince_year") %>' />
            <br />
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" 
                Text='<%# Bind("company_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            experince_id:
            <asp:Label ID="experince_idLabel" runat="server" 
                Text='<%# Eval("experince_id") %>' />
            <br />
            job_seeker_id:
            <asp:Label ID="job_seeker_idLabel" runat="server" 
                Text='<%# Bind("job_seeker_id") %>' />
            <br />
            city_id:
            <asp:Label ID="city_idLabel" runat="server" Text='<%# Bind("city_id") %>' />
            <br />
            experince_year:
            <asp:Label ID="experince_yearLabel" runat="server" 
                Text='<%# Bind("experince_year") %>' />
            <br />
            company_name:
            <asp:Label ID="company_nameLabel" runat="server" 
                Text='<%# Bind("company_name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <div align="center" style="font-size: large; font-family: Arial, Helvetica, sans-serif; color: #000080; font-weight: normal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Resume.aspx" 
            BorderStyle="None" Font-Size="Large" Font-Names="Arial">Upload Resume</asp:LinkButton>
           
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [experince_tbl] WHERE [experince_id] = @original_experince_id AND [job_seeker_id] = @original_job_seeker_id AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([experince_year] = @original_experince_year) OR ([experince_year] IS NULL AND @original_experince_year IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL))" 
        InsertCommand="INSERT INTO [experince_tbl] ([experince_id], [job_seeker_id], [city_id], [experince_year], [company_name]) VALUES (@experince_id, @job_seeker_id, @city_id, @experince_year, @company_name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [experince_tbl]" 
        UpdateCommand="UPDATE [experince_tbl] SET [job_seeker_id] = @job_seeker_id, [city_id] = @city_id, [experince_year] = @experince_year, [company_name] = @company_name WHERE [experince_id] = @original_experince_id AND [job_seeker_id] = @original_job_seeker_id AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([experince_year] = @original_experince_year) OR ([experince_year] IS NULL AND @original_experince_year IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_experince_id" Type="Int32" />
            <asp:Parameter Name="original_job_seeker_id" Type="Int32" />
            <asp:Parameter Name="original_city_id" Type="Int32" />
            <asp:Parameter Name="original_experince_year" Type="Decimal" />
            <asp:Parameter Name="original_company_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="experince_id" Type="Int32" />
            <asp:Parameter Name="job_seeker_id" Type="Int32" />
            <asp:Parameter Name="city_id" Type="Int32" />
            <asp:Parameter Name="experince_year" Type="Decimal" />
            <asp:Parameter Name="company_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="job_seeker_id" Type="Int32" />
            <asp:Parameter Name="city_id" Type="Int32" />
            <asp:Parameter Name="experince_year" Type="Decimal" />
            <asp:Parameter Name="company_name" Type="String" />
            <asp:Parameter Name="original_experince_id" Type="Int32" />
            <asp:Parameter Name="original_job_seeker_id" Type="Int32" />
            <asp:Parameter Name="original_city_id" Type="Int32" />
            <asp:Parameter Name="original_experince_year" Type="Decimal" />
            <asp:Parameter Name="original_company_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</center></div>

</div>
</asp:Content>

