import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class BankserviceService {

  //constructor() { }
//}

//
//export class BankingPserService {

  _http:HttpClient;
  constructor(httpREf:HttpClient) 
  {
    this._http=httpREf;
   }
   accountsData:any=[];
   getaccountsData(){
    let url='https://localhost:7216/api/AccountInfoes';
    this._http.get(url).subscribe((data)=>{
    this.accountsData=data;
    })
 }
 }