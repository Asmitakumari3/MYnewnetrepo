import { Component } from '@angular/core';
import { GetproductService } from '../../service/getproduct.service';
import { CommonModule } from '@angular/common';
import { DiscountPipe } from '../../pipe/discount.pipe';
import { FinalpricePipe } from '../../pipe/finalprice.pipe';

@Component({
  selector: 'app-products',
  standalone: true,
  imports: [CommonModule,DiscountPipe,FinalpricePipe],
  templateUrl: './products.component.html',
  styleUrl: './products.component.css'
})
export class ProductsComponent {
  _productService:GetproductService;

  constructor(prodserREF:GetproductService){
    this._productService=prodserREF;
  }

}
