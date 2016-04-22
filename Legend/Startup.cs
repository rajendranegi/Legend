using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Legend.Startup))]
namespace Legend
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
