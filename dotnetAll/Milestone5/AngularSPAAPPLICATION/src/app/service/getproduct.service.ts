import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GetproductService {
  _http:HttpClient;

  constructor(httpREF:HttpClient) 
  {
    this._http=httpREF;

   }
   productsData:any=[];
   getProductsData(){
    let url='https://fakestoreapi.com/products';
    this._http.get(url).subscribe((data)=>{
    this.productsData=data;

    })
   }
}
