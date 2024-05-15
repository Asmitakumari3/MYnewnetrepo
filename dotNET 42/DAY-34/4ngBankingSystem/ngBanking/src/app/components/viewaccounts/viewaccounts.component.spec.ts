import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewaccountsComponent } from './viewaccounts.component';

describe('ViewaccountsComponent', () => {
  let component: ViewaccountsComponent;
  let fixture: ComponentFixture<ViewaccountsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ViewaccountsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ViewaccountsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
