﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;

namespace Legend
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            HttpCookie authCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie != null)
            {
                // Get the forms authentication ticket.
                FormsAuthenticationTicket authTicket = FormsAuthentication.Decrypt(authCookie.Value);                
                
                HttpContext.Current.User = new System.Security.Principal.GenericPrincipal
                    (new System.Security.Principal.GenericIdentity(authCookie.Name, "Forms"), authCookie.Name.Split(';'));
            }
        }

    }
}
