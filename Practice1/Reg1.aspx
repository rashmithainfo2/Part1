<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg1.aspx.cs" Inherits="Practice1.Reg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap DatePicker -->
<script type="text/javascript">
    $(function () {
        $('[id*=txtDate]').datepicker({
            format: "dd/mm/yyyy",
            language: "tr"
        });
    });
    </script>
    <%--<script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <div class="panel panel-primary">
      <div class="panel-heading">Registration</div>
      <div class="panel-body">
           <div class="row">
          <div class="col-md-2" >
              <asp:Label Text="FirstName" runat="server" style="width:80px"/></div>
                  <div class="col-md-2">
              <asp:TextBox ID="TxtFName" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>  
              <div class="col-md-1" >
              <asp:Label Text="LastName" runat="server" style="width:80px" /></div>
                  <div class="col-md-2">
              <asp:TextBox ID="TxtLName" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>
                <div class="col-md-2" >
              <asp:Label Text="ScreenName" runat="server" style="width:80px"/></div>
                  <div class="col-md-1">
              <asp:TextBox ID="TxtSName" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>
        </div>
          <br />
          <div class ="row">
              <div class="col-md-2" >
              <asp:Label Text="Date of Birth" runat="server" style="width:80px"/></div>
              <div class="col-md-2" >
              <div class="input-group date">
                  <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
    </div>
              </div>
               <div class="col-md-1">
                 <asp:Label Text="Gender" runat="server" style="width:80px"/></div>
              <div class="col-md-2">
                 <asp:DropDownList ID="DDGender" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" DataTextField="Gender">
                    <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>Male</asp:ListItem> 
            <asp:ListItem>Female</asp:ListItem>
                 </asp:DropDownList>
             </div>
              <div class="col-md-2">
                 <asp:Label Text="Country" runat="server" style="width:200px"/></div>
              <div class="col-md-1">
                 <asp:DropDownList ID="DDCompanyl" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1">
                    <asp:ListItem Value="">Please Select</asp:ListItem>  
          <asp:ListItem>Zambia</asp:ListItem> 
            <asp:ListItem>Angola</asp:ListItem> 
                <asp:ListItem>Rwanda</asp:ListItem> 
                 </asp:DropDownList>
             </div>
          </div>
          <br />
          <div class="row">
          <div class="col-md-2">
              <asp:Label Text="Emailid" runat="server" style="width:80px"/></div>
                  <div class="col-md-2">
              <asp:TextBox ID="txtEmail" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>  
              <div class="col-md-1" >
              <asp:Label Text="Phone" runat="server" style="width:80px" /></div>
                  <div class="col-md-2">
              <asp:TextBox ID="TxtMN0" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>
              <div class="col-md-2" >
              <asp:Label Text="AlPhone" runat="server" style="width:80px" /></div>
                  <div class="col-md-1">
              <asp:TextBox ID="TxtAno" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>
      </div>
          <br />
          <div class="row">
          <div class="col-md-2">
              <asp:Label Text="Password" runat="server" style="width:80px"/></div>
                  <div class="col-md-2">
              <asp:TextBox ID="txtpass" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>  
              <div class="col-md-1" >
              <asp:Label Text="ConfirmPassword " runat="server" style="width:80px" /></div>
                  <div class="col-md-4">
              <asp:TextBox ID="Txtcpass" runat="server" style="width:130px" class="form-control mr-md-2 mb-2 mb-md-1" /></div>
              </div>
          <br />
          <div class="row">
              <div class ="col-md-1">
          <asp:CheckBox ID="CheckBox1" runat="server" />
                  </div>
              <div class ="col-md-2">
                  <asp:Label ID="Label1" runat="server" Text=" I Accept the terms "></asp:Label>
              </div>
               <div class ="col-md-1">
              <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click" /></div>
               <div class ="col-md-2">
                   <asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Cancel" /></div>
             
          <div class ="col-md-1">
              <asp:LinkButton ID="Exporttoexcel" runat="server" Font-Size="Medium" Font-Bold="True" OnClick="Exporttoexcel_Click">LinkButton</asp:LinkButton>
                       </div>
      </div>
           <div class="row">
          <div class ="col-md-12">
           <div class="panel-footer">RIS</div></div>
                </div>
         </div>  
        </div>
        <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="ScreenName" HeaderText="ScreenName" SortExpression="ScreenName" />
                <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Alphone" HeaderText="Alphone" SortExpression="Alphone" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Confirmpassword" HeaderText="Confirmpassword" SortExpression="Confirmpassword" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmpsearchConnectionString2 %>" SelectCommand="SELECT * FROM [Reg_T]"></asp:SqlDataSource>
    </div>
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
 </form>
</body>
</html>
