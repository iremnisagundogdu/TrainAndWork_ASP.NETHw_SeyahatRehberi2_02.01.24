using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BlogOdev.Models
{
    public class Register
    {
        [Required]
        [DisplayName("Adınız")]
        public string Name { get; set; }
        [Required]
        [DisplayName("Soyadınız")]
        public string Surname { get; set; }
        [Required]
        [DisplayName("Kullanıcı Adınız")]
        public string Username { get; set; }
        [Required]
        [DisplayName("E-mail")]
        [EmailAddress(ErrorMessage ="Geçersiz E-posta Adresi")]
        public string Email { get; set; }
        [Required]
        [DisplayName("Şifre")]
        public string Password { get; set; }
        [Required]
        [DisplayName("Şifre Tekrar")]
        [Compare("Password",ErrorMessage ="Şifreler aynı değil...")]
        public string RePassword { get; set; }
    }
}