using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class Sal_Dept_DesigController : BaseController
    {
        private void BingModelData(Sal_Dept_DesigModel objAdminModel)
        {
            using (SalutationModel objSalutationModel = new SalutationModel())
            {
                objAdminModel.salutationList = objSalutationModel.GetSalutationList().OrderBy(cc => cc.Salutation).ToList();
            }

            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                objAdminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(cc => cc.Department).ToList();
            }

            using (DesignationModel objDesignation = new DesignationModel())
            {
                objAdminModel.designationList = objDesignation.GetDesignationList().OrderBy(cc => cc.Designation).ToList();
            }
        }

        // GET: Sal_Dept_Desig
        public ActionResult Index()
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            BingModelData(objAdminModel);
            return View(objAdminModel);
        }
        #region Salutation
        #region Update/Add/Search Salutation Get/Post Request
        [HttpGet]
        public ActionResult Salutation(Sal_Dept_DesigModel objSal_Dept_Desig)
        {
            BingModelData(objSal_Dept_Desig);
            //return View("~/Views/sal_Dept_Desig/Test.cshtml");
            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        [HttpPost]
        public ActionResult Salutation(Sal_Dept_DesigModel objSal_Dept_Desig, string submit)
        {
            if (!String.IsNullOrEmpty(submit.Trim()))
            {
                SalutationModel objSalutationModel = new SalutationModel();
                objSalutationModel.Salutation = objSal_Dept_Desig.Salutation;
                objSalutationModel.SalutationID = objSal_Dept_Desig.SalutationID;
                switch (submit.Trim())
                {
                    case "Update":
                        objSalutationModel.AddEditSalutation(objSalutationModel, clsCommon.Update);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Add":
                        objSalutationModel.AddEditSalutation(objSalutationModel, clsCommon.Insert);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Search":
                        BingModelData(objSal_Dept_Desig);
                        if (objSal_Dept_Desig.Salutation != null || !String.IsNullOrEmpty(objSal_Dept_Desig.Salutation))
                            objSal_Dept_Desig.salutationList = objSalutationModel.GetSalutationList(objSal_Dept_Desig.Salutation).ToList();
                        else
                            objSal_Dept_Desig.SalutationID = 0;
                        break;
                }
            }



            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        #endregion

        #region Edit Salutation Get/Post Request
        [HttpGet]
        public ActionResult EditSalutation(string Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objAdminModel.salutationList = objSalutation.GetSalutationList().OrderBy(cc => cc.Salutation).ToList();
            }

            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                objAdminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(cc => cc.Department).ToList();
            }

            using (DesignationModel objDesignation = new DesignationModel())
            {
                objAdminModel.designationList = objDesignation.GetDesignationList().OrderBy(cc => cc.Designation).ToList();
            }
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }
        [HttpPost]
        public ActionResult EditSalutation(int? Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            using (SalutationModel objSalutation = new SalutationModel())
            {
                objAdminModel.salutationList = objSalutation.GetSalutationList().OrderBy(cc => cc.Salutation).ToList();
                objAdminModel.SalutationID = objAdminModel.salutationList.Where(m => m.SalutationID == Id).SingleOrDefault().SalutationID;
                objAdminModel.Salutation = objAdminModel.salutationList.Where(m => m.SalutationID == Id).SingleOrDefault().Salutation;
            }

            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                objAdminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(cc => cc.Department).ToList();
            }

            using (DesignationModel objDesignation = new DesignationModel())
            {
                objAdminModel.designationList = objDesignation.GetDesignationList().OrderBy(cc => cc.Designation).ToList();
            }
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }

        #endregion

        #region Delete
        [HttpPost]
        public ActionResult DeleteSalutation(int? Id)
        {
            if (Id != null)
            {
                SalutationModel objSalutation = new SalutationModel();
                objSalutation.DeleteSalutation(Convert.ToInt32(Id));
            }
            Sal_Dept_DesigModel objSal_Dept_Desig = new Sal_Dept_DesigModel();
            BingModelData(objSal_Dept_Desig);

            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }
        #endregion
        #endregion

        #region Designation
        #region Update/Add/Search Designation Get/Post Request
        [HttpGet]
        public ActionResult Designation(Sal_Dept_DesigModel objSal_Dept_Desig)
        {
            BingModelData(objSal_Dept_Desig);

            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        [HttpPost]
        public ActionResult Designation(Sal_Dept_DesigModel objSal_Dept_Desig, string submit)
        {
            if (!String.IsNullOrEmpty(submit.Trim()))
            {
                DesignationModel objDesignationModel = new DesignationModel();
                objDesignationModel.Designation = objSal_Dept_Desig.Designation;
                objDesignationModel.DesignationID = objSal_Dept_Desig.DesignationID;
                switch (submit.Trim())
                {
                    case "Update":
                        objDesignationModel.AddEditDesignation(objDesignationModel, clsCommon.Update);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Add":
                        objDesignationModel.AddEditDesignation(objDesignationModel, clsCommon.Insert);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Search":
                        BingModelData(objSal_Dept_Desig);
                        if (objSal_Dept_Desig.Designation != null || !String.IsNullOrEmpty(objSal_Dept_Desig.Designation))
                            objSal_Dept_Desig.designationList = objDesignationModel.GetDesignationList(objSal_Dept_Desig.Designation).ToList();
                        else
                            objSal_Dept_Desig.DesignationID = 0;
                        break;
                }
            }
            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        #endregion

        #region Edit Designation Get/Post Request
        [HttpGet]
        public ActionResult EditDesignation(string Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            BingModelData(objAdminModel);
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }
        [HttpPost]
        public ActionResult EditDesignation(int? Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            using (DesignationModel objDesignation = new DesignationModel())
            {
                objAdminModel.designationList = objDesignation.GetDesignationList().OrderBy(cc => cc.Designation).ToList();
                objAdminModel.DesignationID = objAdminModel.designationList.Where(m => m.DesignationID == Id).SingleOrDefault().DesignationID;
                objAdminModel.Designation = objAdminModel.designationList.Where(m => m.DesignationID == Id).SingleOrDefault().Designation;
            }

            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                objAdminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(cc => cc.Department).ToList();
            }

            using (SalutationModel objSalutation = new SalutationModel())
            {
                objAdminModel.salutationList = objSalutation.GetSalutationList().OrderBy(cc => cc.Salutation).ToList();
            }
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }

        #endregion

        #region Delete Designation
        [HttpPost]
        public ActionResult DeleteDesignation(int? Id)
        {
            if (Id != null)
            {
                DesignationModel objDesignation = new DesignationModel();
                objDesignation.DeleteDesignation(Convert.ToInt32(Id));
            }
            Sal_Dept_DesigModel objSal_Dept_Desig = new Sal_Dept_DesigModel();
            BingModelData(objSal_Dept_Desig);

            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }
        #endregion
        #endregion

        #region Department
        #region Update/Add/Search Department Get/Post Request
        [HttpGet]
        public ActionResult Department(Sal_Dept_DesigModel objSal_Dept_Desig)
        {
            BingModelData(objSal_Dept_Desig);

            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        [HttpPost]
        public ActionResult Department(Sal_Dept_DesigModel objSal_Dept_Desig, string submit)
        {
            if (!String.IsNullOrEmpty(submit.Trim()))
            {
                DepartmentModel objDepartmentModel = new DepartmentModel();
                objDepartmentModel.Department = objSal_Dept_Desig.Department;
                objDepartmentModel.DepartmentID = objSal_Dept_Desig.DepartmentID;
                switch (submit.Trim())
                {
                    case "Update":
                        objDepartmentModel.AddEditDepartment(objDepartmentModel, clsCommon.Update);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Add":
                        objDepartmentModel.AddEditDepartment(objDepartmentModel, clsCommon.Insert);
                        BingModelData(objSal_Dept_Desig);
                        break;
                    case "Search":
                        BingModelData(objSal_Dept_Desig);
                        if (objSal_Dept_Desig.Department != null || !String.IsNullOrEmpty(objSal_Dept_Desig.Department))
                            objSal_Dept_Desig.departmentList = objDepartmentModel.GetDepartmentList(objSal_Dept_Desig.Department).ToList();
                        else
                            objSal_Dept_Desig.DepartmentID = 0;
                        break;
                }
            }
            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }

        #endregion

        #region Edit Department Get/Post Request
        [HttpGet]
        public ActionResult EditDepartment(string Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            BingModelData(objAdminModel);
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }
        [HttpPost]
        public ActionResult EditDepartment(int? Id)
        {
            Sal_Dept_DesigModel objAdminModel = new Sal_Dept_DesigModel();
            using (DepartmentModel objDepartment = new DepartmentModel())
            {
                objAdminModel.departmentList = objDepartment.GetDepartmentList().OrderBy(cc => cc.Department).ToList();
                objAdminModel.DepartmentID = objAdminModel.departmentList.Where(m => m.DepartmentID == Id).SingleOrDefault().DepartmentID;
                objAdminModel.Department = objAdminModel.departmentList.Where(m => m.DepartmentID == Id).SingleOrDefault().Department;
            }

            using (DesignationModel objDesignation = new DesignationModel())
            {
                objAdminModel.designationList = objDesignation.GetDesignationList().OrderBy(cc => cc.Designation).ToList();
            }

            using (SalutationModel objSalutation = new SalutationModel())
            {
                objAdminModel.salutationList = objSalutation.GetSalutationList().OrderBy(cc => cc.Salutation).ToList();
            }
            return View("~/Views/Sal_Dept_Desig/Index.cshtml", objAdminModel);
        }

        #endregion

        #region Delete Department
        [HttpPost]
        public ActionResult DeleteDepartment(int? Id)
        {
            if (Id != null)
            {
                DepartmentModel objDepartment = new DepartmentModel();
                objDepartment.DeleteDepartment(Convert.ToInt32(Id));
            }
            Sal_Dept_DesigModel objSal_Dept_Desig = new Sal_Dept_DesigModel();
            BingModelData(objSal_Dept_Desig);

            return View("~/Views/sal_Dept_Desig/Index.cshtml", objSal_Dept_Desig);
        }
        #endregion
        #endregion
    }
}