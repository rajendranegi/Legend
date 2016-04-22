using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class ProfileManageController : Controller
    {
        // GET: ProfileManage
        public ActionResult Index()
        {
            PersonalDetail objPersonalDetail = new PersonalDetail();
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
            }
            return View(objPersonalDetail);
        }
        [HttpPost]
        public PartialViewResult Personal()
        {
            PersonalDetail objPersonalDetail = new PersonalDetail();
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
            }
            return PartialView("~/Views/ProfileManage/_DetailPersonal.cshtml", objPersonalDetail);
        }

        [HttpPost]
        public PartialViewResult Address()
        {
            AddressDetail objAddressDetail = new AddressDetail();
            
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

            return PartialView("~/Views/ProfileManage/_DetailAddress.cshtml", objAddressDetail);
        }

        [HttpPost]
        public PartialViewResult AjaxPost(string postType,string Command,string SaveAddress, PersonalDetail objPersonalDetail, AddressDetail objAddressDetail)
        {
            switch (postType)
            {
                case "Address":
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

                    return PartialView("~/Views/ProfileManage/_DetailAddress.cshtml", objAddressDetail);
                default://Personal
                    using (SalutationModel objSalutation = new SalutationModel())
                    {
                        objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
                    }
                    return PartialView("~/Views/ProfileManage/_DetailPersonal.cshtml", objPersonalDetail);
                    //return RedirectToAction("Index", "ProfileManage");
            }
        }

        [HttpGet]
        public PartialViewResult AjaxPost(string postType, PersonalDetail objPersonalDetail, AddressDetail objAddressDetail, ContactDetail objContactDetail)
        {
            switch (postType)
            {
                case "Personal":
                    using (SalutationModel objSalutation = new SalutationModel())
                    {
                        objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
                    }
                    return PartialView("~/Views/ProfileManage/_DetailPersonal.cshtml", objPersonalDetail);
                case "Address":
                    
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

                    return PartialView("~/Views/ProfileManage/_DetailAddress.cshtml", objAddressDetail);
                default:
                    using (SalutationModel objSalutation = new SalutationModel())
                    {
                        objPersonalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
                    }
                    return PartialView("~/Views/ProfileManage/_DetailPersonal.cshtml", objPersonalDetail);
            }
        }



    }
}