﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using empManagement_MVC.Models;

namespace empManagement_MVC.Controllers
{
    public class empIoyeeController : Controller
    {
        private readonly EmpDbDataAnnotationContext _context;

        public empIoyeeController(EmpDbDataAnnotationContext context)
        {
            _context = context;
        }

        // GET: empIoyee
        public async Task<IActionResult> Index()
        {
              return _context.EmpInfos != null ? 
                          View(await _context.EmpInfos.ToListAsync()) :
                          Problem("Entity set 'EmpDbDataAnnotationContext.EmpInfos'  is null.");
        }

        // GET: empIoyee/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.EmpInfos == null)
            {
                return NotFound();
            }

            var empInfo = await _context.EmpInfos
                .FirstOrDefaultAsync(m => m.EmpNo == id);
            if (empInfo == null)
            {
                return NotFound();
            }

            return View(empInfo);
        }

        // GET: empIoyee/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: empIoyee/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("EmpNo,EmpName,EmpDesigantion,EmpSalary,EmpIsPermenant,EmpEmail")] EmpInfo empInfo)
        {
            if (ModelState.IsValid)
            {
                _context.Add(empInfo);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(empInfo);
        }

        // GET: empIoyee/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.EmpInfos == null)
            {
                return NotFound();
            }

            var empInfo = await _context.EmpInfos.FindAsync(id);
            if (empInfo == null)
            {
                return NotFound();
            }
            return View(empInfo);
        }

        // POST: empIoyee/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("EmpNo,EmpName,EmpDesigantion,EmpSalary,EmpIsPermenant,EmpEmail")] EmpInfo empInfo)
        {
            if (id != empInfo.EmpNo)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(empInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EmpInfoExists(empInfo.EmpNo))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(empInfo);
        }

        // GET: empIoyee/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.EmpInfos == null)
            {
                return NotFound();
            }

            var empInfo = await _context.EmpInfos
                .FirstOrDefaultAsync(m => m.EmpNo == id);
            if (empInfo == null)
            {
                return NotFound();
            }

            return View(empInfo);
        }

        // POST: empIoyee/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.EmpInfos == null)
            {
                return Problem("Entity set 'EmpDbDataAnnotationContext.EmpInfos'  is null.");
            }
            var empInfo = await _context.EmpInfos.FindAsync(id);
            if (empInfo != null)
            {
                _context.EmpInfos.Remove(empInfo);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EmpInfoExists(int id)
        {
          return (_context.EmpInfos?.Any(e => e.EmpNo == id)).GetValueOrDefault();
        }
    }
}