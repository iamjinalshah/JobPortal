<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="job_apply.aspx.cs" Inherits="job_apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div><h1>Job Apply by Job Seeker</h1>
<center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" Caption="Job Apply" 
        CellPadding="4" DataKeyNames="jobapply_id" DataSourceID="SqlDataSource1" 
        Font-Size="Large" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="jobapply_id" HeaderText="jobapply_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="jobapply_id" />
            <asp:BoundField DataField="apply_date" HeaderText="apply_date" 
                SortExpression="apply_date" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [jobapply_tbl] WHERE [jobapply_id] = @original_jobapply_id AND [apply_date] = @original_apply_date AND [job_seeker_id] = @original_job_seeker_id" 
        InsertCommand="INSERT INTO [jobapply_tbl] ([apply_date], [job_seeker_id]) VALUES (@apply_date, @job_seeker_id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [jobapply_id], [apply_date], [job_seeker_id] FROM [jobapply_tbl]" 
        UpdateCommand="UPDATE [jobapply_tbl] SET [apply_date] = @apply_date, [job_seeker_id] = @job_seeker_id WHERE [jobapply_id] = @original_jobapply_id AND [apply_date] = @original_apply_date AND [job_seeker_id] = @original_job_seeker_id">
        <DeleteParameters>
            <asp:Parameter Name="original_jobapply_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_apply_date" />
            <asp:Parameter Name="original_job_seeker_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="apply_date" />
            <asp:Parameter Name="job_seeker_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="apply_date" />
            <asp:Parameter Name="job_seeker_id" Type="Int32" />
            <asp:Parameter Name="original_jobapply_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_apply_date" />
            <asp:Parameter Name="original_job_seeker_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</center>

</div>

</asp:Content>

