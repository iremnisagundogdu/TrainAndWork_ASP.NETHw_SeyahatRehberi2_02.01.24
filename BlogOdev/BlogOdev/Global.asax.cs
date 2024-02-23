using BlogOdev.Identity;
using BlogOdev.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BlogOdev
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start() //Uygulama ilk çaðrýldýðýnda gerçekleþecek olaylarý yönetmek için kullanýlýr.
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            Database.SetInitializer(new DataInitializer());
            Database.SetInitializer(new IdentityInitializer());
        }
    }
}
