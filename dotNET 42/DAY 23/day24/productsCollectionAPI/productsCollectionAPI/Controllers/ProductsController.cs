using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace productsCollectionAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        ProductDetails pObj = new ProductDetails();


        [HttpGet("allproducts")]
        public IActionResult GetAllProducts()
        {
            var data = pObj.GetAllProducts();
            return Ok(data);
        }
        [HttpGet("productbyid/{id}")]
        public IActionResult GetProductById(int id)
        {
            var data = pObj.GetProdctById(id);
            return Ok(data);
        }
        [HttpGet("productbycategory/{category}")]
        public IActionResult GetProductByCategory(string category)
        {
            var data = pObj.GetProductByCategory(category);
            return Ok(data);
        }

    }
}
