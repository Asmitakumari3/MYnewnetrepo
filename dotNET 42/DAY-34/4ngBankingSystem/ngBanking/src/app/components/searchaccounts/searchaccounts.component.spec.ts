import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SearchaccountsComponent } from './searchaccounts.component';

describe('SearchaccountsComponent', () => {
  let component: SearchaccountsComponent;
  let fixture: ComponentFixture<SearchaccountsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SearchaccountsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(SearchaccountsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
