using Microsoft.Owin;
using Owin;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(BlogOdev.App_Start.Startup1))]

namespace BlogOdev.App_Start
{
    public class Startup1 //Owin: Open web interface for .Net/ .Net uygulaması ile .Net sınucusunu birbirinden ayırmak için oluşturulmuş yapıları barındıran bir interfacedir.

    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=316888
            app.UseCookieAuthentication(new Microsoft.Owin.Security.Cookies.CookieAuthenticationOptions()
            {
                AuthenticationType="ApplicationCookie", //Hangi tip cookie ile işlem yapacağımızı belirtiyoruz.
                LoginPath=new PathString("/Account/Login") //Kullanıcı, yetkisi olmayan bir alana erişmek istediğinde giriş yapması için yönlendirilmesini istediğimiz default Login sayfası.
            });
        }
    }
}
