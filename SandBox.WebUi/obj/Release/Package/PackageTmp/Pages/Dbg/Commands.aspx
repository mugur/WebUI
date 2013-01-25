<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Commands.aspx.cs" Inherits="SandBox.WebUi.Pages.Dbg.Commands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Тип команды: ">
    </dx:ASPxLabel>
    <dx:ASPxComboBox ID="ASPxComboBoxCommands" runat="server">
        <Items>
            <dx:ListEditItem Text="Старт VM" Value="4" />
            <dx:ListEditItem Text="Стоп VM" Value="5" />
            <dx:ListEditItem Text="Статус VM" Value="11" />
        </Items>
    </dx:ASPxComboBox>
    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Данные: ">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="ASPxTextBoxData" runat="server" Theme="DevEx" Width="170px" 
        ontextchanged="ASPxTextBoxCommand_TextChanged">
    </dx:ASPxTextBox>
    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Отправить комманду" 
        Theme="DevEx" onclick="ASPxButton1_Click">
    </dx:ASPxButton>
</asp:Content>
