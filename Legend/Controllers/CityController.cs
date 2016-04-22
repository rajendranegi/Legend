using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class CityController : BaseController
    {
        // GET: City
        public ActionResult Index()
        {
            CityModel objCityModel = new CityModel();
            objCityModel.cityList = objCityModel.GetCityList().OrderBy(x => x.StateName).ToList();
            return View(objCityModel);
        }

        #region Search
        [HttpPost]
        public ActionResult Search(CityModel objCityModel)
        {
            objCityModel.cityList = objCityModel.GetCityList(Convert.ToString(objCityModel.CityName)).OrderBy(x => x.StateName).ToList();
            return View("~/Views/City/Index.cshtml", objCityModel);           
        }
        #endregion

        #region Add

        [HttpGet]
        [ActionName("Create")]
        public ActionResult Create_Get()
        {
            CityModel objCityModel = new CityModel();

            CountryModel objCountryModel = new CountryModel();
            objCityModel.countryList = objCountryModel.GetCountryList().ToList();

            StateModel objStateModel = new StateModel();
            objCityModel.stateList = objStateModel.GetStateList().ToList();

            return View(objCityModel);
        }

        [HttpPost]
        [ActionName("Create")]
        public ActionResult Create_Post()
        {
            CityModel objCityModel = new CityModel();
            if (ModelState.IsValid)
            {
                TryUpdateModel<CityModel>(objCityModel);
                objCityModel.AddEditCity(objCityModel, clsCommon.Insert);
                return RedirectToAction("Index");
            }
            else
            {
                
                CountryModel objCountry = new CountryModel();
                objCityModel.countryList = objCountry.GetCountryList().ToList();

                StateModel objStateModel = new StateModel();
                objCityModel.stateList = objStateModel.GetStateList().ToList();

                return View(objCityModel);
            }
        }

        #endregion

        #region Edit
        [HttpGet]
        public ActionResult Edit(int? Id)
        {
            CityModel objCityModel = new CityModel();

            objCityModel = objCityModel.GetCityList().Single(m => m.CityID == Id);

            StateModel objStateModel = new StateModel();
            objCityModel.stateList = objStateModel.GetStateList().ToList();

            CountryModel objCountry = new CountryModel();
            objCityModel.countryList = objCountry.GetCountryList().ToList();
        
            
            return View(objCityModel);
        }


        [HttpPost]
        public ActionResult Edit(FormCollection formCollection)
        {
            CityModel objCityModel = new CityModel();
            objCityModel.CityID = Convert.ToInt32(formCollection["CityID"]);
            objCityModel.CityName = formCollection["CityName"];
            objCityModel.RefStateID = Convert.ToInt32(formCollection["RefStateID"]);
            objCityModel.RefCountryID = Convert.ToInt32(formCollection["RefCountryID"]);
            objCityModel.AddEditCity(objCityModel,clsCommon.Update);

            
            return RedirectToAction("Index", "City");
        }
        #endregion
        
        #region Delete
        [HttpPost]
        public ActionResult Delete(int Id)
        {
            CityModel objCityModel = new CityModel();
            objCityModel.DeleteCity(Id);
            return RedirectToAction("Index");
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