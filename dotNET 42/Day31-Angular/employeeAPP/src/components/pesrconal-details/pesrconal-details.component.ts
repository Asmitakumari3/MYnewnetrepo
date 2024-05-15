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
  mobileNo:number=987654310;
  bloodGroup:string="A+";
  highestEducation:string="B.Tech Graduate";

}
