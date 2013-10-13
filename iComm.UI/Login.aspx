<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="iComm.UI.Login" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
    <legend>User Login</legend>
       <table>
     <tr>
     <td>Username</td> <td>
         <dx:ASPxTextBox ID="txtUserName" runat="server" Width="190px" Theme="Aqua"></dx:ASPxTextBox>
     </td>
     </tr>
    <tr>
     <td>Password</td> <td>
         <dx:ASPxTextBox ID="txtPassword" runat="server" Width="190px" Password="true" Theme="Aqua"></dx:ASPxTextBox>
     </td>
     </tr>

    <tr>
     <td>
         <dx:ASPxLabel ID="Label3" runat="server" ForeColor="Red"></dx:ASPxLabel>
     </td> <td>
         <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Login" Font-Bold="True" Theme="Aqua" Width="190px" OnClick="ASPxButton1_Click"></dx:ASPxButton> 
     </td>
     </tr>

       </table>


       </fieldset>
</asp:Content>
