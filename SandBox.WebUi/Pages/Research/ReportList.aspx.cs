using System;
using SandBox.Db;
using SandBox.WebUi.Base;

namespace SandBox.WebUi.Pages.Research
{
    public partial class ReportList : BaseMainPage
    {
        public Db.Research Rs;

        protected new void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            PageTitle = "Отчет";
            PageMenu  = "~/App_Data/SideMenu/Research/ResearchMenu.xml";
            Int32 researchId = Convert.ToInt32(Request.QueryString["research"]);
            Rs = ResearchManager.GetResearch(researchId);
            if (Rs == null)
            {
                Response.Redirect("~/Error");
            }
            Session["rsch"] = researchId;

            gridViewReports.DataSource = ResearchManager.GetEventsTableViewByRschId(Rs.Id);
            var newPageSize = (Int32)CBPagingSize.SelectedItem.Value;
            gridViewReports.SettingsPager.PageSize = newPageSize;
            gridViewReports.DataBind();

            if (!IsPostBack)
            {
                
            }
        }

        protected void CBPagingSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            var newPageSize = (Int32)CBPagingSize.SelectedItem.Value;
            gridViewReports.SettingsPager.PageSize = newPageSize;
            gridViewReports.DataBind();

        }
    }//end class
}//end namespace