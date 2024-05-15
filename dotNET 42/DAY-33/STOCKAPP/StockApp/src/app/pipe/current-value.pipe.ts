import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'currentvalue',
  standalone: true
})
export class CurrentValuePipe implements PipeTransform {

  transform(currPrice: number, buyQn: number, ...args: unknown[]): number {
    return currPrice * buyQn;
  }

}

