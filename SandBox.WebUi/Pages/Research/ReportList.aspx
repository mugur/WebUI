<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ReportList.aspx.cs" Inherits="SandBox.WebUi.Pages.Research.ReportList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" type="text/css" href="../../Content/PageView.css"  />

       <div id='page_header'>
          Отчет о исследовании №<%=Rs.Id%> (<%=Rs.ResearchName%>)
       </div>

       <table class='panel'>
			<tbody>
                <tr>
                  <td class='panel-left'>
                      <div class='panel-text'>
                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Text="Назад к списку исследований" NavigateUrl="~/Pages/Research/Current.aspx">
                        </dx:ASPxHyperLink>
                      </div>
                  </td>
                </tr>
			</tbody>
        </table>

        <table class='panel'>
			<tbody>

                <tr>
                  <td class='panel-left'>
                      <div class='panel-text-nomargin'>
                        <dx:ASPxHyperLink ID="linkGetTraffic" runat="server" Text="Получить перехват сетевого траффика" NavigateUrl="javascript:;" Visible="true">
                        </dx:ASPxHyperLink>
                      </div>
                  </td>
                </tr>
                
                <tr>
                  <td class='panel-left'>
                      <div class='panel-text-nomargin'>
                        <dx:ASPxHyperLink ID="linkGetProcessList" runat="server" 
                              Text="Получить список процессов" 
                              NavigateUrl="~/Pages/Research/ProcessList.aspx" Visible="true">
                        </dx:ASPxHyperLink>
                      </div>
                  </td>
                </tr>

                <tr>
                  <td class='panel-left'>
                      <div class='panel-text-nomargin'>
                        <dx:ASPxHyperLink ID="linkGetRegistryList" runat="server" 
                              Text="Получить образ реестра" NavigateUrl="~/Pages/Research/RegistryList.aspx" 
                              Visible="true">
                        </dx:ASPxHyperLink>
                      </div>
                  </td>
                </tr>

                <tr>
                  <td class='panel-left'>
                      <div class='panel-text-nomargin'>
                        <dx:ASPxHyperLink ID="linkGetFileList" runat="server" 
                              Text="Получить образ файловой системы" 
                              NavigateUrl="~/Pages/Research/FileList.aspx" Visible="true">
                        </dx:ASPxHyperLink>
                      </div>
                  </td>
                </tr>
                 <tr>
                  <td class='panel-left'>
                      <div class='panel-text-nomargin'>
                        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Монитор событий" 
                              NavigateUrl="~/Pages/Research/SetMonitor.aspx" />
                      </div>
                  </td>
                </tr>
			</tbody>
		</table>
        
<div class="page_table"> 
    <dx:ASPxLabel ID="LPagingSize" runat="server" Text="Колличество строк на одной странице в таблице">
    </dx:ASPxLabel>
    <dx:ASPxComboBox ID="CBPagingSize" runat="server" ValueType="System.Int32" 
        Height="21px" LoadingPanelText="Загрузка&amp;hellip;" SelectedIndex="2" 
        Width="350px" AutoPostBack="True" 
        onselectedindexchanged="CBPagingSize_SelectedIndexChanged">
        <Items>
            <dx:ListEditItem Text="10" Value="10" />
            <dx:ListEditItem Text="20" Value="20" />
            <dx:ListEditItem Selected="True" Text="30" Value="30" />
            <dx:ListEditItem Text="40" Value="40" />
            <dx:ListEditItem Text="50" Value="50" />
            <dx:ListEditItem Text="60" Value="60" />
            <dx:ListEditItem Text="70" Value="70" />
            <dx:ListEditItem Text="80" Value="80" />
            <dx:ListEditItem Text="90" Value="90" />
            <dx:ListEditItem Text="100" Value="100" />
        </Items>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
    </dx:ASPxComboBox>
    <hr />
    <dx:ASPxGridView ID="gridViewReports" runat="server"  AutoGenerateColumns="False" 
            EnableTheming="True" Theme="Default"  
            KeyFieldName="Id" Width="90%" 
        style="margin-top: 0px; margin-right: 9px;" >
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Id"  VisibleIndex="0" Visible=False 
                ReadOnly="True">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>

                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RschId" VisibleIndex="1" 
                Visible="False">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ModuleId" VisibleIndex="2" Width="50px" 
                Caption="Модуль">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Действие" FieldName="EventCode" 
                VisibleIndex="3" Width="50px">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Описание" FieldName="Description" 
                VisibleIndex="10">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Объект" FieldName="Who" VisibleIndex="9" 
                Width="100px">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Цель" FieldName="Dest" VisibleIndex="5">
                <PropertiesTextEdit>
                    <ValidationSettings ErrorText="Неверное значение">
                        <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager PageSize="30">
        </SettingsPager>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />

<SettingsLoadingPanel Text="Загрузка&amp;hellip;"></SettingsLoadingPanel>
    </dx:ASPxGridView>
</div>

</asp:Content>
