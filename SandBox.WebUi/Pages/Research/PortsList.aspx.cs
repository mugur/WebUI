using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SandBox.WebUi.Base;

namespace SandBox.WebUi.Pages.Research
{
    public partial class PortsList : BaseMainPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            PageTitle = "Список процессов";
            PageMenu = "~/App_Data/SideMenu/Research/ResearchMenu.xml";

            if (!IsPostBack)
            {
                //Debug.Print("Get research id = " + Request.QueryString["research"]);
            }
        }
    }
}