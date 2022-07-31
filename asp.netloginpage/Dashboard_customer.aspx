<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_customer.aspx.cs" Inherits="asp.netloginpage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
        <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
        &nbsp;<asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        <br />
        <br />
        <asp:Label ID="userTypeLabel" runat="server" Text="Label"></asp:Label>
        <br />
        list of users<br />
        <br />
        <br />
        <br />
        <br />
        list of products&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
                <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" SortExpression="CreatedAt" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Aseel_ExamConnectionString %>" DeleteCommand="DELETE FROM [ProductCategories] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductCategories] ([CreatedBy], [CreatedAt], [Name], [ID]) VALUES (@CreatedBy, @CreatedAt, @Name, @ID)" SelectCommand="SELECT [CreatedBy], [CreatedAt], [Name], [ID] FROM [ProductCategories]" UpdateCommand="UPDATE [ProductCategories] SET [CreatedBy] = @CreatedBy, [CreatedAt] = @CreatedAt, [Name] = @Name WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CreatedBy" Type="String" />
                <asp:Parameter Name="CreatedAt" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CreatedBy" Type="String" />
                <asp:Parameter Name="CreatedAt" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
