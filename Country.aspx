<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center" style="font-size: x-large; font-weight: normal; color: #000000; font-style: normal">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        Caption="Country Profile" CaptionAlign="Top" CellPadding="3" 
        DataKeyNames="country_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <EditItemTemplate>
            country_id:
            <asp:Label ID="country_idLabel1" runat="server" 
                Text='<%# Eval("country_id") %>' />
            <br />
            country_name:
            <asp:TextBox ID="country_nameTextBox" runat="server" 
                Text='<%# Bind("country_name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <InsertItemTemplate>
            country_id:
            <asp:TextBox ID="country_idTextBox" runat="server" 
                Text='<%# Bind("country_id") %>' />
            <br />
            country_name:
            <asp:TextBox ID="country_nameTextBox" runat="server" 
                Text='<%# Bind("country_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            country_id:
            <asp:Label ID="country_idLabel" runat="server" 
                Text='<%# Eval("country_id") %>' />
            <br />
            country_name:
            <asp:Label ID="country_nameLabel" runat="server" 
                Text='<%# Bind("country_name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [country_master_tbl] WHERE [country_id] = @original_country_id AND [country_name] = @original_country_name" 
        InsertCommand="INSERT INTO [country_master_tbl] ([country_id], [country_name]) VALUES (@country_id, @country_name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [country_master_tbl]" 
        UpdateCommand="UPDATE [country_master_tbl] SET [country_name] = @country_name WHERE [country_id] = @original_country_id AND [country_name] = @original_country_name">
        <DeleteParameters>
            <asp:Parameter Name="original_country_id" Type="Int32" />
            <asp:Parameter Name="original_country_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="country_id" Type="Int32" />
            <asp:Parameter Name="country_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="country_name" Type="String" />
            <asp:Parameter Name="original_country_id" Type="Int32" />
            <asp:Parameter Name="original_country_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</div>
</asp:Content>

