<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Practice1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Home Page</h2>

   <asp:Label ID="lblreg" runat="server" Text="Register"></asp:Label>
</asp:Content>
 <%--<asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
                <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#F7F6F3" />
                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home">
                            <asp:MenuItem Text="about us " Value="about us "></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#5D7B9D" />
                </asp:Menu>
            </asp:ContentPlaceHolder>--%>