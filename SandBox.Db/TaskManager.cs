using System;
using System.Linq;
using System.Collections.Generic;

namespace SandBox.Db
{
    public enum TaskState
    {
        HIDE_FILE        = 1,
        LOCK_FILE        = 2,
        HIDE_REGISTRY    = 3,
        HIDE_PROCESS     = 4,
        SET_SIGNATURE    = 5,
        SET_EXTENSION    = 6,
        SET_BANDWIDTH    = 7,
        GET_PROCESS      = 15,
        GET_FILES        = 16,
        GET_REGS         = 17
    }

    public class TaskManager : DbManager
    {
        /// <summary>
        /// Получениен типа задания по его описанию
        /// </summary>
        /// <param name="description">описание задания</param>
        /// <returns>-1 если нет результата</returns>
        public static int GetTaskTypeByDescription(string description)
        {
            int res = -1;
            var db = new SandBoxDataContext();
            var des = from tt in db.TaskTypes
                      where tt.Description == description
                      select tt.Type;
            if (des.Count() > 0)
            {
                res = des.FirstOrDefault();
            }
            return res;
        }

        public static IQueryable<Task> GetTasksByClassification(int type)
        {
            var db = new SandBoxDataContext();
            var res = from t in db.Tasks
                      join tc in db.TasksClassification on t.Type equals tc.TaskType
                      where tc.TaskClassType == type
                      select t;
            return res;
        }

        public static List<string> GetTasksDescrByClassification(int type)
        {
            var db = new SandBoxDataContext();
            var res = new List<string>();
            //var preres = from t in GetTasksByClassification(type)
            //       join tt in db.TaskTypes on t.Type equals tt.Type
            //       select tt.Description;
            var tc = from tcs in db.TasksClassification
                     where tcs.TaskClassType == type
                     select tcs;
            foreach (var tt in tc)
            {
                res.Add(GetTaskTypeDescription(tt.TaskType));
            }
            return res;
        }

        public static string GetTaskTypeDescription(int type)
        {
            var db = new SandBoxDataContext();
            var res = db.TaskTypes.FirstOrDefault<TaskType>(x => x.Type == type).Description;
            return res;
        }

        public static int GetClassTypeByTaskType(int taskType)
        {
            var db = new SandBoxDataContext();
            return db.TasksClassification.FirstOrDefault<TasksClassification>(x => x.TaskType == taskType).TaskClassType;
        }

        //**********************************************************
        //* Получение всех задач
        //**********************************************************
        public static IQueryable<Task> GetTasks()
        {
            var db = new SandBoxDataContext();

            var tasks = from t in db.Tasks
                      orderby t.Id
                      select t;
            return tasks;
        }

        //**********************************************************
        //* Получение всех задач исследования
        //**********************************************************
        public static IQueryable<Task> GetTasks(Int32 researchId)
        {
            var db = new SandBoxDataContext();

            var tasks = from t in db.Tasks
                        orderby t.Id
                        where t.ResearchId == researchId
                        select t;
            return tasks;
        }

        //**********************************************************
        //* Удалени всех задач
        //**********************************************************
        public static void DeleteTasks()
        {
            var db = new SandBoxDataContext();

            var tasks = from t in db.Tasks
                        orderby t.Id
                        select t;
            db.Tasks.DeleteAllOnSubmit(tasks);
            db.SubmitChanges();
        }

        //**********************************************************
        //* Удалени всех задач исследования
        //**********************************************************
        public static void DeleteTasks(Int32 researchId)
        {
            var db = new SandBoxDataContext();

            var tasks = from t in db.Tasks
                        orderby t.Id
                        where t.ResearchId == researchId
                        select t;
            db.Tasks.DeleteAllOnSubmit(tasks);
            db.SubmitChanges();
        }

        //**********************************************************
        //* Добавление новой задачи
        //**********************************************************
        public static void AddTask(Int32 researchId, Int32 taskType, String value)
        {
            using (SandBoxDataContext db = new SandBoxDataContext())
            {
                Task task = new Task {ResearchId = researchId, Type = taskType, Value = value};
                db.Tasks.InsertOnSubmit(task);
                db.SubmitChanges();
            }
        }
    }//end class TaskManager
}//end namespace
