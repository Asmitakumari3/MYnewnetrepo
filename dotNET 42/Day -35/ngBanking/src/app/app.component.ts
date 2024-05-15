import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { AccountInfoComponent } from './components/account-info/account-info.component';
import { BranchInfoComponent } from './components/branch-info/branch-info.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,CommonModule,AccountInfoComponent,BranchInfoComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'ngBanking';
}
