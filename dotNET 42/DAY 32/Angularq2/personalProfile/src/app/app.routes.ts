

import { Routes } from '@angular/router';
import path from 'node:path';
import { HomeComponent } from './components/home/home.component';
import { AboutmeComponent } from './components/aboutme/aboutme.component';
import { ContactmeComponent } from './components/contactme/contactme.component';
import { FuturegoalsComponent } from './components/futuregoals/futuregoals.component';
import { HobbiesComponent } from './components/hobbies/hobbies.component';
import { SocialMediaComponent} from './components/social-media/social-media.component';
import { EducationalQualificationComponent } from './components/educational-qualification/educational-qualification.component';
import { WorkExperienceComponent } from './components/work-experience/work-experience.component';   
export const routes: Routes = [
    {path:'',component:HomeComponent},
    {path:'home',component:HomeComponent},
    {path:'aboutme',component:AboutmeComponent},
    {path:'contactme',component:ContactmeComponent},
    {path:'educational-qualification',component:EducationalQualificationComponent},
    {path:'Socialmedia',component:SocialMediaComponent},
    {path:'Hobbies',component:HobbiesComponent},
    {path:'Futuregoals',component:FuturegoalsComponent},
    {path:'WorkExperience',component:WorkExperienceComponent}
];
