using BlogOdev.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BlogOdev.Controllers
{
    public class HomeController : Controller
    {
        DataContext db = new DataContext();
        // GET: Home
        public ActionResult Index()
        {
            var blogposts=db.BlogPosts.Where(i=>i.Onay==true).Select(i=>new BlogPosts()
            {
                Id= i.Id,
                Baslik=i.Baslik,
                KullaniciAd=i.KullaniciAd,
                Resim=i.Resim,
                YayinTarih=i.YayinTarih,
                Onay=i.Onay,
                Goruntulenme=i.Goruntulenme,
                Comments=i.Comments,
                Icerik=i.Icerik.Length>300?i.Icerik.Substring(0,300)+("[...]"):i.Icerik
            }).ToList();
            return View(blogposts);
        }
        public ActionResult Detail(int id)
        {
            var blog = db.BlogPosts.Find(id);
            ViewBag.blog=blog;
            return View();
        }
    }
}