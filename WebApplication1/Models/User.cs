using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public sealed class User
    {
        public string UserID { get; set; }
        public string PhoneNumber { get; set; }
        public string Password { get; set; }
        public string RegistrationTime { get; set; }
        public string LastLoginTime { get; set; }

    }
}
