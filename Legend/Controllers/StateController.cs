using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class StateController : BaseController
    {
        public ActionResult Index()
        {
            StateModel objStateModel = new StateModel();
            objStateModel.stateList = objStateModel.GetStateList().OrderBy(x => x.StateName).ToList();
            return View(objStateModel);
        }

        #region Search
        [HttpPost]
        public ActionResult Search(StateModel objStateModel)
        {
            //clsState objState = new clsState();
            objStateModel.stateList = objStateModel.GetStateList(Convert.ToString(objStateModel.StateName));//objState.StateListSearchLimit(Convert.ToString(objStateModel.StateName)).OrderBy(x => x.StateName).ToList();
            return View("~/Views/State/Index.cshtml", objStateModel);
        }
        #endregion

        #region Add

        [HttpGet]
        public ActionResult Create()
        {
            StateModel objStateModel = new StateModel();
            CountryModel objCountry = new CountryModel();
            
            objStateModel.countryList = objCountry.GetCountryList().ToList();

            objStateModel.stateList = objStateModel.GetStateList().ToList();

            return View(objStateModel);
        }

        [HttpPost]
        public ActionResult Create(StateModel objStateModel)
        {
            if (ModelState.IsValid)
            {
                //clsState objState = new clsState();
                TryUpdateModel<StateModel>(objStateModel);
                objStateModel.AddEditState(objStateModel, clsCommon.Insert);
                return RedirectToAction("Index");
            }
            else
            {
                CountryModel objCountry = new CountryModel();
                objStateModel.countryList = objCountry.GetCountryList().ToList();

                objStateModel.stateList = objStateModel.GetStateList().ToList();
                
                return View(objStateModel);
            }
        }

        #endregion

        #region Edit
        [HttpGet]
        public ActionResult Edit(int? Id)
        {
            StateModel objStateModel = new StateModel();            
            objStateModel = objStateModel.GetStateList().Single(m => m.StateID == Id);

            CountryModel objCountry = new CountryModel();
            objStateModel.countryList = objCountry.GetCountryList().ToList();
            
            return View(objStateModel);
        }


        [HttpPost]
        public ActionResult Edit(FormCollection formCollection)
        {
            //clsState objState = new clsState();
            StateModel objStateModel = new StateModel();
            objStateModel.StateID = Convert.ToInt32(formCollection["StateID"]);
            objStateModel.StateName = formCollection["StateName"];
            objStateModel.RefCountryID = Convert.ToInt32(formCollection["RefCountryID"]);
            objStateModel.AddEditState(objStateModel, clsCommon.Update);


            return RedirectToAction("Index", "State");
        }
        #endregion



        #region Delete
        [HttpPost]
        public ActionResult Delete(int Id)
        {
            StateModel objStateModel = new StateModel();
            objStateModel.DeleteState(Id);
            return RedirectToAction("Index");
        }

        #endregion

    }
}