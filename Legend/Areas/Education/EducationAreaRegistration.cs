using System.Web.Mvc;

namespace Legend.Areas.Education
{
    public class EducationAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Education";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Education_default",
                "Education/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "Legend.Areas.Education.Controllers" }
            );
        }
    }
}