<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/News.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="iComm.UI.NewsContent.Welcome" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset>
    <legend>Login Successful</legend>
       <table>
     <tr>
         <td>
             <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="ASPxLabel" ForeColor="#CC6600" Font-Bold="True"></dx:ASPxLabel>
         </td>
         </tr>
           <tr><td>Please select from the Navigation Menu above to continue with your tasks.</td></tr>
           </table>

         </fieldset>
</asp:Content>
