using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public sealed class Book
    {
        public int ISBN { get; set; }
        public string Name { get; set; }
        public string Author { get; set; }
        public string Introduction { get; set; }

    }
}
