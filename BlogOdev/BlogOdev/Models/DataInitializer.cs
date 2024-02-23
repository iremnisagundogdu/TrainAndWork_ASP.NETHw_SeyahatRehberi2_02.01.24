using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace BlogOdev.Models
{
    public class DataInitializer:DropCreateDatabaseIfModelChanges<DataContext> //Modelde herhangi bir değişiklik olduğu zaman veri tabanını siler ve tekrar oluşturur.
    {
        protected override void Seed(DataContext context)
        {
            var category = new List<Category>()
            {
                new Category(){KategoriAd="Marmara Bölgesi"},
                  new Category(){KategoriAd="Ege Bölgesi"},
                    new Category(){KategoriAd="Akdeniz Bölgesi"},
                      new Category(){KategoriAd="Karadeniz Bölgesi"},
                        new Category(){KategoriAd="Doğu Anadolu Bölgesi"},
                          new Category(){KategoriAd="Güneydoğu Anadolu Bölgesi"},
            };
            foreach (var item in category)
            {
                context.Category.Add(item);
            }
            context.SaveChanges();

            var blogposts = new List<BlogPosts>()
            {
                new BlogPosts() { Baslik="Dillerin ve Dinlerin Kenti Mardin", Icerik="Mardin, sadece bir şehir değil, aynı zamanda bir zaman makinesi. Dicle'nin bereketli ovalarına yüksek bir tepeden bakan bu kadim şehir, taş işçiliğinin zarafetiyle inşa edilmiş yapıları, arnavut kaldırımlı dar sokakları ve binlerce yıllık tarihiyle ziyaretçilerini adeta geçmişe götürüyor.",Resim="Mardin.jpg",YayinTarih=Convert.ToDateTime("2023-12-24"),Goruntulenme=0,Onay=true,KategoriId=6,KullaniciAd="iremnisa" },
                  new BlogPosts() { Baslik="Karadeniz'in İncisi ve Tarihin Can Bulduğu Şehir", Icerik="Trabzon, Karadeniz'in sarp ve yeşil yamaçlarına sıkıca tutunan, tarihi ve doğal güzellikleriyle ön plana çıkan, Türkiye'nin en çok ziyaret edilen şehirlerinden biridir. Bu şehir, zengin tarihi dokusu, benzersiz kültürü, nefes kesen doğa manzaraları ve lezzetli mutfağıyla her yıl yerli ve yabancı birçok turisti ağırlıyor. ",Resim="Trabzon.jpeg",YayinTarih=Convert.ToDateTime("2023-12-21"),Goruntulenme=4,Onay=true,KategoriId=4,KullaniciAd="esmasezer" },
                    new BlogPosts() { Baslik="İstanbul: Kıtalararası Bir Aşk Hikayesi", Icerik="İstanbul, dünyanın en büyüleyici şehirlerinden biridir. Yedi tepe üzerine kurulu bu tarihî şehir, Asya ve Avrupa kıtalarını birbirine bağlayan muazzam bir coğrafyada, binlerce yıllık bir geçmişiyle adeta zamanın ruhunu taşıyor. İstanbul, her köşesinde farklı bir medeniyetin izlerini taşıyan sokakları, dünya mirası listesinde yer alan eserleri ve kesintisiz bir enerjiye sahip yaşam tarzıyla ziyaretçilerine unutulmaz deneyimler vadediyor.",Resim="İstanbul.jpg",YayinTarih=Convert.ToDateTime("2023-12-26"),Goruntulenme=7,Onay=true,KategoriId=1,KullaniciAd="melisbayrak" }
            };
            foreach (var item in blogposts)
            {
                context.BlogPosts.Add(item);
            }
            context.SaveChanges();

            base.Seed(context);
        }
    }
}