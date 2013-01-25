<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="NewResearch.aspx.cs" Inherits="SandBox.WebUi.Pages.Research.NewResearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" type="text/css" href="../../Content/PageView.css"  />

<div id='page_header'>
    Добавление нового исследования
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

<div style="position:relative; width:64%; float:right; margin-right:5px;">

<div>
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Дополнительные параметры исследования" Theme="iOS">
    </dx:ASPxLabel>
    <div>
        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Сетевая активность">
        </dx:ASPxLabel>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Width="100%" 
            style="margin-bottom: 5px; margin-top:5px;" AutoGenerateColumns="False" 
            onrowdeleting="ASPxGridView1_RowDeleting" KeyFieldName="f2">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Задание" FieldName="f1" VisibleIndex="0">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Параметр" FieldName="f2" VisibleIndex="1">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPager Visible="False">
            </SettingsPager>
<SettingsLoadingPanel Text="Загрузка&amp;hellip;"></SettingsLoadingPanel>
        </dx:ASPxGridView>               
        <table style="width: 80%;">
            <tr>
                <td style="width: 210px">
                   <dx:ASPxComboBox ID="CBNetActiv" runat="server" ValueType="System.String" 
                        Width="200px" AutoPostBack="True" ViewStateMode="Enabled">
                    </dx:ASPxComboBox>
                </td>
                <td>
                    <dx:ASPxTextBox ID="TBNetTaskValue" runat="server" Width="250px" 
                        style="left:210px;" Height="20px">
                    </dx:ASPxTextBox>
                </td>
                <td>
                    <dx:ASPxButton ID="BAddNetTask" runat="server" Text="Вставить" 
                        onclick="BAddNetTask_Click">
                    </dx:ASPxButton> 
                </td>
                <td>
                    <dx:ASPxButton ID="BDelNetTask" runat="server" Text="Удалить" 
                        onclick="BDelNetTask_Click">
                    </dx:ASPxButton> 
                </td>
            </tr>
            </table>
    </div>
    <div>
        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Файловая система">
        </dx:ASPxLabel>
        <dx:ASPxGridView ID="ASPxGridView2" runat="server" Width="100%" 
            style="margin-bottom: 5px; margin-top:5px;" AutoGenerateColumns="False" 
            KeyFieldName="f2">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Задание" FieldName="f1" VisibleIndex="0">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Параметр" FieldName="f2" VisibleIndex="1">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPager Visible="False">
            </SettingsPager>
<SettingsLoadingPanel Text="Загрузка&amp;hellip;"></SettingsLoadingPanel>
        </dx:ASPxGridView>               
        <table style="width: 100%;">
            <tr>
                <td style="width: 210px">
                   <dx:ASPxComboBox ID="CBFileActiv" runat="server" ValueType="System.String" 
                        Width="200px">
                    </dx:ASPxComboBox>
                </td>
                <td>
                    <dx:ASPxTextBox ID="TBNFileTaskValue" runat="server" Width="250px" 
                        style="left:210px;" Height="20px">
                    </dx:ASPxTextBox>
                </td>
                <td>
                    <dx:ASPxButton ID="BAddFileTask" runat="server" Text="Вставить" 
                        onclick="BAddFileTask_Click">
                    </dx:ASPxButton> 
                </td>
                <td>
                    <dx:ASPxButton ID="BDelFileTask" runat="server" Text="Удалить" 
                        onclick="BDelFileTask_Click">
                    </dx:ASPxButton> 
                </td>
            </tr>
            </table>
    </div>
    <div>
        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Реестр">
        </dx:ASPxLabel>
        <dx:ASPxGridView ID="ASPxGridView3" runat="server" Width="100%" 
            style="margin-bottom: 5px; margin-top:5px;" AutoGenerateColumns="False" 
            KeyFieldName="f2">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Задание" FieldName="f1" VisibleIndex="0">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Параметр" FieldName="f2" VisibleIndex="1">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPager Visible="False">
            </SettingsPager>
<SettingsLoadingPanel Text="Загрузка&amp;hellip;"></SettingsLoadingPanel>
        </dx:ASPxGridView>

        
                  
        <table style="width: 100%;">
            <tr>
                <td style="width: 210px">
                   <dx:ASPxComboBox ID="CBRegActiv" runat="server" ValueType="System.String" 
                        Width="200px">
                    </dx:ASPxComboBox>
                </td>
                <td>
                    <dx:ASPxTextBox ID="TBNRegTaskValue" runat="server" Width="250px" 
                        style="left:210px;" Height="20px">
                    </dx:ASPxTextBox>
                </td>
                <td>
                    <dx:ASPxButton ID="BAddRegTask" runat="server" Text="Вставить" 
                        onclick="BAddRegTask_Click">
                    </dx:ASPxButton> 
                </td>
                <td>
                    <dx:ASPxButton ID="BDelRegTask" runat="server" Text="Удалить" 
                        onclick="BDelRegTask_Click">
                    </dx:ASPxButton> 
                </td>
            </tr>
            </table>
    </div>
        <div>
        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Прцессы">
        </dx:ASPxLabel>
        <dx:ASPxGridView ID="ASPxGridView4" runat="server" Width="100%" 
            style="margin-bottom: 5px; margin-top:5px;" AutoGenerateColumns="False" 
                KeyFieldName="f2">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Задание" FieldName="f1" VisibleIndex="0">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Параметр" FieldName="f2" VisibleIndex="1">
                    <PropertiesTextEdit>
                        <ValidationSettings ErrorText="Неверное значение">
                            <RegularExpression ErrorText="Ошибка проверки регулярного выражения" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPager Visible="False">
            </SettingsPager>
<SettingsLoadingPanel Text="Загрузка&amp;hellip;"></SettingsLoadingPanel>
        </dx:ASPxGridView>

        
                  
        <table style="width: 100%;">
            <tr>
                <td style="width: 210px">
                   <dx:ASPxComboBox ID="CBProcActiv" runat="server" ValueType="System.String" 
                        Width="200px">
                    </dx:ASPxComboBox>
                </td>
                <td>
                    <dx:ASPxTextBox ID="TBProcTaskValue" runat="server" Width="250px" 
                        style="left:210px;" Height="20px">
                    </dx:ASPxTextBox>
                </td>
                <td>
                    <dx:ASPxButton ID="BAddProcTask" runat="server" Text="Вставить" 
                        onclick="BAddProcTask_Click">
                    </dx:ASPxButton> 
                </td>
                <td>
                    <dx:ASPxButton ID="BDelProcTask" runat="server" Text="Удалить" 
                        onclick="BDelProcTask_Click">
                    </dx:ASPxButton> 
                </td>
            </tr>
            </table>
    </div>
</div>
    <hr style="width:100%;"/>
    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Начальный каталог для получения списка файлов">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="50%">
    </dx:ASPxTextBox>
    <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Ветка реестра">
    </dx:ASPxLabel>
    <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" Width="50%" 
        AutoPostBack="True" LoadingPanelText="Загрузка&amp;hellip;">
        <Items>
            <dx:ListEditItem Text="HKEY_CLASSES_ROOT" Value="HKEY_CLASSES_ROOT" />
            <dx:ListEditItem Text="HKEY_CURRENT_USER" Value="HKEY_CURRENT_USER" />
            <dx:ListEditItem Text="HKEY_LOCAL_MACHINE" Value="HKEY_LOCAL_MACHINE" />
            <dx:ListEditItem Text="HKEY_USERS" Value="HKEY_USERS" />
            <dx:ListEditItem Text="HKEY_CURRENT_CONFIG" Value="HKEY_CURRENT_CONFIG" />
        </Items>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
    </dx:ASPxComboBox>
    <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="Подетка реестра">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="50%">
    </dx:ASPxTextBox>
    <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Включить монитор процессов">
    </dx:ASPxCheckBox>
</div>
<div style="position:relative; width:25%; float:left; margin-right: 0px; top: 9px; left: 0px;">
<table class='form'>
			<tbody>
         
                <tr>
                  <td style="width: 150px"><div class='table_header'>Основные параметры</div></td>
                  <td><%--<hr style="width:210px;"/>--%></td>
                </tr>

                <tr>
                  <td style="width: 150px"><div class="table_text">Наименование исследования:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbLir" runat="server" Width="200px">
                         <ValidationSettings ValidationGroup="AddResearchValidationGroup">
	                      <RequiredField ErrorText=" " IsRequired="true" />
	                     </ValidationSettings>
                       </dx:ASPxTextBox>
                  </td>
                </tr>
                <tr>
                  <td style="width: 150px"><div class="table_text">ЛИР:</div></td>
                  <td>
                       <dx:ASPxComboBox ID="cbMachine" runat="server" Width="200px" 
                           LoadingPanelText="Загрузка&amp;hellip;">
                        <ValidationSettings ValidationGroup="AddResearchValidationGroup">
	                      <RequiredField ErrorText=" " IsRequired="true" />
	                    </ValidationSettings>
                       </dx:ASPxComboBox>
                  </td>
                </tr>
                <tr>
                  <td style="width: 150px"><div class="table_text">Наименование ВПО:</div></td>
                  <td>
                       <dx:ASPxComboBox ID="cbMalware" runat="server" Width="200px" 
                           LoadingPanelText="Загрузка&amp;hellip;">
                       <ValidationSettings ValidationGroup="AddResearchValidationGroup">
	                      <RequiredField ErrorText=" " IsRequired="true" />
	                    </ValidationSettings>
                       </dx:ASPxComboBox>
                  </td>
                </tr>
                <tr>
                  <td style="width: 150px"><div class="table_text">Время проведения:</div></td>
                  <td>
                        <dx:ASPxSpinEdit ID="spinTime" runat="server" Height="21px" Number="0" Width="100px" MinValue = "1" MaxValue = "120">
                        </dx:ASPxSpinEdit>
                  </td>  
                </tr>
                
                <<tr>
                  <td style="width: 150px"><div class='table_header'>Дополнительные параметры</div></td>
                 <td><%--<hr style="width:210px;"/>--%></td>
                </tr>

                <%--<tr>
                  <td style="width: 150px"><div class="table_text">Скрыть файл:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbHideFile" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>--%>

                <%--<tr>
                  <td style="width: 150px"><div class="table_text">Запретить удаление файла:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbLockDelete" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>--%>

               <%-- <tr>
                  <td style="width: 150px"><div class="table_text">Скрыть ветку реестра:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbHideRegistry" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>--%>

              <%--  <tr>
                  <td style="width: 150px"><div class="table_text">Скрыть процесс:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbHideProcess" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>--%>

              <tr>
                  <td style="width: 150px"><div class="table_text">Установить сигнатуру для сканирования:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbSetSignature" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>

                <tr>
                  <td style="width: 150px"><div class="table_text">Установить расширение для отслеживания:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbSetExtension" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>

            <%--    <tr>
                  <td style="width: 150px"><div class="table_text">Установить полосу пропускания:</div></td>
                  <td>
                       <dx:ASPxTextBox ID="tbSetBandwidth" runat="server" Width="200px" Text="4096">
                           <MaskSettings IncludeLiterals="DecimalSymbol" />
                       </dx:ASPxTextBox>
                  </td>
                </tr>--%>

                <tr>
                  <td style="width: 150px"><div class='table_header'>Завершение по наступлению события</div></td>
                  <td>
                       <%--<hr style="width:210px;"/>--%>
                  </td>
                </tr>

                <tr>
                  <td style="width: 150px">&nbsp;</td>
                  <td>
                       <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" 
                           Width="200px" AutoPostBack="True" LoadingPanelText="Загрузка&amp;hellip;" 
                           onselectedindexchanged="ASPxComboBox1_SelectedIndexChanged">
                           <Items>
                               <dx:ListEditItem Text="Сетевая активность" Value="Сетевая активность" />
                               <dx:ListEditItem Text="Файловая система" Value="Файловая система" />
                               <dx:ListEditItem Text="Реестр" Value="Реестр" />
                               <dx:ListEditItem Text="Процессы" Value="Процессы" />
                           </Items>
<ValidationSettings ErrorText="Неверное значение">
<RegularExpression ErrorText="Ошибка проверки регулярного выражения"></RegularExpression>
</ValidationSettings>
                       </dx:ASPxComboBox>
                       <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" ValueType="System.String" 
                           Width="200px">
                       </dx:ASPxComboBox>
                       <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="200px">
                       </dx:ASPxTextBox>
                  </td>
                </tr>
                <tr>
                  <td style="width: 150px">
                  </td>
                  <td>
                      <dx:ASPxButton ID="btnCreate" runat="server" Text="Создать" ValidationGroup="AddResearchValidationGroup" onclick="BtnCreateClick" AutoPostBack = "false">
                      </dx:ASPxButton>
                  </td>
                </tr>
			</tbody>
</table>   
</div>      
</asp:Content>
