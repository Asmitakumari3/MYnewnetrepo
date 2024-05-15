import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FriendsComponent } from './components/friends/friends.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,FriendsComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'angular_data';
}
