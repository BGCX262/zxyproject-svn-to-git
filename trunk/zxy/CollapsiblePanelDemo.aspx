<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CollapsiblePanelDemo.aspx.cs" Inherits="CollapsiblePanelDemo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Label ID="lblCollapse" runat="server" Text="Click to Collapse"></asp:Label>
        ||<asp:Label ID="lblExpand" runat="server" Text="Click to Expand"></asp:Label>
        <br />
        <asp:Image ID="imgToggle" runat="server" />
        <asp:Label ID="lblState" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Panel ID="pnlDynamic" runat="server" BorderColor="Red" BorderWidth="2px">
            This is static content in the panel.<br />
            This sentences is here to see the effect of changing the padding values.Padding 
            values can be specified in terms of pixels (px),centimeters (cm),or percentage 
            of the panel&#39;s width (%).
        </asp:Panel>
        <cc1:CollapsiblePanelExtender ID="pnlDynamic_CollapsiblePanelExtender" 
            runat="server" CollapseControlID="lblCollapse" Collapsed="True" 
            CollapsedText="Currently Collapsed" Enabled="True" ExpandControlID="lblExpand" 
            ExpandedText="Currently Expanded" ImageControlID="imgToggle" 
            TargetControlID="pnlDynamic" TextLabelID="lblState" CollapsedImage="~/image/no.ico" ExpandedImage="~/image/yes.ico">
        </cc1:CollapsiblePanelExtender>
        <asp:Label ID="lblText" runat="server" Text="some text"></asp:Label>
    </form>
</body>
</html>
