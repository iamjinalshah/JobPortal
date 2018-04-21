<%@ Page Title="" Language="C#" MasterPageFile="~/RecruiterMaster.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="State" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center" style="font-weight: normal; font-size: x-large; font-variant: normal">

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        Caption="State" CaptionAlign="Top" CellPadding="3" CellSpacing="2" 
        DataKeyNames="state_id" DataSourceID="SqlDataSource1" GridLines="Both">
        <EditItemTemplate>
            state_id:
            <asp:DynamicControl ID="state_idDynamicControl" runat="server" 
                DataField="state_id" Mode="ReadOnly" />
            <br />
            state_name:
            <asp:DynamicControl ID="state_nameDynamicControl" runat="server" 
                DataField="state_name" Mode="Edit" />
            <br />
            country_id:
            <asp:DynamicControl ID="country_idDynamicControl" runat="server" 
                DataField="country_id" Mode="Edit" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" ValidationGroup="Insert" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            state_name:
            <asp:DynamicControl ID="state_nameDynamicControl" runat="server" 
                DataField="state_name" Mode="Insert" ValidationGroup="Insert" />
            <br />
            country_id:
            <asp:DynamicControl ID="country_idDynamicControl" runat="server" 
                DataField="country_id" Mode="Insert" ValidationGroup="Insert" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            state_id:
            <asp:DynamicControl ID="state_idDynamicControl" runat="server" 
                DataField="state_id" Mode="ReadOnly" />
            <br />
            state_name:
            <asp:DynamicControl ID="state_nameDynamicControl" runat="server" 
                DataField="state_name" Mode="ReadOnly" />
            <br />
            country_id:
            <asp:DynamicControl ID="country_idDynamicControl" runat="server" 
                DataField="country_id" Mode="ReadOnly" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:PortalConnectionString %>" 
        DeleteCommand="DELETE FROM [state_master_tbl] WHERE [state_id] = @original_state_id AND [state_name] = @original_state_name AND [country_id] = @original_country_id" 
        InsertCommand="INSERT INTO [state_master_tbl] ([state_name], [country_id]) VALUES (@state_name, @country_id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [state_master_tbl]" 
        UpdateCommand="UPDATE [state_master_tbl] SET [state_name] = @state_name, [country_id] = @country_id WHERE [state_id] = @original_state_id AND [state_name] = @original_state_name AND [country_id] = @original_country_id">
        <DeleteParameters>
            <asp:Parameter Name="original_state_id" Type="Int32" />
            <asp:Parameter Name="original_state_name" Type="String" />
            <asp:Parameter Name="original_country_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="state_name" Type="String" />
            <asp:Parameter Name="country_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="state_name" Type="String" />
            <asp:Parameter Name="country_id" Type="Int32" />
            <asp:Parameter Name="original_state_id" Type="Int32" />
            <asp:Parameter Name="original_state_name" Type="String" />
            <asp:Parameter Name="original_country_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

