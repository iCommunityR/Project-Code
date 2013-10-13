<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iComm.UI._Default" %>

<%@ Register Assembly="DevExpress.ExpressApp.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Web.Controls" TagPrefix="cc1" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style type="text/css">
        .auto-style1 {
            width: 432px;
            height: 451px;
            text-align:left;
            vertical-align:middle;
        }
        .auto-style2 {
            width: 935px;
            height: 451px;
            text-align:left;
            vertical-align:top;
        }
       .auto-style3 {
            width: 302px;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style5 {
            width: 200px;
            height: 23px;
        }
        .auto-style6 {
            width: 302px;
            height: 23px;
        }
    </style>
 <table>
    <tr>
        <td class="auto-style2">
            Site Content
        </td>
        <td class="auto-style1">

            <fieldset>
    <legend>Submit Your News Story</legend>
     <table>
      <tr>  
       <td class="auto-style4">First Name</td> 
        <td class="auto-style3"> <dx:ASPxTextBox ID="TxFname" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>  </td>
          </tr> 
    <tr>  
       <td class="auto-style4">Sur Name</td> 
        <td class="auto-style3"> <dx:ASPxTextBox ID="TxSurName" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>  </td>
          </tr> 

<tr>  
       <td class="auto-style4">Email</td> 
        <td class="auto-style3"> <dx:ASPxTextBox ID="TxMail" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>
         </td>
          </tr> 

<tr>  
       <td class="auto-style4">Phone No.</td> 
        <td class="auto-style3"> <dx:ASPxTextBox ID="Txphn" runat="server" Width="230px" Theme="DevEx" Font-Size="Small" Height="5px"></dx:ASPxTextBox>
         </td>
          </tr> 

<tr>  
       <td class="auto-style4">Whithhold Identity</td> 
        <td class="auto-style3">  <dx:ASPxComboBox ID="TxIdentity" runat="server" Theme="Aqua" Width="230px">
            <Items>
                <dx:ListEditItem Text="Yes" Value="Yes" />
                <dx:ListEditItem Text="No" Value="No" />
            </Items>
            </dx:ASPxComboBox> </td>
          </tr> 

         <tr>  
       <td class="auto-style5">News Title</td> 
        <td class="auto-style6"> <dx:ASPxTextBox ID="TxTitle" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>  </td>
   </tr> 

<tr>  
       <td class="auto-style5">News Details</td> 
        <td class="auto-style6"> <dx:ASPxTextBox ID="TxStory" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>  </td>
   </tr> 

<tr>  
       <td class="auto-style4">News Location</td> 
        <td class="auto-style3"> <dx:ASPxTextBox ID="TxLocatn" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTextBox>  </td>
          </tr> 

<tr>  
       <td class="auto-style4">Time</td> 
        <td class="auto-style3"> <dx:ASPxTimeEdit ID="TxTime" runat="server" Width="230px" Theme="DevEx"></dx:ASPxTimeEdit> </td>
          </tr> 


         <tr>  
       <td class="auto-style4">Date</td> 
        <td class="auto-style3"> <dx:ASPxDateEdit ID="TxDte" runat="server" Height="24px" Width="230px" Theme="Aqua"></dx:ASPxDateEdit>
         </td>
          </tr> 

         <tr>  
       <td class="auto-style4">Upload Picture</td> 
        <td class="auto-style3"> <dx:ASPxUploadControl ID="TxUpload" runat="server" Width="230px" Theme="DevEx" OnFileUploadComplete="uplImage_FileUploadComplete"></dx:ASPxUploadControl>   

            <dx:ASPxButton ID="BtnUpload" runat="server" Text="Upload Picture" Height="16px" Width="230px" Theme="DevEx" OnClick="BtnUpload_Click"></dx:ASPxButton>
         
              <dx:ASPxImage ID="TxPrev" runat="server" Height="180px" Width="230px">
                  <Border BorderStyle="Solid" />
            </dx:ASPxImage>  </td>
          </tr> 

             <tr>  
       <td class="auto-style4">Submit News</td> 
        <td class="auto-style3">
            <dx:ASPxButton ID="BtnSave" runat="server" Text="Submit News" Height="35px" Width="230px" Theme="Aqua" Font-Bold="True" OnClick="BtnSave_Click"></dx:ASPxButton>
            <dx:ASPxLabel ID="lblMessage" runat="server" Text="ASPxLabel" ForeColor="#990000"></dx:ASPxLabel>
        </td>
          </tr>
         
         
  </table>

</fieldset>


        </td>

    </tr>
 </table>
</asp:Content>
