﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI_Projectdaycloud;

namespace WebAPI_Projectdaycloud.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountInfoesController : ControllerBase
    {
        private readonly AsmitakumariBankingDbContext _context;

        public AccountInfoesController(AsmitakumariBankingDbContext context)
        {
            _context = context;
        }

        // GET: api/AccountInfoes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<AccountInfo>>> GetAccountInfos()
        {
          if (_context.AccountInfos == null)
          {
              return NotFound();
          }
            return await _context.AccountInfos.ToListAsync();
        }

        // GET: api/AccountInfoes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<AccountInfo>> GetAccountInfo(int id)
        {
          if (_context.AccountInfos == null)
          {
              return NotFound();
          }
            var accountInfo = await _context.AccountInfos.FindAsync(id);

            if (accountInfo == null)
            {
                return NotFound();
            }

            return accountInfo;
        }

        // PUT: api/AccountInfoes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAccountInfo(int id, AccountInfo accountInfo)
        {
            if (id != accountInfo.AccNo)
            {
                return BadRequest();
            }

            _context.Entry(accountInfo).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AccountInfoExists(id))
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

        // POST: api/AccountInfoes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<AccountInfo>> PostAccountInfo(AccountInfo accountInfo)
        {
          if (_context.AccountInfos == null)
          {
              return Problem("Entity set 'AsmitakumariBankingDbContext.AccountInfos'  is null.");
          }
            _context.AccountInfos.Add(accountInfo);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (AccountInfoExists(accountInfo.AccNo))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetAccountInfo", new { id = accountInfo.AccNo }, accountInfo);
        }

        // DELETE: api/AccountInfoes/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAccountInfo(int id)
        {
            if (_context.AccountInfos == null)
            {
                return NotFound();
            }
            var accountInfo = await _context.AccountInfos.FindAsync(id);
            if (accountInfo == null)
            {
                return NotFound();
            }

            _context.AccountInfos.Remove(accountInfo);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AccountInfoExists(int id)
        {
            return (_context.AccountInfos?.Any(e => e.AccNo == id)).GetValueOrDefault();
        }
    }
}
