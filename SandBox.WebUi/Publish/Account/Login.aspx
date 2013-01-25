<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Empty.master" CodeBehind="Login.aspx.cs" Inherits="SandBox.WebUi.Account.Login" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/Login.css"  />
    <div id="login_container">
      <div class='login_frame'>
          <h2>web-console | ����</h2>
          <p>������� ��� ������������ � ������.</p>
		<br>

        <div class='label'>
         <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="tbUserName" Text="��� ������������:" />
        </div>
		
        <div>
          <dx:ASPxTextBox ID="tbUserName" runat="server" Width="200px">
	        <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	         <RequiredField ErrorText=" " IsRequired="true" />
	        </ValidationSettings>
	      </dx:ASPxTextBox>
        </div>

        <div class='label'>
         <dx:ASPxLabel ID="ASPxLabel2" runat="server" AssociatedControlID="tbPassword" Text="������:" />
        </div>
		
        <div>
          <dx:ASPxTextBox ID="tbPassword" runat="server" Password="true" Width="200px">
	       <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	         <RequiredField ErrorText=" " IsRequired="true" />
	       </ValidationSettings>
	      </dx:ASPxTextBox>
        </div>

        <br />
        <dx:ASPxButton ID="btnLogin" runat="server" Text="����" ValidationGroup="LoginUserValidationGroup" OnClick="btnLogin_Click">
        </dx:ASPxButton>

      </div>
    </div>


    <div id="description_container">
    <div class=center>��� ��������� ����� �����������:</div>
    <br />
    �������������: admin/123
    <br />
    ������������: user/123
    <br />
    �������� ��������� ���������: filemanager/123
    </div>
</asp:Content>