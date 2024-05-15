﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace productsCollectionAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
         ProductDetails pObj = new ProductDetails();

        #region Get Methods
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
        [HttpGet("available/{yesorno}")]
        public IActionResult AvailableProducts(string yesorno)
        {
            var data = pObj.GetProductInStock(yesorno);
            return Ok(data);
        }
        [HttpGet("total")]
        public IActionResult TotalProducts()
        {
            return Ok(pObj.TotalProducts());
        }
        #endregion

        [HttpPost("add")]
        public IActionResult Add(ProductDetails product)
        {
            var data = pObj.AddNewProduct(product);
            product.pId = 115;

            return Created("", data);
        }
        [HttpDelete("delete/{id}")]
        public IActionResult Delete(int id)
        {
            var data = pObj.DeleteProduct(id);
                       

            return Accepted(data);
        }
        [HttpPut("edit")]
        public IActionResult Edit(ProductDetails product)
        {
            var data = pObj.EditProduct(product);
            //product.pId = 114;
            return Accepted(data);
        }

    }
}
