using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogOdev.Models
{
    public class Category
    {
        public int Id { get; set; }
        public string KategoriAd { get; set; }
        public List<BlogPosts> BlogPosts { get; set; }

    }
}