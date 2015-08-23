<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDatasourceWizard.aspx.cs" Inherits="SqlDatasourceWizard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionSqlExpressString %>" 
            SelectCommand="SELECT * FROM [Users] WHERE ([sex] = @sex) ORDER BY [ID]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Users] WHERE [ID] = @original_ID AND [usename] = @original_usename AND [password] = @original_password AND [Email] = @original_Email AND [sex] = @original_sex" 
            InsertCommand="INSERT INTO [Users] ([usename], [password], [Email], [sex]) VALUES (@usename, @password, @Email, @sex)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Users] SET [usename] = @usename, [password] = @password, [Email] = @Email, [sex] = @sex WHERE [ID] = @original_ID AND [usename] = @original_usename AND [password] = @original_password AND [Email] = @original_Email AND [sex] = @original_sex">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="sex" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_usename" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_sex" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="usename" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_usename" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_sex" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="usename" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionSqlExpressString %>" 
            SelectCommand="SELECT DISTINCT [sex] FROM [Users]" 
            ProviderName="<%$ ConnectionStrings:ConnectionSqlExpressString.ProviderName %>"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="sex" DataValueField="sex">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
            EmptyDataText="对不起，没有数据" GridLines="Vertical">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="操作" ShowEditButton="True" />
                <asp:BoundField DataField="usename" HeaderText="用户名" SortExpression="usename" />
                <asp:BoundField DataField="password" HeaderText="密码" 
                    SortExpression="password" />
                <asp:BoundField DataField="Email" HeaderText="邮箱" 
                    SortExpression="Email" />
                <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </form>
</body>
</html>
