using System;
using System.Web.UI;

namespace SandBox.WebUi {
    public partial class RootMaster : MasterPage
    {
        private const Int32 MENU_ADMIN          = 0;
        private const Int32 MENU_USER           = 1;
        private const Int32 MENU_EMPTY          = 2;
        private const Int32 MENU_FILEMANAGER    = 3;
        
        protected void Page_Load(object sender, EventArgs e)
        {     
            if (!Page.User.Identity.IsAuthenticated)
            {
                SetMenu(MENU_EMPTY);
            }
            else
            {
                if (Page.User.IsInRole("Administrator"))
                {
                    SetMenu(MENU_ADMIN);
                }
                else 
                if (Page.User.IsInRole("User"))
                {
                    SetMenu(MENU_USER);
                }
                else
                if (Page.User.IsInRole("FileManager"))
                {
                    SetMenu(MENU_FILEMANAGER);
                }
            }
        }

        private void SetMenu(Int32 menu)
        {
            switch (menu)
            {
                case MENU_ADMIN:
                    XmlDataSourceHeader.DataFile = "~/App_Data/MainMenu/AdminMenu.xml";
                    break;
                case MENU_USER:
                    XmlDataSourceHeader.DataFile = "~/App_Data/MainMenu/UserMenu.xml";
                    break;
                case MENU_EMPTY:
                    XmlDataSourceHeader.DataFile = "~/App_Data/MainMenu/EmptyMenu.xml";
                    break;
                case MENU_FILEMANAGER:
                    XmlDataSourceHeader.DataFile = "~/App_Data/MainMenu/FileManagerMenu.xml";
                    break;
            }
            ASPxMenu1.DataBind();
        }

        public Boolean MenuVisible
        {
            get { return ASPxMenu1.Visible; }
            set { ASPxMenu1.Visible = value; }
        }

        public Boolean MenuEnable
        {
            get { return ASPxMenu1.Enabled; }
            set { ASPxMenu1.Enabled = value; }
        }

        protected void AjaxScriptManager_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {

        }

        

    }
}