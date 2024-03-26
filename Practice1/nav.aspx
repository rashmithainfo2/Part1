﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nav.aspx.cs" Inherits="Practice1.nav" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
        <meta charset="utf-8"/>  
    <title>Bootstrap Part11</title>  
    <meta name="viewport" content="width=device-width,initial-scale=1"/>  
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>  
</head>  
<body>  
    <!--Default Navbar Start Here-->  
    <!--<nav> tag  start with classes .navbar and .navbar-default-->  
    <nav class="navbar navbar-default">  
        <div class="container-fluid">  
            <!--Navbar Header Start Here-->  
            <div class="navbar-header">  
                <a class="navbar-brand" href="#">C-sharp Corner</a>  
            </div>  
            <!--Navbar Header End Here-->  
            <!--Menu Start Here-->  
            <ul class="nav navbar-nav">  
                <li class="active"><a href="#">Home</a></li>  
                <li><a href="#">About Us</a></li>  
                <li><a href="#">Technology</a></li>  
                <li><a href="#">Contact Us</a></li>  
            </ul>  
            <!--Menu End Here-->  
        </div>  
    </nav>  
    <!--<nav> tag end-->  
    <!--Default Navbar End Here-->  
    <script src="js/jquery-2.1.4.min.js"></script>  
    <script src="js/bootstrap.min.js"></script>  
</body>  
</html>
