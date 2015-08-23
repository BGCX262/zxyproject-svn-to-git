<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="DropDownList" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList</title>
    <link rel="Stylesheet" href="css/backimg.css" />
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:DropDownList ID="ddlBooks" runat="server">
        </asp:DropDownList>
        <cc1:ListSearchExtender ID="ddlBooks_ListSearchExtender" runat="server" 
            Enabled="True" PromptText="find it!" 
            TargetControlID="ddlBooks" PromptCssClass="PromptStyle">
        </cc1:ListSearchExtender>
    </form>
</body>
</html>
