using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public sealed class Inventory
    {
        public int InventoryID { get; set; }
        public string ISBN { get; set; }
        public string StoreTime { get; set; }
        public string Status { get; set; }
    }
}
