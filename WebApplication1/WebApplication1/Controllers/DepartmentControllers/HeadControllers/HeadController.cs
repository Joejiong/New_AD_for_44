using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication1.Controllers.DepartmentControllers.EmployeeControllers
{
    public class HeadController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ViewAllRequistion()
        {
            return View();
        }
    }
}