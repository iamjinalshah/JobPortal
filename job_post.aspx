<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="job_post.aspx.cs" Inherits="job_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
<h1>Job Posted By Company</h1>
<center>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        Caption="Job Post " CaptionAlign="Top" CellPadding="4" 
        DataKeyNames="job_post_id" DataSourceID="SqlDataSource1" Font-Size="Large" 
        ForeColor="#333333">
        <EditItemTemplate>
            job_post_id:
            <asp:Label ID="job_post_idLabel1" runat="server" 
                Text='<%# Eval("job_post_id") %>' />
            <br />
            job_name:
            <asp:TextBox ID="job_nameTextBox" runat="server" 
                Text='<%# Bind("job_name") %>' />
            <br />
            vacancy:
            <asp:TextBox ID="vacancyTextBox" runat="server" Text='<%# Bind("vacancy") %>' />
            <br />
            start_date:
            <asp:TextBox ID="start_dateTextBox" runat="server" 
                Text='<%# Bind("start_date") %>' />
            <br />
            end_date:
            <asp:TextBox ID="end_dateTextBox" runat="server" 
                Text='<%# Bind("end_date") %>' />
            <br />
            salary_given:
            <asp:TextBox ID="salary_givenTextBox" runat="server" 
                Text='<%# Bind("salary_given") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            job_name:
            <asp:TextBox ID="job_nameTextBox" runat="server" 
                Text='<%# Bind("job_name") %>' />
            <br />
            vacancy:
            <asp:TextBox ID="vacancyTextBox" runat="server" Text='<%# Bind("vacancy") %>' />
            <br />
            start_date:
            <asp:TextBox ID="start_dateTextBox" runat="server" 
                Text='<%# Bind("start_date") %>' />
            <br />
            end_date:
            <asp:TextBox ID="end_dateTextBox" runat="server" 
                Text='<%# Bind("end_date") %>' />
            <br />
            salary_given:
            <asp:TextBox ID="salary_givenTextBox" runat="server" 
                Text='<%# Bind("salary_given") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            job_post_id:
            <asp:Label ID="job_post_idLabel" runat="server" 
                Text='<%# Eval("job_post_id") %>' />
            <br />
            job_name:
            <asp:Label ID="job_nameLabel" runat="server" Text='<%# Bind("job_name") %>' />
            <br />
            vacancy:
            <asp:Label ID="vacancyLabel" runat="server" Text='<%# Bind("vacancy") %>' />
            <br />
            start_date:
            <asp:Label ID="start_dateLabel" runat="server" 
                Text='<%# Bind("start_date") %>' />
            <br />
            end_date:
            <asp:Label ID="end_dateLabel" runat="server" Text='<%# Bind("end_date") %>' />
            <br />
            salary_given:
            <asp:Label ID="salary_givenLabel" runat="server" 
                Text='<%# Bind("salary_given") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [jobpost_tbl] WHERE [job_post_id] = @original_job_post_id AND [job_name] = @original_job_name AND [vacancy] = @original_vacancy AND [start_date] = @original_start_date AND [end_date] = @original_end_date AND [salary_given] = @original_salary_given" 
        InsertCommand="INSERT INTO [jobpost_tbl] ([job_name], [vacancy], [start_date], [end_date], [salary_given]) VALUES (@job_name, @vacancy, @start_date, @end_date, @salary_given)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [job_post_id], [job_name], [vacancy], [start_date], [end_date], [salary_given] FROM [jobpost_tbl]" 
        UpdateCommand="UPDATE [jobpost_tbl] SET [job_name] = @job_name, [vacancy] = @vacancy, [start_date] = @start_date, [end_date] = @end_date, [salary_given] = @salary_given WHERE [job_post_id] = @original_job_post_id AND [job_name] = @original_job_name AND [vacancy] = @original_vacancy AND [start_date] = @original_start_date AND [end_date] = @original_end_date AND [salary_given] = @original_salary_given">
        <DeleteParameters>
            <asp:Parameter Name="original_job_post_id" Type="Int32" />
            <asp:Parameter Name="original_job_name" Type="String" />
            <asp:Parameter Name="original_vacancy" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="original_start_date" />
            <asp:Parameter DbType="Date" Name="original_end_date" />
            <asp:Parameter Name="original_salary_given" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="job_name" Type="String" />
            <asp:Parameter Name="vacancy" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="start_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="salary_given" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="job_name" Type="String" />
            <asp:Parameter Name="vacancy" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="start_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="salary_given" Type="String" />
            <asp:Parameter Name="original_job_post_id" Type="Int32" />
            <asp:Parameter Name="original_job_name" Type="String" />
            <asp:Parameter Name="original_vacancy" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="original_start_date" />
            <asp:Parameter DbType="Date" Name="original_end_date" />
            <asp:Parameter Name="original_salary_given" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</center>

</div>
</asp:Content>

