using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using api1app.db;

namespace api1app.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TablCustomerDetails1Controller : ControllerBase
    {
        private readonly ShopingDbApiContext _context;

        public TablCustomerDetails1Controller(ShopingDbApiContext context)
        {
            _context = context;
        }

        // GET: api/TablCustomerDetails1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TablCustomerDetail>>> GetTablCustomerDetails()
        {
          if (_context.TablCustomerDetails == null)
          {
              return NotFound();
          }
            return await _context.TablCustomerDetails.ToListAsync();
        }

        // GET: api/TablCustomerDetails1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TablCustomerDetail>> GetTablCustomerDetail(int id)
        {
          if (_context.TablCustomerDetails == null)
          {
              return NotFound();
          }
            var tablCustomerDetail = await _context.TablCustomerDetails.FindAsync(id);

            if (tablCustomerDetail == null)
            {
                return NotFound();
            }

            return tablCustomerDetail;
        }

        // PUT: api/TablCustomerDetails1/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTablCustomerDetail(int id, TablCustomerDetail tablCustomerDetail)
        {
            if (id != tablCustomerDetail.CId)
            {
                return BadRequest();
            }

            _context.Entry(tablCustomerDetail).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TablCustomerDetailExists(id))
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

        // POST: api/TablCustomerDetails1
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<TablCustomerDetail>> PostTablCustomerDetail(TablCustomerDetail tablCustomerDetail)
        {
          if (_context.TablCustomerDetails == null)
          {
              return Problem("Entity set 'ShopingDbApiContext.TablCustomerDetails'  is null.");
          }
            _context.TablCustomerDetails.Add(tablCustomerDetail);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TablCustomerDetailExists(tablCustomerDetail.CId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTablCustomerDetail", new { id = tablCustomerDetail.CId }, tablCustomerDetail);
        }

        // DELETE: api/TablCustomerDetails1/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTablCustomerDetail(int id)
        {
            if (_context.TablCustomerDetails == null)
            {
                return NotFound();
            }
            var tablCustomerDetail = await _context.TablCustomerDetails.FindAsync(id);
            if (tablCustomerDetail == null)
            {
                return NotFound();
            }

            _context.TablCustomerDetails.Remove(tablCustomerDetail);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TablCustomerDetailExists(int id)
        {
            return (_context.TablCustomerDetails?.Any(e => e.CId == id)).GetValueOrDefault();
        }
    }
}
