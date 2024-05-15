using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using productAPI_EF.db;

namespace productAPI_EF.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductDetails1Controller : ControllerBase
    {
        private readonly ProductsDbContext _context= new ProductsDbContext ();

        

        // GET: api/ProductDetails1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TablProductDetail>>> GetTablProductDetails()
        {
          if (_context.TablProductDetails == null)
          {
              return NotFound();
          }
            return await _context.TablProductDetails.ToListAsync();
        }

        // GET: api/ProductDetails1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TablProductDetail>> GetTablProductDetail(int id)
        {
          if (_context.TablProductDetails == null)
          {
              return NotFound();
          }
            var tablProductDetail = await _context.TablProductDetails.FindAsync(id);

            if (tablProductDetail == null)
            {
                return NotFound();
            }

            return tablProductDetail;
        }

        // PUT: api/ProductDetails1/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTablProductDetail(int id, TablProductDetail tablProductDetail)
        {
            if (id != tablProductDetail.PId)
            {
                return BadRequest();
            }

            _context.Entry(tablProductDetail).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TablProductDetailExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/ProductDetails1
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<TablProductDetail>> PostTablProductDetail(TablProductDetail tablProductDetail)
        {
          if (_context.TablProductDetails == null)
          {
              return Problem("Entity set 'ProductsDbContext.TablProductDetails'  is null.");
          }
            _context.TablProductDetails.Add(tablProductDetail);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TablProductDetailExists(tablProductDetail.PId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTablProductDetail", new { id = tablProductDetail.PId }, tablProductDetail);
        }

        // DELETE: api/ProductDetails1/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTablProductDetail(int id)
        {
            if (_context.TablProductDetails == null)
            {
                return NotFound();
            }
            var tablProductDetail = await _context.TablProductDetails.FindAsync(id);
            if (tablProductDetail == null)
            {
                return NotFound();
            }

            _context.TablProductDetails.Remove(tablProductDetail);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TablProductDetailExists(int id)
        {
            return (_context.TablProductDetails?.Any(e => e.PId == id)).GetValueOrDefault();
        }
    }
}
