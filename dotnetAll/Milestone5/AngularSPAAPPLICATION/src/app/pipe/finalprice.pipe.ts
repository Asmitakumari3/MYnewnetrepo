import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'finalprice',
  standalone: true
})
export class FinalpricePipe implements PipeTransform {

  transform(price: number,discount: number): number {
    return price-discount;
  }

}
