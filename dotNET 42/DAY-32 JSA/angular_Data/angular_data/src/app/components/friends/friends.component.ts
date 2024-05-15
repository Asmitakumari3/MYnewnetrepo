import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-friends',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './friends.component.html',
  styleUrl: './friends.component.css'
})
export class FriendsComponent {
  myName:string ="Nikhil";
  totalFriends:number =2000;

  bestFriends:string[]=['Akshay','Rahul','Somy','Jitesh','Akash','Sahil']
  bestFriendsDetails:any={
    name:'Sahil',
    FriendsSince:'Childhood',
    email:'sahil@sommewhere.com',
    mobile:4595696030303,
    instaid:'sahil_insta',
    fbid:'sahil_not_on_fb',

}
friendsList:any[]=[
  {friendsName:'rosni',friendCity:'kolata',friendEmail:'friendEmail:ras@gmail.com',insta:'ros0_1rrt',fc:'rosni0_fakeid'},
  {friendsName:'rosni1',friendCity:'Mumbai',friendEmail:'friendEmail:ras1@gmail.com',insta:'ros1_1rrt',fc:'rosni1_fakeid'},
  {friendsName:'rosni2',friendCity:'Mumbai',friendEmail:'friendEmail:ras2@gmail.com',insta:'ros2_1rrt',fc:'rosni3_fakeid'},
  {friendsName:'rosni3',friendCity:'goa',friendEmail:'friendEmail:ras3@gmail.com',insta:'ros3_1rrt',fc:'rosni_fakeid'},
  {friendsName:'rosni4',friendCity:'Mohali',friendEmail:'friendEmail:ras4@gmail.com',insta:'ros4_1rrt',fc:'rosni_fakeid'},
  {friendsName:'rosni5',friendCity:'pune',friendEmail:'friendEmail:ras5@gmail.com',insta:'ros5_1rrt',fc:'rosni_fakeid'},
  {friendsName:'rosni6',friendCity:'Mumbai',friendEmail:'friendEmail:ras6@gmail.com',insta:'ros6_1rrt',fc:'rosni_fakeid'},

]

}
