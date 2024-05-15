import { Component } from '@angular/core';
import { BankserviceService } from '../../services/bankservice.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-branch-info',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './branch-info.component.html',
  styleUrl: './branch-info.component.css'
})
export class BranchInfoComponent
{





  _accountsService:BankserviceService;

  constructor(accSerREF:BankserviceService){
   this._accountsService=accSerREF;
}
}
