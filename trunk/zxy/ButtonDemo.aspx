<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ButtonDemo.aspx.cs" Inherits="ButtonDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Button Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnLink" runat="server" Text="Link to target page" 
            Height="20px" onclick="btnLink_Click" Width="81px" />
        <asp:ImageButton ID="imgLink" runat="server" onclick="btnLink_Click" 
            AlternateText="Link to target page" DescriptionUrl=" " Height="46px" 
            ImageUrl="~/image/button.png" ToolTip="click here to go to target page" 
            Width="56px" />
    </form>
</body>
</html>
