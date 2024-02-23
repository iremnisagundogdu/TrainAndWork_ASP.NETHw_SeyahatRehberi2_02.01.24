using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace BlogOdev.Identity
{
    public class IdentityInitializer:CreateDatabaseIfNotExists<IdentityDataContext>
    {
        protected override void Seed(IdentityDataContext context)
        {
            if (!context.Roles.Any(i => i.Name=="admin"))
            {
                var store = new RoleStore<ApplicationRole>(context);
                var manager = new RoleManager<ApplicationRole>(store);
                var role = new ApplicationRole() { Name="admin", Description="admin rolü" };
                manager.Create(role);
            }

            if (!context.Roles.Any(i => i.Name=="user"))
            {
                var store = new RoleStore<ApplicationRole>(context);
                var manager = new RoleManager<ApplicationRole>(store);
                var role = new ApplicationRole() { Name ="user", Description ="user rolü" };
                manager.Create(role);
            }
            //Hem admin hem user : iremnisa
            if (!context.Users.Any(i => i.Name == "iremnisa"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser() 
                { Name = "irem", Surname = "nisa", UserName = "irem@nisa.com", Email = "irem@nisa.com" };
                manager.Create(user, "123456789");
                manager.AddToRole(user.Id, "admin");
                manager.AddToRole(user.Id, "user");
            }


            //User:esmasezen
            if (!context.Users.Any(i => i.Name == "esmasezen"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser() { Name = "esma", Surname = "sezen", UserName = "esmasezen", Email = "esma@sezen.com" };
                manager.Create(user, "123456789");
                manager.AddToRole(user.Id, "user");
            }

            if (!context.Users.Any(i => i.Name == "erhankaya"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser()
                { Name = "erhan", Surname = "kaya", UserName = "erhankaya", Email = "erhan@kaya.com" };
                manager.Create(user, "123456789a");
                manager.AddToRole(user.Id, "admin");
              
            }






            base.Seed(context);
         
        }
       
    }
}