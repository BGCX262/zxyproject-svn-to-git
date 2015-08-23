<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsView.aspx.cs" Inherits="DetailsView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DetailsView Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="dsCustomers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionSqlExpressString %>" 
        
            SelectCommand="SELECT [CustomerID], [NameStyle], [Title], [FirstName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone], [PassWord] FROM [Customer]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @original_CustomerID AND [NameStyle] = @original_NameStyle AND [Title] = @original_Title AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Suffix] = @original_Suffix) OR ([Suffix] IS NULL AND @original_Suffix IS NULL)) AND [CompanyName] = @original_CompanyName AND [SalesPerson] = @original_SalesPerson AND [EmailAddress] = @original_EmailAddress AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [PassWord] = @original_PassWord" 
            InsertCommand="INSERT INTO [Customer] ([NameStyle], [Title], [FirstName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone], [PassWord]) VALUES (@NameStyle, @Title, @FirstName, @LastName, @Suffix, @CompanyName, @SalesPerson, @EmailAddress, @Phone, @PassWord)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Customer] SET [NameStyle] = @NameStyle, [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [Suffix] = @Suffix, [CompanyName] = @CompanyName, [SalesPerson] = @SalesPerson, [EmailAddress] = @EmailAddress, [Phone] = @Phone, [PassWord] = @PassWord WHERE [CustomerID] = @original_CustomerID AND [NameStyle] = @original_NameStyle AND [Title] = @original_Title AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Suffix] = @original_Suffix) OR ([Suffix] IS NULL AND @original_Suffix IS NULL)) AND [CompanyName] = @original_CompanyName AND [SalesPerson] = @original_SalesPerson AND [EmailAddress] = @original_EmailAddress AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [PassWord] = @original_PassWord">
            <DeleteParameters>
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_NameStyle" Type="Boolean" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Suffix" Type="String" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_SalesPerson" Type="String" />
                <asp:Parameter Name="original_EmailAddress" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_PassWord" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="NameStyle" Type="Boolean" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Suffix" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="SalesPerson" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_NameStyle" Type="Boolean" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Suffix" Type="String" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_SalesPerson" Type="String" />
                <asp:Parameter Name="original_EmailAddress" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_PassWord" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="NameStyle" Type="Boolean" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Suffix" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="SalesPerson" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="PassWord" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AutoGenerateRows="False" BackColor="White" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="CustomerID" 
            DataSourceID="dsCustomers" BorderColor="#6600FF">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <FieldHeaderStyle BackColor="#99CCFF" Font-Bold="True" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <EmptyDataTemplate>
                <asp:Label ID="lblEmpty" runat="server" Text="对不起，没有该记录"></asp:Label>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                <asp:CheckBoxField DataField="NameStyle" HeaderText="NameStyle" 
                    SortExpression="NameStyle" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="Suffix" HeaderText="Suffix" 
                    SortExpression="Suffix" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="SalesPerson" HeaderText="SalesPerson" 
                    SortExpression="SalesPerson" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                    SortExpression="EmailAddress" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="PassWord" HeaderText="PassWord" 
                    SortExpression="PassWord" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Fields>
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:DetailsView>
    </form>
</body>
</html>
