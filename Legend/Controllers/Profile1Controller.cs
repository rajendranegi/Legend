using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class Profile1Controller : BaseController
    {
        // GET: Profile
        public ActionResult Index()
        {
            //PersonalDetail objPersonalDetail = new PersonalDetail();
            //AddressDetail objAddressDetail = new AddressDetail();
            //ContactDetail objContactDetail = new ContactDetail();

            //return View(new object[] { objPersonalDetail, objAddressDetail, objContactDetail });
            ProfileModel objProfileModel = new ProfileModel();
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objProfileModel.personalDetail.salutationList = objSalutation.GetSalutationList().OrderBy(o => o.Salutation).ToList();
            }

            using (CityModel objCity = new CityModel())
            {
                objProfileModel.addressDetail.cityList = objCity.GetCityList().OrderBy(o => o.CityName).ToList();
            }

            using (StateModel objState = new StateModel())
            {
                objProfileModel.addressDetail.stateList = objState.GetStateList().OrderBy(s => s.StateName).ToList();
            }
           
            using (CountryModel objCountry = new CountryModel())
            {
                objProfileModel.addressDetail.countryList = objCountry.GetCountryList().OrderBy(o => o.Country).ToList();
            }

            return View(objProfileModel);
        }

        [HttpPost]
        public ActionResult Index(ProfileModel objProfileModel)
        {

            return View();
        }

        //public PartialViewResult Personal()
        //{
        //    //ProfileModel.PersonalDetail objPersonal = new ProfileModel.PersonalDetail();
        //    //return PartialView("~/Views/Profile/_DetailPersonal.cshtml",objPersonal);
        //}
        //[HttpPost ]
        //public PartialViewResult Personal(ProfileModel.PersonalDetail objPersonalDetail)
        //{
        //    clsDetailPersonal objPersonal = new clsDetailPersonal();
        //    //objPersonal.AddEditPersonal(objPersonalDetail, clsCommon.Update);
        //    //ProfileModel.PersonalDetail objPersonal = new ProfileModel.PersonalDetail();
        //    return PartialView("~/Views/Profile/_DetailPersonal.cshtml", objPersonalDetail);
        //}


        //public PartialViewResult Address()
        //{
        //    ProfileModel.AddressDetail objAddress = new ProfileModel.AddressDetail();
        //    return PartialView("~/Views/Profile/_DetailAddress.cshtml", objAddress);
        //}

        //public PartialViewResult Contact()
        //{
        //    ProfileModel.ContactDetail objContact = new ProfileModel.ContactDetail();
        //    return PartialView("~/Views/Profile/_DetailContact.cshtml", objContact);
        //}
    }
}