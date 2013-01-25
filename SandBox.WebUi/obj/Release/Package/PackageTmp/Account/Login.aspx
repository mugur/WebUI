<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainRoot.master" CodeBehind="Login.aspx.cs" Inherits="SandBox.WebUi.Account.Login" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="loginpanel">
        <div id="login-box">
            <div class="accountHeader">
                <h2>����</h2>
                <p>������� ��� ������������ � ������.</p> 
            </div>

<dx:ASPxLabel ID="lblUserName" runat="server" AssociatedControlID="tbUserName" Text="��� ������������:" />
<div class="form-field">
	<dx:ASPxTextBox ID="tbUserName" runat="server" Width="200px">
	    <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	        <RequiredField ErrorText=" " IsRequired="true" />
	    </ValidationSettings>
	</dx:ASPxTextBox>
</div>

<dx:ASPxLabel ID="lblPassword" runat="server" AssociatedControlID="tbPassword" Text="������:" />
<div class="form-field">
	<dx:ASPxTextBox ID="tbPassword" runat="server" Password="true" Width="200px">
	    <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	        <RequiredField ErrorText=" " IsRequired="true" />
	    </ValidationSettings>
	</dx:ASPxTextBox>
</div>

<dx:ASPxButton ID="btnLogin" runat="server" Text="����" ValidationGroup="LoginUserValidationGroup"
    OnClick="btnLogin_Click">
</dx:ASPxButton>

        </div>
    </div>
</asp:Content>