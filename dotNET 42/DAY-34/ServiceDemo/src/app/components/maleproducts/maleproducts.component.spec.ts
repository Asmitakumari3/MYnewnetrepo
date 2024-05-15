import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MaleproductsComponent } from './maleproducts.component';

describe('MaleproductsComponent', () => {
  let component: MaleproductsComponent;
  let fixture: ComponentFixture<MaleproductsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [MaleproductsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(MaleproductsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
