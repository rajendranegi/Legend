using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Legend.Controllers
{
    public class ErrorController : Controller
    {
        // GET: Error
        public ActionResult Error401()
        {
            ViewBag.StatusCode = "Un-Authorized user";
            return View();
        }
        public ActionResult Error404()
        {
            ViewBag.StatusCode = "Unable to handle your request";
            return View();
        }
    }
}