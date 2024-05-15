import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FuturegoalsComponent } from './futuregoals.component';

describe('FuturegoalsComponent', () => {
  let component: FuturegoalsComponent;
  let fixture: ComponentFixture<FuturegoalsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FuturegoalsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FuturegoalsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
