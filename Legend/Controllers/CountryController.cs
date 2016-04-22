using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class CountryController : BaseController
    {
        // GET: Country
        public ActionResult Index()
        {
            CountryModel objCountryModel = new CountryModel();
            objCountryModel.countryList = objCountryModel.GetCountryList().OrderBy(o => o.Country).ToList(); 
            return View(objCountryModel);
        }

        #region Search
        [HttpPost]
        public ActionResult Search(CountryModel objCountryModel)
        {
            objCountryModel.countryList = objCountryModel.GetCountryList(Convert.ToString(objCountryModel.Country)).OrderBy(x => x.Country).ToList();
            return View("~/Views/Country/Index.cshtml", objCountryModel);
        }
        #endregion

        #region Add

        [HttpGet]        
        public ActionResult Create()
        {
            CountryModel objCountryModel = new CountryModel();            
            return View(objCountryModel);
        }

        [HttpPost]        
        public ActionResult Create(CountryModel objCountryModel)
        {
            if (ModelState.IsValid)
            {
                objCountryModel.AddEditCountry(objCountryModel, clsCommon.Insert);
                return RedirectToAction("Index");
            }
            else
            {
                return View(objCountryModel);
            }
        }

        #endregion

        #region Edit
        [HttpGet]
        public ActionResult Edit(int? Id)
        {
            CountryModel objCountryModel = new CountryModel();
            objCountryModel = objCountryModel.GetCountryList().Single(m => m.CountryID == Id);
            return View(objCountryModel);
        }


        [HttpPost]
        public ActionResult Edit(FormCollection formCollection)
        {
            CountryModel objCountryModel = new CountryModel();
            objCountryModel.CountryID = Convert.ToInt32(formCollection["CountryID"]);
            objCountryModel.Country = formCollection["Country"];
            objCountryModel.AddEditCountry(objCountryModel, clsCommon.Update);
            return RedirectToAction("Index", "Country");
        }
        #endregion

        #region Delete
        [HttpPost]
        public ActionResult Delete(int Id)
        {
            CountryModel objCountryModel = new CountryModel();
            objCountryModel.DeleteCountry(Id);
            return RedirectToAction("Index");
        }
        #endregion
    }
}