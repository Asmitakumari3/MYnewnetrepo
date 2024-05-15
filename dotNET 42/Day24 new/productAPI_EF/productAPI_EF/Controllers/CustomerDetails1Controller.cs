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
    public class CustomerDetails1Controller : ControllerBase
    {
        private readonly ProductsDbContext _context= new ProductsDbContext();

        
        // GET: api/CustomerDetails1
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CustomerDetail>>> GetCustomerDetails()
        {
          if (_context.CustomerDetails == null)
          {
              return NotFound();
          }
            return await _context.CustomerDetails.ToListAsync();
        }

        // GET: api/CustomerDetails1/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CustomerDetail>> GetCustomerDetail(int id)
        {
          if (_context.CustomerDetails == null)
          {
              return NotFound();
          }
            var customerDetail = await _context.CustomerDetails.FindAsync(id);

            if (customerDetail == null)
            {
                return NotFound();
            }

            return customerDetail;
        }

        // PUT: api/CustomerDetails1/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCustomerDetail(int id, CustomerDetail customerDetail)
        {
            if (id != customerDetail.CId)
            {
                return BadRequest();
            }

            _context.Entry(customerDetail).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CustomerDetailExists(id))
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

        // POST: api/CustomerDetails1
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CustomerDetail>> PostCustomerDetail(CustomerDetail customerDetail)
        {
          if (_context.CustomerDetails == null)
          {
              return Problem("Entity set 'ProductsDbContext.CustomerDetails'  is null.");
          }
            _context.CustomerDetails.Add(customerDetail);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CustomerDetailExists(customerDetail.CId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCustomerDetail", new { id = customerDetail.CId }, customerDetail);
        }

        // DELETE: api/CustomerDetails1/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCustomerDetail(int id)
        {
            if (_context.CustomerDetails == null)
            {
                return NotFound();
            }
            var customerDetail = await _context.CustomerDetails.FindAsync(id);
            if (customerDetail == null)
            {
                return NotFound();
            }

            _context.CustomerDetails.Remove(customerDetail);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CustomerDetailExists(int id)
        {
            return (_context.CustomerDetails?.Any(e => e.CId == id)).GetValueOrDefault();
        }
    }
}
