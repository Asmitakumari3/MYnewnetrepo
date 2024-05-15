import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PesrconalDetailsComponent } from './pesrconal-details.component';

describe('PesrconalDetailsComponent', () => {
  let component: PesrconalDetailsComponent;
  let fixture: ComponentFixture<PesrconalDetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PesrconalDetailsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(PesrconalDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
