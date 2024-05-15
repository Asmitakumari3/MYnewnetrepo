import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { ProductsComponent } from './components/products/products.component';
import { FinalpricePipe } from './pipe/finalprice.pipe';
import { DiscountPipe } from './pipe/discount.pipe';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,CommonModule,ProductsComponent,RouterLink,FinalpricePipe,DiscountPipe],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'AngularSPAAPPLICATION';
}
