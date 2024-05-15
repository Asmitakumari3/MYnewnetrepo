import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FemaleproductsComponent } from './femaleproducts.component';

describe('FemaleproductsComponent', () => {
  let component: FemaleproductsComponent;
  let fixture: ComponentFixture<FemaleproductsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FemaleproductsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FemaleproductsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
