using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LegendBLL;

namespace Legend.Controllers
{
    public class RoleManagerController : BaseController
    {
        // GET: RoleManager
        public ActionResult RoleManager()
        {
            RoleManagerModel objRolemanagerModel = new RoleManagerModel();
            objRolemanagerModel.roleManagerList = objRolemanagerModel.GetMultipleUserRole();
            return View(objRolemanagerModel);
        }

        [HttpPost]
        public ActionResult RoleManager(string AccID,string AccName)
        {
            RoleManagerModel objRoleManager = new RoleManagerModel();
            objRoleManager.AccessID = Convert.ToInt32(AccID);
            objRoleManager.AccessName = AccName;
            if (!ModelState.IsValid)
            {
                return View(objRoleManager);
            }
            else {
                objRoleManager.roleManagerList = objRoleManager.GetMultipleUserRole();
                foreach (RoleManagerModel objRoleManage in objRoleManager.roleManagerList)
                {
                    if (objRoleManage.AccessID == objRoleManager.AccessID && objRoleManage.AccessName == objRoleManager.AccessName)
                    {
                        objRoleManager.roleManagerList.Count();
                        LoggedUserSessionData.AccessID = objRoleManager.AccessID;
                        LoggedUserSessionData.AccessLevel = objRoleManager.AccessName;
                    }
                }
                //if (objRoleManager.roleManagerList.Contains(objRoleManager))
                //{ }
                    
                return RedirectToAction("RoleManager");
            }
            
        }
    }
}