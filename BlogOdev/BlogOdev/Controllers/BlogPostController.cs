using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BlogOdev.Models;

namespace BlogOdev.Controllers
{
    public class BlogPostController : Controller
    {
        private DataContext db = new DataContext();

        // GET: BlogPost
        public ActionResult Index()
        {
            return View(db.BlogPosts.ToList());
        }

        // GET: BlogPost/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BlogPosts blogPosts = db.BlogPosts.Find(id);
            if (blogPosts == null)
            {
                return HttpNotFound();
            }
            return View(blogPosts);
        }

        // GET: BlogPost/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BlogPost/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,KullaniciAd,Baslik,Resim,Icerik,YayinTarih,Goruntulenme,Onay,KategoriId")] BlogPosts blogPosts)
        {
            if (ModelState.IsValid)
            {
                db.BlogPosts.Add(blogPosts);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(blogPosts);
        }

        // GET: BlogPost/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BlogPosts blogPosts = db.BlogPosts.Find(id);
            if (blogPosts == null)
            {
                return HttpNotFound();
            }
            return View(blogPosts);
        }

        // POST: BlogPost/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,KullaniciAd,Baslik,Resim,Icerik,YayinTarih,Goruntulenme,Onay,KategoriId")] BlogPosts blogPosts)
        {
            if (ModelState.IsValid)
            {
                db.Entry(blogPosts).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(blogPosts);
        }

        // GET: BlogPost/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BlogPosts blogPosts = db.BlogPosts.Find(id);
            if (blogPosts == null)
            {
                return HttpNotFound();
            }
            return View(blogPosts);
        }

        // POST: BlogPost/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BlogPosts blogPosts = db.BlogPosts.Find(id);
            db.BlogPosts.Remove(blogPosts);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
