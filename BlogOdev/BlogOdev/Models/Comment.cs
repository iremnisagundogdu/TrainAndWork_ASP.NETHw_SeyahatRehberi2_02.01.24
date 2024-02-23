using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogOdev.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public string Yorum { get; set; }
        public string KullaniciId { get; set; }
        public DateTime Tarih {  get; set; }
        public float Puan {  get; set; }
        public int BlogId {  get; set; }

        public virtual BlogPosts BlogPosts { get; set; }


    }
}