import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'greeting2',
  standalone: true
})
export class Greeting2Pipe implements PipeTransform {

  transform(value: string, ...args: unknown[]): string {
    return 'Hello, ' + value;
  }
}

// Mahesh | greetings2

// = Hello, Mahesh
