<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="asp.netloginpage.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 372px">
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
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Aseel_ExamConnectionString %>" DeleteCommand="DELETE FROM [ApplicationUsers] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ApplicationUsers] ([ID], [Name], [PhoneNumber], [UserName], [Password], [Type]) VALUES (@ID, @Name, @PhoneNumber, @UserName, @Password, @Type)" SelectCommand="SELECT [ID], [Name], [PhoneNumber], [UserName], [Password], [Type] FROM [ApplicationUsers]" UpdateCommand="UPDATE [ApplicationUsers] SET [Name] = @Name, [PhoneNumber] = @PhoneNumber, [UserName] = @UserName, [Password] = @Password, [Type] = @Type WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="Int64" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="Int64" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        list of products&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
