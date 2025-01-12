using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public sealed class BorrowingRecord
    {
        public int RecordID { get; set; }
        public int UserID { get; set; }
        public int InventoryID { get; set; }
        public string BorrowDate { get; set; }
        public string ReturnDate { get; set; }
    }
}
