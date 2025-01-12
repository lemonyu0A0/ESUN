using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Authorize]
    public class BooksController : Controller
    {

        //借書，執行PROCEDURE--BorrowBook
        public void BookBorrow(string InventoryID, string UserID)
        {
            try
            {

            }
            catch (Exception ex)
            {
                //寫LOG(ex.tostring())
                throw;
            }
        }

        //還書，執行PROCEDURE--ReturnBook
        public void BookReturn(string InventoryID, string UserID)
        {
            try
            {

            }
            catch (Exception ex)
            {
                //寫LOG(ex.tostring())
                throw;
            }
        }

    }
}