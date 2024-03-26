<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ICONSForm.aspx.cs" Inherits="Practice1.ICONSForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!DOCTYPE html>
<html>
<head>
    <title>Text and HR Tag in Same Line</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
                <p>This is some text.</p>
            </div>
            <div class="col-auto">
                <hr>
            </div>
        </div>
    </div>
</body>
</html>
</asp:Content>
