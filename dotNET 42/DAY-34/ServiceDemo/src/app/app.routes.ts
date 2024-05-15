import { Routes } from '@angular/router';
import { MaleproductsComponent } from './components/maleproducts/maleproducts.component';
import { FemaleproductsComponent } from './components/femaleproducts/femaleproducts.component';

export const routes: Routes = [
    {path:'male',component:MaleproductsComponent},
    {path:'female',component:FemaleproductsComponent},
];
