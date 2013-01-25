<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainRoot.master" CodeBehind="CommunicationError.aspx.cs" Inherits="SandBox.WebUi.Pages.Error.CommunicationError" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="accountpanel">
    <div id="account-box">
           <div class="accountHeader">
                <h2>Вход</h2>
                <p>Введите имя пользователя и пароль.</p> 
            </div>

            <dx:ASPxLabel ID="lblUserName" runat="server" AssociatedControlID="tbUserName" Text="Имя пользователя:" />
<div class="form-field">
	<dx:ASPxTextBox ID="tbUserName" runat="server" Width="200px">
	    <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	        <RequiredField ErrorText=" " IsRequired="true" />
	    </ValidationSettings>
	</dx:ASPxTextBox>
</div>

<dx:ASPxLabel ID="lblPassword" runat="server" AssociatedControlID="tbPassword" Text="Пароль:" />
<div class="form-field">
	<dx:ASPxTextBox ID="tbPassword" runat="server" Password="true" Width="200px">
	    <ValidationSettings ValidationGroup="LoginUserValidationGroup">
	        <RequiredField ErrorText=" " IsRequired="true" />
	    </ValidationSettings>
	</dx:ASPxTextBox>
</div>

<dx:ASPxButton ID="btnLogin" runat="server" Text="Вход" ValidationGroup="LoginUserValidationGroup">
</dx:ASPxButton>

    </div>
</div>
</asp:Content>