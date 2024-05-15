import { TestBed } from '@angular/core/testing';

import { GreetserService } from './greetser.service';

describe('GreetserService', () => {
  let service: GreetserService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(GreetserService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
