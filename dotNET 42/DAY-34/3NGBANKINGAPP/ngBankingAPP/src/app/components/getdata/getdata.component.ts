import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { AccountsService } from '../../services/accounts.service';

@Component({
  selector: 'app-getdata',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './getdata.component.html',
  styleUrl: './getdata.component.css'
})
export class GetdataComponent {
  _accountsService:AccountsService;
  
    constructor(accSerREF:AccountsService){
      this._accountsService=accSerREF;

  }

  }

