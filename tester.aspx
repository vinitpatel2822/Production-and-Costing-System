<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tester.aspx.cs" Inherits="tester" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
      <div>
          <asp:ToolkitScriptManager ID="ScriptManager1" runat="server"></asp:ToolkitScriptManager>
          </div>
    <div>
        
        <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
    
        <asp:CalendarExtender ID="tb1_CalendarExtender" runat="server" Enabled="True" TargetControlID="tb1">
            
</asp:CalendarExtender>
    
            
    </form>
</body>
</html>
