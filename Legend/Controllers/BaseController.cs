using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Filters;
using LegendBLL;
using System.Web.Security;

namespace Legend.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        protected override void OnAuthentication(AuthenticationContext filterContext)
        {
            string controllerName = filterContext.Controller.ControllerContext.RouteData.Values["controller"].ToString();
            string actionName = filterContext.Controller.ControllerContext.RouteData.Values["action"].ToString();
            base.OnAuthentication(filterContext);
            if (controllerName != "Login")
            {
                HttpCookie authCookie = Request.Cookies[FormsAuthentication.FormsCookieName];

                if (authCookie != null && LoggedUserSessionData != null)
                {
                    FormsAuthenticationTicket authTicket = FormsAuthentication.Decrypt(authCookie.Value);
                    //if (LoggedUserSessionData != null)
                    //{
                    if (LoggedUserSessionData.ProfileGUID != authTicket.UserData)
                    {
                        Session.Abandon();
                        FormsAuthentication.SignOut();
                        filterContext.Result = new RedirectResult("~/Login");
                        //filterContext.Result = new HttpStatusCodeResult(401, "Only Authenticate User is allow to access the portal");
                    }
                    //}
                }
                else {
                    Session.Abandon();
                    FormsAuthentication.SignOut();
                    filterContext.Result = new RedirectResult("~/Login");
                }
            }

            //else {
            //    filterContext.Result = new HttpStatusCodeResult(401, "Only Authenticate User is allow to access the portal");
            //}
        }

        protected override void OnAuthorization(AuthorizationContext filterContext)
        {
            string controllerName = filterContext.Controller.ControllerContext.RouteData.Values["controller"].ToString();
            string actionName = filterContext.Controller.ControllerContext.RouteData.Values["action"].ToString();

            if (controllerName != "Login")
            {
                base.OnAuthorization(filterContext);
                HttpCookie authCookie = Request.Cookies[FormsAuthentication.FormsCookieName];

                if (authCookie != null && LoggedUserSessionData != null)
                {
                    // check for current role for logged user session data
                    string strController = ""; // "Admin;City;Country;Error;Home;Profile;State;";
                    //String[] strControllerName = strController.Split(';');
                    string redirctPage = "";
                    switch ((clsCommon._AccessLevel)LoggedUserSessionData.AccessID)
                    {
                        case clsCommon._AccessLevel._SuperAdmin :
                            strController = "Admin;City;Country;Error;Home;State;Sal_Dept_Desig;RoleManager;";
                            break;
                        case clsCommon._AccessLevel._User:
                            strController = "Error;Profile;RoleManager;";
                           break;
                        default:
                            break;
                    }
                    //String[] strControllerName = strController.Split(';');
                    redirctPage = strController.Contains(controllerName) ? "" : "UnAuthorizeError";
                    if (redirctPage != "") filterContext.Result = new RedirectResult("~/Error/Error401");
                    //new RedirectToRouteResult(
                    //new System.Web.Routing.RouteValueDictionary(new { Controller = "Error", Action = "Index", RouteData = "Error401" }));
                }
                else {
                    Session.Abandon();
                    FormsAuthentication.SignOut();
                    filterContext.Result = new RedirectResult("~/Login");
                }
            }
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
        }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
        }

        protected override void HandleUnknownAction(string actionName)
        {
            //base.HandleUnknownAction(actionName);
            RedirectToAction("Error404", "Error");
        }

        private UserSessionModel _LoggedUser;
        #region common method
        protected UserSessionModel LoggedUserSessionData
        {
            get
            {
                try
                {
                    if (Session != null && _LoggedUser == null)
                    {
                        _LoggedUser = (UserSessionModel)Session[UserSessionModel.userSessionName];
                    }
                    return _LoggedUser;
                }
                catch (Exception)
                {
                    return null;
                }

            }
        }
        
        protected static List<StateModel> GetState4Country(int? Id)
        {
            StateModel objStateModel = new StateModel();
            if (Id != null && Id is int)
            {
                return objStateModel.GetStateList(Convert.ToInt16(Id));
            }
            return objStateModel.stateList;

            //clsState objState = new clsState();
            //List<StateModel> stateList = objState.StateList.AsEnumerable().Where(c => c.RefCountryID == Id).ToList();
            //return stateList;
            //var state = stateList.Select(s => new { Value = s._StateID, Text = s._State });
            //return state;
        }
        
        protected static List<CityModel> GetCity4State(int? Id)
        {
            CityModel objCityModel = new CityModel();
            if (Id != null && Id is int)
            {
                return objCityModel.GetCityList(Convert.ToInt32(Id)).AsEnumerable().Where(s => s.RefStateID == Id).ToList();
            }
            return objCityModel.cityList;
        }


        #endregion
    }
}