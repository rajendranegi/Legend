using System.Web;
using System.Web.Optimization;

namespace Legend
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-1.10.2.min.js",
                        "~/Scripts/jquery-ui.min.js",
                        "~/Scripts/bootstrap.min.js",
                        "~/Scripts/moment.min.js",
                        "~/Scripts/bootstrap-datetimepicker.js",
                        "~/Scripts/respond.js",
                        "~/Scripts/jquery.validate.min.js",
                        "~/Scripts/jquery.validate.unobtrusive.min.js",
                        "~/Scripts/modernizr-2.6.2.js",
                        "~/Scripts/jquery.unobtrusive-ajax.min.js"
            ));

            //bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            //            "~/Scripts/jquery.validate*"));

            //// Use the development version of Modernizr to develop with and learn from. Then, when you're
            //// ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            //bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //            "~/Scripts/modernizr-*"));

            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js",
            //          "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/bundles/css").Include(
                     "~/Content/bootstrap.min.css",
                     "~/Content/bootstrap-theme.min.css",
                     "~/Content/font-awesome.css",
                     "~/Content/bootstrap-datetimepicker.css",
                      "~/Content/UID.css"));
        }
    }
}
