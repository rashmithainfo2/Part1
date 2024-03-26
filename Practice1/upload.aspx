
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="Practice1.upload" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    
<script>
function goBack() {
  window.history.back();
}
</script>
 </head>
<body>
    <form id="form1" runat="server">
      <div>
          <asp:Button ID="btnBack" runat="server" Text="Go Back" OnClick="btnBack_Click" />
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </div>
    </form>
</body>
</html>
