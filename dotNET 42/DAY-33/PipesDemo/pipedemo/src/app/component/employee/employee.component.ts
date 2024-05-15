import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-employee',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './employee.component.html',
  styleUrl: './employee.component.css'
})
export class EmployeeComponent {
  empNo:number=101;
  empName:string = "Asmita";
  empSalary:number=400000;
  empDesignation:string ="Traniee";
  empIsActive:boolean = true;
  empJoiningData:Date = new Date('10/10/2014');
  empGraduationPercentage = 80;
  empSkills:string[]= ['Angular','Net','REST','SQL SERVER','Javascript','Azure']

  empWorkProfile:any= 
  {
    empWorkId:501,
    empProject:'Banking System',
    empRole:'Developer',
    empPosition:'FrontEnd UI development',
    empTech:'Angular'
  }
}




