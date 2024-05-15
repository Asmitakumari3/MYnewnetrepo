using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPIApplication.Db;

namespace WebAPIApplication.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerPoliciesController : ControllerBase
    {
        private readonly InsuranceAzureDbContext _context;

        public CustomerPoliciesController(InsuranceAzureDbContext context)
        {
            _context = context;
        }

        // GET: api/CustomerPolicies
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CustomerPolicy>>> GetCustomerPolicies()
        {
          if (_context.CustomerPolicies == null)
          {
              return NotFound();
          }
            return await _context.CustomerPolicies.ToListAsync();
        }

        // GET: api/CustomerPolicies/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CustomerPolicy>> GetCustomerPolicy(int id)
        {
          if (_context.CustomerPolicies == null)
          {
              return NotFound();
          }
            var customerPolicy = await _context.CustomerPolicies.FindAsync(id);

            if (customerPolicy == null)
            {
                return NotFound();
            }

            return customerPolicy;
        }

        // PUT: api/CustomerPolicies/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCustomerPolicy(int id, CustomerPolicy customerPolicy)
        {
            if (id != customerPolicy.CId)
            {
                return BadRequest();
            }

            _context.Entry(customerPolicy).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CustomerPolicyExists(id))
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

        // POST: api/CustomerPolicies
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CustomerPolicy>> PostCustomerPolicy(CustomerPolicy customerPolicy)
        {
          if (_context.CustomerPolicies == null)
          {
              return Problem("Entity set 'InsuranceAzureDbContext.CustomerPolicies'  is null.");
          }
            _context.CustomerPolicies.Add(customerPolicy);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CustomerPolicyExists(customerPolicy.CId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCustomerPolicy", new { id = customerPolicy.CId }, customerPolicy);
        }

        // DELETE: api/CustomerPolicies/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCustomerPolicy(int id)
        {
            if (_context.CustomerPolicies == null)
            {
                return NotFound();
            }
            var customerPolicy = await _context.CustomerPolicies.FindAsync(id);
            if (customerPolicy == null)
            {
                return NotFound();
            }

            _context.CustomerPolicies.Remove(customerPolicy);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CustomerPolicyExists(int id)
        {
            return (_context.CustomerPolicies?.Any(e => e.CId == id)).GetValueOrDefault();
        }
    }
}
