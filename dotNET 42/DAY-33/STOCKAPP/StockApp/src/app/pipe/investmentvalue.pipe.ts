import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'investmentvalue',
  standalone: true
})
export class InvestmentvaluePipe implements PipeTransform {

  transform(buyPrice: number, buyQn: number): number {
    return buyQn * buyPrice;
  }

}


