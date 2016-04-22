using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Legend.Controllers;

namespace Legend.Areas.Education.Controllers
{
    public class StudentController : BaseController
    {
        // GET: Education/Student
        public ActionResult Index()
        {
            return View();
        }
    }
}