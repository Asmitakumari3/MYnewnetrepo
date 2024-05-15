import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AboutbankingComponent } from './aboutbanking.component';

describe('AboutbankingComponent', () => {
  let component: AboutbankingComponent;
  let fixture: ComponentFixture<AboutbankingComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AboutbankingComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(AboutbankingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
