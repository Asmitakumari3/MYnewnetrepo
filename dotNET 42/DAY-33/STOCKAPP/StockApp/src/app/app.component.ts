import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { StockDetailsComponent } from './component/stock-details/stock-details.component';
import { InvestmentvaluePipe } from './pipe/investmentvalue.pipe';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,StockDetailsComponent,InvestmentvaluePipe],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'StockApp';
}
