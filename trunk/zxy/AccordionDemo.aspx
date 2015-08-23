<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccordionDemo.aspx.cs" Inherits="AccordionDemo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accordion Demo</title>
    <style type="text/css">
        .header
        {
            background-color:Aqua;
            padding:5px;
            border:solid 1px black;
            color:Black;
        }
        .selectedheader
        {
            background-color:Green;
            padding:5px;
            border:solid 1px black;
            color:Yellow;
        }
        .content
        {
            padding:5px;
            font-style:italic;
            font-family:Arial;
        }
    </style>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <cc1:Accordion ID="Accordion1" runat="server" HeaderCssClass="header" 
        ContentCssClass="content" HeaderSelectedCssClass="selectedheader" 
        TransitionDuration="500" FramesPerSecond="100" AutoSize="Limit"
         FadeTransitions="true" >
            <Panes>
                <cc1:AccordionPane ID="pane1" runat="server">
                    <Header>Question</Header>
                    <Content><asp:Button ID="Button1" runat="server" Text="Button" /></Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="pane2" runat="server">
                    <Header>Unfunny Answer</Header>
                    <Content>The chicken had a gun</Content>
                </cc1:AccordionPane>
            </Panes>
        </cc1:Accordion>
    </div>
    </form>
</body>
</html>
