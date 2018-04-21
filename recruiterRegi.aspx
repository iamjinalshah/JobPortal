<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="recruiterRegi.aspx.cs" Inherits="recruiterRegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center" style="font-size: x-large">
<h1> Company Profile</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="recruiter_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="recruiter_id" HeaderText="recruiter_id" 
                ReadOnly="True" SortExpression="recruiter_id" />
            <asp:BoundField DataField="industry_type" HeaderText="industry_type" 
                SortExpression="industry_type" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                SortExpression="email_id" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [recruiter_tbl] WHERE [recruiter_id] = @original_recruiter_id AND [industry_type] = @original_industry_type AND [company_name] = @original_company_name AND [contact_no] = @original_contact_no AND [fax_number] = @original_fax_number AND [email_id] = @original_email_id AND [address] = @original_address AND [pincode] = @original_pincode" 
        InsertCommand="INSERT INTO [recruiter_tbl] ([recruiter_id], [industry_type], [company_name], [contact_no], [fax_number], [email_id], [address], [pincode]) VALUES (@recruiter_id, @industry_type, @company_name, @contact_no, @fax_number, @email_id, @address, @pincode)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [recruiter_id], [industry_type], [company_name], [contact_no], [fax_number], [email_id], [address], [pincode] FROM [recruiter_tbl]" 
        UpdateCommand="UPDATE [recruiter_tbl] SET [industry_type] = @industry_type, [company_name] = @company_name, [contact_no] = @contact_no, [fax_number] = @fax_number, [email_id] = @email_id, [address] = @address, [pincode] = @pincode WHERE [recruiter_id] = @original_recruiter_id AND [industry_type] = @original_industry_type AND [company_name] = @original_company_name AND [contact_no] = @original_contact_no AND [fax_number] = @original_fax_number AND [email_id] = @original_email_id AND [address] = @original_address AND [pincode] = @original_pincode">
        <DeleteParameters>
            <asp:Parameter Name="original_recruiter_id" Type="Int32" />
            <asp:Parameter Name="original_industry_type" Type="String" />
            <asp:Parameter Name="original_company_name" Type="String" />
            <asp:Parameter Name="original_contact_no" Type="Decimal" />
            <asp:Parameter Name="original_fax_number" Type="Decimal" />
            <asp:Parameter Name="original_email_id" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_pincode" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="recruiter_id" Type="Int32" />
            <asp:Parameter Name="industry_type" Type="String" />
            <asp:Parameter Name="company_name" Type="String" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="fax_number" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="pincode" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="industry_type" Type="String" />
            <asp:Parameter Name="company_name" Type="String" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="fax_number" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="pincode" Type="Decimal" />
            <asp:Parameter Name="original_recruiter_id" Type="Int32" />
            <asp:Parameter Name="original_industry_type" Type="String" />
            <asp:Parameter Name="original_company_name" Type="String" />
            <asp:Parameter Name="original_contact_no" Type="Decimal" />
            <asp:Parameter Name="original_fax_number" Type="Decimal" />
            <asp:Parameter Name="original_email_id" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_pincode" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </asp:Content>

