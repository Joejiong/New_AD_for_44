using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication1.Controllers.StoreControllers
{
    public class ClerkJoeController : Controller
    {
        // GET: ClerkJoe
        public ActionResult Index()
        {
            return View();
        }

        // GET: ClerkJoe/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ClerkJoe/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ClerkJoe/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ClerkJoe/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ClerkJoe/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ClerkJoe/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ClerkJoe/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
