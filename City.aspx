<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center" style="font-weight: normal; font-size: x-large; color: #000000">

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" Caption="City" 
        CaptionAlign="Top" CellPadding="4" DataKeyNames="city_id" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" GridLines="Both">
        <EditItemTemplate>
            city_id:
            <asp:Label ID="city_idLabel1" runat="server" Text='<%# Eval("city_id") %>' />
            <br />
            city_name:
            <asp:TextBox ID="city_nameTextBox" runat="server" 
                Text='<%# Bind("city_name") %>' />
            <br />
            state_id:
            <asp:TextBox ID="state_idTextBox" runat="server" 
                Text='<%# Bind("state_id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <InsertItemTemplate>
            city_name:
            <asp:TextBox ID="city_nameTextBox" runat="server" 
                Text='<%# Bind("city_name") %>' />
            <br />
            state_id:
            <asp:TextBox ID="state_idTextBox" runat="server" 
                Text='<%# Bind("state_id") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            city_id:
            <asp:Label ID="city_idLabel" runat="server" Text='<%# Eval("city_id") %>' />
            <br />
            city_name:
            <asp:Label ID="city_nameLabel" runat="server" Text='<%# Bind("city_name") %>' />
            <br />
            state_id:
            <asp:Label ID="state_idLabel" runat="server" Text='<%# Bind("state_id") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [city_master_tbl] WHERE [city_id] = @original_city_id AND [city_name] = @original_city_name AND [state_id] = @original_state_id" 
        InsertCommand="INSERT INTO [city_master_tbl] ([city_name], [state_id]) VALUES (@city_name, @state_id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [city_master_tbl]" 
        UpdateCommand="UPDATE [city_master_tbl] SET [city_name] = @city_name, [state_id] = @state_id WHERE [city_id] = @original_city_id AND [city_name] = @original_city_name AND [state_id] = @original_state_id">
        <DeleteParameters>
            <asp:Parameter Name="original_city_id" Type="Int32" />
            <asp:Parameter Name="original_city_name" Type="String" />
            <asp:Parameter Name="original_state_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="city_name" Type="String" />
            <asp:Parameter Name="state_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="city_name" Type="String" />
            <asp:Parameter Name="state_id" Type="Int32" />
            <asp:Parameter Name="original_city_id" Type="Int32" />
            <asp:Parameter Name="original_city_name" Type="String" />
            <asp:Parameter Name="original_state_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

