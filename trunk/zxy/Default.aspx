<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TextBox</title>
    <link rel="Stylesheet" href="css/WaterMark.css" />
    <link rel="Stylesheet" href="css/backimg.css" />
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="mainform" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:TextBox ID="TextBoxDataTime" runat="server" CssClass="img"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBoxDataTime_TextBoxWatermarkExtender" 
            runat="server" TargetControlID="TextBoxDataTime" WatermarkText="Enter a Date" WatermarkCssClass="waterMark">
        </cc1:TextBoxWatermarkExtender>
        <cc1:CalendarExtender ID="TextBoxDataTime_CalendarExtender" runat="server" 
            DaysModeTitleFormat="MM/dd/yyyy" TargetControlID="TextBoxDataTime">
        </cc1:CalendarExtender>
        <cc1:MaskedEditExtender ID="TextBoxDataTime_MaskedEditExtender" runat="server" 
            ErrorTooltipEnabled="True" Mask="99/99/9999" MaskType="Date" 
            TargetControlID="TextBoxDataTime" CultureName="en-US">
        </cc1:MaskedEditExtender>     
        <cc1:MaskedEditValidator ID="MaskedEditValidator1" runat="server" 
            ControlExtender="TextBoxDataTime_MaskedEditExtender" 
            ControlToValidate="TextBoxDataTime" Display="Dynamic" 
            EmptyValueMessage="Date is require" InvalidValueMessage="Date is invalid" 
            TooltipMessage="Enter a date"></cc1:MaskedEditValidator>     
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
