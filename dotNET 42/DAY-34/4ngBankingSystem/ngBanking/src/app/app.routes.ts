import { Routes } from '@angular/router';
import { AboutbankingComponent } from './components/aboutbanking/aboutbanking.component';
import { ViewaccountsComponent } from './components/viewaccounts/viewaccounts.component';
import { SearchaccountsComponent } from './components/searchaccounts/searchaccounts.component';
import { AddComponent } from './components/add/add.component';
import { UpdateComponent } from './components/update/update.component';
import { DeleteComponent } from './components/delete/delete.component';
import { LoginComponent } from './components/login/login.component';
import { register } from 'module';
import { RegisterComponent } from './components/register/register.component';

export const routes: Routes = [
    {path:'about',component:AboutbankingComponent},
    {path:'accounts',component:ViewaccountsComponent,canActivate:[LoginComponent]},
  
    {path:'search',component:SearchaccountsComponent,canActivate:[LoginComponent]},
    {path:'add',component:AddComponent,canActivate:[LoginComponent]},
    {path:'update',component:UpdateComponent,canActivate:[LoginComponent]},
    {path:'delete',component:DeleteComponent,canActivate:[LoginComponent]},
    {path:'login',component:LoginComponent},
    {path:'register',component:RegisterComponent},
];
