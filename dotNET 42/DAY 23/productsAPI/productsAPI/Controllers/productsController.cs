using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;


namespace productsAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class productsController : ControllerBase
    {
        static List<string> productList = new List<string>() {
        "Bread", "Wheat", "Pepsi", "Maggie", "Cake", "Good Day", "Soap", "Detergent", "chips", "Icecream"
        };

        [HttpGet("all-products")]
        public IActionResult GetAllProducts()
        {
            return Ok(productList);
        }

        [HttpGet("products-sorted")]
        public IActionResult GetSortedProducts(bool asc)
        {
            List<string> productsSorted = null;
            if (asc)
            {
                productsSorted = (from product in productList
                                  orderby product ascending
                                  select product).ToList();
            }
            else
            {
                productsSorted = (from product in productList
                                  orderby product descending
                                  select product).ToList();
            }
            return Ok(productsSorted);
        }

        [HttpGet("tot-products")]
        public IActionResult GetTotProducts()
        {
            return Ok(productList.Count());
        }

        [HttpGet("product/{query}")]
        public IActionResult GetProduct(string query)
        {
            var res = from product in productList
                      where product.StartsWith(query)
                      select product;
            return Ok(res);
        }

        [HttpPost("add-product/{name}")]
        public IActionResult PostAddProduct(string name)
        {
            productList.Add(name);
            return Created("", $"{name} added.");
        }

        [HttpDelete("delete-product/{name}")]
        public IActionResult DeleteProduct(string name)
        {
            bool deleted = productList.Remove(name);

            if (deleted)
            {
                return Accepted($"Deleted {name}.");
            }
            else
            {
                return NotFound($"{name} not found.");
            }
        }

        [HttpPut("edit-product")]
        public IActionResult PutEditProduct(int id, string name)
        {
            if (id >= productList.Count)
            {
                return BadRequest("Index out of range");
            }
            else
            {
                string prev = productList[id];
                productList[id] = name;

                return Accepted($"{prev} changed to {name}.");
            }
        }

        [HttpGet("product-obj")]
        public IActionResult GetProductObj()
        {
            ProductDetails prod = new ProductDetails();
            prod.pId = 1;
            prod.pName = "Tea";
            prod.pCategory = "Breverage";
            prod.pQn = 10;

            return Ok(prod);
        }
    }
}
