<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="SandBox.WebUi.Pages.Settings.Users" %>
<%@ Register TagPrefix="dxwgv" Namespace="DevExpress.Web.ASPxGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="gridViewUsers" runat="server" AutoGenerateColumns="False" 
        oncustombuttoncallback="gridViewUsers_CustomButtonCallback">
        <Columns>
            <dx:GridViewCommandColumn Name="Commands" VisibleIndex="4">
                <ClearFilterButton Visible="True">
                </ClearFilterButton>
                <CustomButtons>
                <dx:GridViewCommandColumnCustomButton ID="cbEdit" Text="Редактировать"></dx:GridViewCommandColumnCustomButton>
                <dx:GridViewCommandColumnCustomButton ID="cbDelete" Text="Удалить"></dx:GridViewCommandColumnCustomButton>
                </CustomButtons>
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="id пользователя" FieldName="UserId" 
                VisibleIndex="0" Visible=false>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="имя пользователя" FieldName="Login" 
                VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="дата создания" FieldName="CreatedDate" 
                VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="дата последнего входа" 
                FieldName="LastLoginDate" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="группа" FieldName="Name" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>
</asp:Content>
