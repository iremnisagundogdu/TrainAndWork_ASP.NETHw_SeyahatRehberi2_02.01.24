﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogOdev.Models
{
    private class BlogPosts
    {
        public int Id { get; set; }
        public string KullaniciAd { get; set; }
        public string Baslik { get; set; }
        public string Resim { get; set; }   
        public string Icerik {  get; set; }
        public DateTime YayinTarih { get; set; }
        public int Goruntulenme { get; set; }
        public bool Onay {  get; set; }
        public int KategoriId {  get; set; }
        public Category Category { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }


        public BlogPosts()
        {

        }
    }
  
}