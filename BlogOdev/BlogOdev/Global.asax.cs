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
        protected void Application_Start() //Uygulama ilk �a�r�ld���nda ger�ekle�ecek olaylar� y�netmek i�in kullan�l�r.
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            Database.SetInitializer(new DataInitializer());
            Database.SetInitializer(new IdentityInitializer());
        }
    }
}
