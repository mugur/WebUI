﻿using System;
using SandBox.WebUi.Base;

namespace SandBox.WebUi.Pages.Sessions
{
    public partial class Index : BaseLightPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            PageTitle = "сессии";
        }
    }
}