<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker_master.master" AutoEventWireup="true" CodeFile="Skill.aspx.cs" Inherits="Skill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

<div>

<center>
<marquee><h1>Jobseeker Skills</h1></marquee>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        Caption="Skills" CaptionAlign="Top" CellPadding="4" 
        DataKeyNames="skills_id" DataSourceID="SqlDataSource1" Font-Size="X-Large" 
        ForeColor="#333333">
        <EditItemTemplate>
            skills_id:
            <asp:Label ID="skills_idLabel1" runat="server" 
                Text='<%# Eval("skills_id") %>' />
            <br />
            skill_name:
            <asp:TextBox ID="skill_nameTextBox" runat="server" 
                Text='<%# Bind("skill_name") %>' />
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
            skill_name:
            <asp:TextBox ID="skill_nameTextBox" runat="server" 
                Text='<%# Bind("skill_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            skills_id:
            <asp:Label ID="skills_idLabel" runat="server" Text='<%# Eval("skills_id") %>' />
            <br />
            skill_name:
            <asp:Label ID="skill_nameLabel" runat="server" 
                Text='<%# Bind("skill_name") %>' />
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
        DeleteCommand="DELETE FROM [skills_tbl] WHERE [skills_id] = @original_skills_id AND [skill_name] = @original_skill_name" 
        InsertCommand="INSERT INTO [skills_tbl] ([skill_name]) VALUES (@skill_name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [skills_tbl]" 
        UpdateCommand="UPDATE [skills_tbl] SET [skill_name] = @skill_name WHERE [skills_id] = @original_skills_id AND [skill_name] = @original_skill_name">
        <DeleteParameters>
            <asp:Parameter Name="original_skills_id" Type="Int32" />
            <asp:Parameter Name="original_skill_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="skill_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="skill_name" Type="String" />
            <asp:Parameter Name="original_skills_id" Type="Int32" />
            <asp:Parameter Name="original_skill_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</center>
</div>
</div>
</asp:Content>

