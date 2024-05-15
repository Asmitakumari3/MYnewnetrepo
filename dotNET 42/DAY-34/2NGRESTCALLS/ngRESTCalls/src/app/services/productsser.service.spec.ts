import { TestBed } from '@angular/core/testing';

import { ProductsserService } from './productsser.service';

describe('ProductsserService', () => {
  let service: ProductsserService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ProductsserService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
