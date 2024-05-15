import { Component } from '@angular/core';
import { BankserviceService } from '../../services/bankservice.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-account-info',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './account-info.component.html',
  styleUrl: './account-info.component.css'
})
export class AccountInfoComponent {




///
///export class AllAccountsComponent {

  _accountsService:BankserviceService;

  constructor(accSerREF:BankserviceService){
   this._accountsService=accSerREF;
}
}