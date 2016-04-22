using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;
using System.Web.Security;


namespace Legend.Controllers
{
    public class LoginController : BaseController
    {
        // GET: Login
        [HttpGet]
        public ActionResult Index()
        {
            LoginModel objLoginModel = new LoginModel();
            return View(objLoginModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(LoginModel objLoginModel)
        {
            if (!ModelState.IsValid)
            {
                return View(objLoginModel);
            }
            string Index, Controller;
            objLoginModel.CheckUserAccessLevel(out Index, out Controller);
            if (Index == GetMessage.ErrorMessage)
            {
                ModelState.AddModelError(Index, Controller);
                return View();
            }
            else
                return RedirectToAction(Index, Controller);
        }

        [HttpGet]
        public ActionResult Registration()
        {
            RegistrationModel objRegistrationModel = new RegistrationModel();
            objRegistrationModel.GetAllDropDownRegistration(objRegistrationModel);
            return View(objRegistrationModel);
        }

        [HttpPost]
        public ActionResult Registration(RegistrationModel objRegistrationModel)
        {
            if (!ModelState.IsValid)
            {
                if (objRegistrationModel != null)
                    objRegistrationModel.GetAllDropDownRegistration(objRegistrationModel);
                else
                    return RedirectToAction("Registration", "Login");

                return View(objRegistrationModel);
            }
            if (objRegistrationModel != null)
            {
                objRegistrationModel.AddEditRegistration(objRegistrationModel);
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        public JsonResult GetSelectedState4Country(int? Id)
        {
            var state = GetState4Country(Id).Select(s => new { Value = s.StateID, Text = s.StateName });
            return Json(state);
        }

        [HttpPost]
        public JsonResult GetSelectedCity4State(int Id)
        {
            var city = GetCity4State(Id).Select(c => new { Value = c.CityID, Text = c.CityName });
            return Json(city);
        }

        public ActionResult CheckUserNameAvailability(string UserName)
        {
            bool ifEmailExist = false;
            try
            {
                LoginModel objLogin = new LoginModel();
                ifEmailExist = objLogin.CheckUserNameAvailability(UserName);
                return Json(ifEmailExist, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
    }
}