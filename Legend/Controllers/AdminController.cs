using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class AdminController : BaseController
    {
        // GET: Admin
        [AllowAnonymous]
        public ActionResult Index()
        {
            AdminModel adminModel = new AdminModel();
            //List<CityModel> objCityModel = new List<CityModel>();
            Random rnd = new Random();
            using (CityModel objCityModel = new CityModel())
            {
                adminModel.cityList = objCityModel.GetCityList().OrderBy(o => rnd.Next()).Take(10).OrderBy(s => s.CityName).ToList();
            }

            // = objCityModel.OrderBy(u => rnd.Next(objCityModel.Count)).Take(10).ToList().OrderBy(m=>m.CityName).ToList();
            #region commented code Usefull do not delete
            //adminModel.stateList = objCityModel.OrderBy(k => k.StateName)
            //    .GroupBy(item => item.RefStateID, (key, items) => new StateModel
            //    {
            //        StateID = items.First().RefStateID,
            //        StateName = items.First().StateName,
            //        CountryName = items.First().Country,
            //        RefCountryID = items.First().RefCountryID
            //    }).ToList();

            //adminModel.countryList = objCityModel.OrderBy(c => c.Country)
            //    .GroupBy(item => item.RefCountryID, (key, items) => new CountryModel
            //    {
            //        CountryID = items.First().RefCountryID,
            //        Country = items.First().Country
            //    }).ToList();
            #endregion

            using (StateModel objState = new StateModel())
            {
                adminModel.stateList = objState.GetStateList().OrderBy(o => rnd.Next()).Take(10).OrderBy(s => s.StateName).ToList();
            }

            using (CountryModel objCountry = new CountryModel())
            {
                adminModel.countryList  = objCountry.GetCountryList().OrderBy(o => rnd.Next()).Take(10).OrderBy(o => o.Country).ToList();
            }

            using (SalutationModel objSalutation = new SalutationModel())
            {
                adminModel.salutationList = objSalutation.GetSalutationList().OrderBy(o => rnd.Next()).Take(10).OrderBy(cc => cc.Salutation).ToList();
            }

            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                adminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(o => rnd.Next()).Take(10).OrderBy(cc => cc.Department).ToList();
            }

            using (DesignationModel objDesignation = new DesignationModel())
            {
                adminModel.designationList = objDesignation.GetDesignationList().OrderBy(o => rnd.Next()).Take(10).OrderBy(cc => cc.Designation).ToList();
            }

            return View(adminModel);
        }
    }
}