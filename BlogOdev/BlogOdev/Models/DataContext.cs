using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace BlogOdev.Models
{
    public class DataContext:DbContext
    {
        public DataContext():base("dataConnection")
        {
            Database.SetInitializer(new DataInitializer()); 
        }
        public DbSet<BlogPosts> BlogPosts { get; set; }
        public DbSet<Category> Category { get; set; }
        public DbSet<Comment> Comment { get; set; }

        public System.Data.Entity.DbSet<BlogOdev.Models.BlogModel> BlogModels { get; set; }
    }
}