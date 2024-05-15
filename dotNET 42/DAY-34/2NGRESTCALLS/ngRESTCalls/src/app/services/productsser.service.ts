import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProductsserService {
  _http:HttpClient;

  constructor(httpREf:HttpClient) {
    this._http = httpREf;
   }
   productData:any[] = [];
   getProductsData()
   {
    let url ='';
   }
}