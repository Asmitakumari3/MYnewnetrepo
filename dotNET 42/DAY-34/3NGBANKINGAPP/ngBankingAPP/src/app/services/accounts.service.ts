import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AccountsService {
  _http:HttpClient;

  constructor(httpREF:HttpClient) { 
    this._http=httpREF;
  }
  accountsData:any=[];
  getaccountsData(){
  let url= 'https://localhost:7040/api/Products/allproducts';
  this._http.get(url).subscribe((data)=>{
  this.accountsData=data;
 })

  
}
}
