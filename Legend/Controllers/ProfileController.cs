using LegendBLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Legend.Controllers
{
    public class ProfileController : BaseController
    {
        // GET: ProfileManager
        public ActionResult Personal()
        {
            PersonalDetail objPersonalDetail = new PersonalDetail();
            GetDropDownPersonal(objPersonalDetail);
            GetUserDataPersonal(objPersonalDetail);
            return View(objPersonalDetail);
        }

        [HttpPost]
        public ActionResult Personal(PersonalDetail objPersonalDetail)
        {
            GetDropDownPersonal(objPersonalDetail);
            if (!ModelState.IsValid)
            {
                return View(objPersonalDetail);
            }
            objPersonalDetail.AddEditPersonal(objPersonalDetail, clsCommon.Update);
            return View(objPersonalDetail);
        }

        [HttpGet]
        public ActionResult Address()
        {
            AddressDetail objAddressDetail = new AddressDetail();
            GetDropDownAddress(objAddressDetail);
            GetUserDataAddress(objAddressDetail);
            return View("~/Views/Profile/Address.cshtml", objAddressDetail);
        }

        [HttpPost]
        public ActionResult Address(AddressDetail objAddressDetail)
        {
            GetDropDownAddress(objAddressDetail);
            if (!ModelState.IsValid)
            {
                return View(objAddressDetail);
            }
            objAddressDetail.AddEditAddress(objAddressDetail, clsCommon.Update);
            return View(objAddressDetail);
        }

        [HttpGet]
        public ActionResult Contact()
        {
            ContactDetail objContactDetail = new ContactDetail();
            GetUserDataContact(objContactDetail);
            return View("~/Views/Profile/Contact.cshtml", objContactDetail);
        }

        [HttpPost]
        public ActionResult Contact(ContactDetail objContactDetail)
        {
            if (!ModelState.IsValid)
            {
                return View(objContactDetail);
            }
            objContactDetail.AddEditContact(objContactDetail, clsCommon.Update);
            return View(objContactDetail);
        }

        [HttpGet]
        public ActionResult Education()
        {
            EducationDetail objEducationDetail = new EducationDetail();
            GetUserEducationDetail(objEducationDetail);
            return View("~/Views/Profile/Education.cshtml", objEducationDetail);
        }

        [HttpPost]
        public ActionResult Education(EducationDetail objEducationDetail)
        {
            if (!ModelState.IsValid)
            {
                return View(objEducationDetail);
            }
            objEducationDetail.AddEditEducation(objEducationDetail, clsCommon.Update);

            GetUserEducationDetail(objEducationDetail);
            return View("~/Views/Profile/Education.cshtml", objEducationDetail);
        }

        [HttpGet]
        [ActionName("EditEducation")]
        public ActionResult EditEducation_Get(string EditEducationID)
        {
            EducationDetail objEducationDetail = new EducationDetail();
            objEducationDetail.EduID = EditEducationID;
            GetUserEducationDetail(objEducationDetail);
            GetSelectedUserEducationDetail(objEducationDetail);
            return View("~/Views/Profile/Education.cshtml", objEducationDetail);
        }

        [HttpPost]
        [ActionName("EditEducation")]
        public ActionResult EditEducation_Post(EducationDetail objEducationDetail)
        {
            if (!ModelState.IsValid)
            {
                return View(objEducationDetail);
            }
            objEducationDetail.AddEditEducation(objEducationDetail, clsCommon.Update);
            return RedirectToAction("Education", "Profile");
        }

        #region for Private method
        private void GetDropDownPersonal(PersonalDetail objPersonalDetail)
        {
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
            }
        }

        private void GetUserDataPersonal(PersonalDetail objPersonalDetail)
        {
            objPersonalDetail.GetUserPersonalDetail(objPersonalDetail, clsCommon.SelectLimit);
        }

        private void GetDropDownAddress(AddressDetail objAddressDetail)
        {
            using (CityModel objCity = new CityModel())
            {
                objAddressDetail.cityList = objCity.GetCityList().OrderBy(o => o.CityName).ToList();
            }

            using (StateModel objState = new StateModel())
            {
                objAddressDetail.stateList = objState.GetStateList().OrderBy(s => s.StateName).ToList();
            }

            using (CountryModel objCountry = new CountryModel())
            {
                objAddressDetail.countryList = objCountry.GetCountryList().OrderBy(o => o.Country).ToList();
            }
        }

        private void GetUserDataAddress(AddressDetail objAddressDetail)
        {
            objAddressDetail.GetUserAddressDetail(objAddressDetail, clsCommon.SelectLimit);
        }

        private void GetUserDataContact(ContactDetail objContactDetail)
        {
            objContactDetail.GetUserContactDetail(objContactDetail, clsCommon.SelectLimit);
        }

        private void GetUserEducationDetail(EducationDetail objEducationDetail)
        {
            objEducationDetail.GetUserEducationDetail(objEducationDetail, clsCommon.Select);
        }

        private void GetSelectedUserEducationDetail(EducationDetail objEducationDetail)
        {
            objEducationDetail.GetUserEducationDetail(objEducationDetail, clsCommon.SelectLimit);
        }
        #endregion

        #region
        [HttpPost]
        public JsonResult GetSelectedState4Country(int Id)
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

        #endregion
    }
}