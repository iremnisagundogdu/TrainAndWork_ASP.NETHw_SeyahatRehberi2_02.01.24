using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BlogOdev.Models
{
    public class UpdateProfile
    {
        public string Id { get; set; }
        [Required]
        [DisplayName("Adı")]
        public string Name { get; set; }
        [Required]
        [DisplayName("Soyadı")]
        public string Surname { get; set; }
        [Required]
        [DisplayName("Kullanıcı Adı")]
        public string Username { get; set; }
        [Required]
        [DisplayName("Email")]
        [EmailAddress(ErrorMessage ="Geçerli bir Email adresi giriniz.")]
        public string Email { get; set; }
    }
}