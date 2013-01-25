using System;
using System.IO;
using System.Linq;
using System.Text;

namespace SandBox.Db
{
    public class ReportManager : DbManager
    {
        public static IQueryable GetProcesses(Int32 researchId, bool rschIDTransform = false)
        {
            var db = new SandBoxDataContext();
            if (rschIDTransform)
            {
                Research r = db.Researches.FirstOrDefault<Research>(x => x.Id == researchId);              
                if (r.State != (int)ResearchState.COMPLETED)
                {
                    int envId = db.Vms.First<Vm>(x => x.Id == r.VmId).EnvId;
                    researchId = envId;
                }
            }
            var processes = from p in db.Procs
                            where p.RschId == researchId
                            select new { rschID = p.RschId, procName = p.Name, pid1 = p.Pid1, pid2 = p.Pid2, streamsCount = p.Count };
            return processes;
        }

        public static IQueryable<Procs> GetRowProcesses(Int32 researchId, bool rschIDTransform = false)
        {
            var db = new SandBoxDataContext();
            if (rschIDTransform)
            {
                Research r = db.Researches.FirstOrDefault<Research>(x => x.Id == researchId);
                if (r.State != (int)ResearchState.COMPLETED)
                {
                    int envId = db.Vms.First<Vm>(x => x.Id == r.VmId).EnvId;
                    researchId = envId;
                }
            }
            var processes = from p in db.Procs
                            where p.RschId == researchId
                            select p;
            return processes;
        }

        public static IQueryable GetProcesses2(Int32 researchId)
        {
            var db = new SandBoxDataContext();
            var processes = from p in db.Procs
                            where p.RschId == researchId
                            select new { rschID = p.RschId, procName = p.Name, pid1 = p.Pid1, pid2 = p.Pid2, streamsCount = p.Count };
            return processes;
        }

        public static IQueryable GetRegs(Int32 researchId, bool rschIDTransform = false)
        {

            var db = new SandBoxDataContext();
            if (rschIDTransform)
            {
                Research r = db.Researches.FirstOrDefault<Research>(x => x.Id == researchId);           
                if (r.State != (int)ResearchState.COMPLETED)
                {                 
                    int envId = db.Vms.First<Vm>(x => x.Id == r.VmId).EnvId;
                    researchId = envId;
                }
            }
            var regs = from r in db.Regs
                       where r.RschID == researchId
                       select new { KeyName = r.KeyName, Parent = r.KeyName/*, EventAdditionalInfo = r.EventAdditionalInfo */};
            return regs;
        }

        public static IQueryable GetRegs2(Int32 researchId)
        {
            var db = new SandBoxDataContext();
            var regs = from r in db.Regs
                       where r.RschID == researchId
                       select new { KeyName = r.KeyName, Parent = r.KeyName/*, EventAdditionalInfo = r.EventAdditionalInfo */};
            return regs;
        }

        public static IQueryable GetFiles(Int32 researchId, bool rschIDTransform = false)
        {
            var db = new SandBoxDataContext();
            if (rschIDTransform)
            {
                Research r = db.Researches.FirstOrDefault<Research>(x => x.Id == researchId); 
                if (r.State != (int)ResearchState.COMPLETED)
                {
                    
                    int envId = db.Vms.First<Vm>(x => x.Id == r.VmId).EnvId;
                    researchId = envId;
                }
            }
            var files = from f in db.Files
                        where f.RschId == researchId
                        select new { Name = f.Name, IsDir = IsDirToStr(f.IsDir), EventAdditionalInfo = f.EventAdditionalInfo};
            return files;
        }

        public static IQueryable GetFiles2(Int32 researchId)
        {
            var db = new SandBoxDataContext();
            var files = from f in db.Files
                        where f.RschId == researchId
                        select new { Name = f.Name, IsDir = IsDirToStr(f.IsDir), EventAdditionalInfo = f.EventAdditionalInfo };
            return files;
        }

        private static string IsDirToStr(bool p)
        {
            if (p) return "директория";
            return "файл";
        }

        public static IQueryable<Report> GetReports()
        {
            var db = new SandBoxDataContext();

            var reports = from r in db.Reports
                           select r;
            return reports;
        }

        public static IQueryable<Report> GetReports(Int32 researchId)
        {
            var db = new SandBoxDataContext();

            var reports = from r in db.Reports
                          where r.ResearchId == researchId
                          select r;
            return reports;
        }

        public static void AddReport(Int32 researchId, Int32 modId, Int32 actionId, String obj, String target, String additional="")
        {            
            using (SandBoxDataContext db = new SandBoxDataContext())
            {
                Report report = new Report { ResearchId = researchId, ModuleId = modId, ActionId = actionId, Object = obj, Target = target, TIme = DateTime.Now, Additional = additional};
                db.Reports.InsertOnSubmit(report);
                db.SubmitChanges();
            }
        }

        public static void ClearReports(Int32 researchId)
        {
            using (SandBoxDataContext db = new SandBoxDataContext())
            {
                var reports = from r in db.Reports
                              where r.ResearchId == researchId
                                  select r;

                db.Reports.DeleteAllOnSubmit(reports);
                db.SubmitChanges();
            }
        }
    }//end Reports class
}//end namespace
