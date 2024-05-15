import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-pesrconal-details',
  standalone: true,
  imports: [RouterOutlet,PesrconalDetailsComponent],
  templateUrl: './pesrconal-details.component.html',
  styleUrl: './pesrconal-details.component.css'
})
export class PesrconalDetailsComponent {
  emailAddress:string="personx1@gmailcom";
  mobileNo:number=9798095238;
  bloodGroup:string="O+";
  highestEducation:string="B.Tech Graduate";

}
