import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { PesrconalDetailsComponent } from '../components/pesrconal-details/pesrconal-details.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,PesrconalDetailsComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'employeeAPP';
  empNo:number=100;
  empName:string="Asmita";
  empDesignation:string="Developer";
  empSalary:number=50000;
  empIsPermanent:boolean=true;
}
