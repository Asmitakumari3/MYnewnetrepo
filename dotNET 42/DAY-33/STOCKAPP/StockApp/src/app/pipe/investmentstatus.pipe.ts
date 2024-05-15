import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'investmentstatus',
  standalone: true
})
export class InvestmentstatusPipe implements PipeTransform {

  transform(investVal: number, currVal: number, ...args: unknown[]): string {
    return (investVal > currVal)?'Loss':'Profit';
  }

}
