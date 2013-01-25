using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SandBox.Db;

namespace SandBox.WebUi
{
    public struct CommonTreeItem
    {
        public int ParentID = -1;
        public int ID = -1;
        public string Text = String.Empty;
        public bool IsInTree = false;
    }
    class TreeViewBuilder
    {
        //pid2 идентификатор родительского процесса
        public List<CommonTreeItem> GetCommonTreeItemsFromProcs(int rschId)
        {
            List<CommonTreeItem> res = new List<CommonTreeItem>();
            var rProcs = ReportManager.GetRowProcesses(rschId);
            foreach (var p in rProcs)
            {
                var item = new CommonTreeItem() 
                {
                    ID = p.Pid1,
                    ParentID = p.Pid2!=null? (int)p.Pid2: -1,
                    Text = String.Format("{0} (pid={1}; число потоков={2})", p.Name, p.Pid1,p.Count)
                };
                res.Add(item);
            }
            return res;
        }

    }
}
