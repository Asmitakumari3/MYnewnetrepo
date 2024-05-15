create database shopingDB_API
use shopingDB_API;


create table products (

  pId int primary key,
  pName varchar(20),
  pPrice float,
  pAvailbleQty int,
  pIsInStock bit,
  pDicountPercentage float,
  pOfferCode varchar(50),
  pOfferCodePercentage float,



);

insert into products values (1, 'AmulMILK', '20.05', 10, 1, 10,'mun',11);

insert into products values (2, 'MILKybar', '30.05', 15, 0, 11,'mub',13);

insert into products values (3, 'Amuldarkchoclate', 20.05, 10, 1, 20,'mus',11);
insert into products values (4, 'chips', '20.01', 50, 1, 20,'mua',15);
insert into products values (5, 'cake', '20.05', 100, 1, 30,'mub',11);
insert into products values (6, 'toffee', '2.05', 1000, 1, 18,'muc',19);
insert into products values (7, 'biscuit', '10.05', 100, 1, 10,'mud',11);
insert into products values (8, 'MILKcake', '20.05', 10, 1, 10,'mue',11);
insert into products values (9, 'sweets', '36.05', 10, 1, 10,'muf',11);
insert into products values (10, 'DairyMILK', '20.05', 1000, 1, 10,'mug',11);



create table tabl_customerDetails (
	cId int primary key,
	cName varchar(30),
	cCity varchar(20),
	cWalletBalance float,
	cEmail varchar(50)
);

insert into tabl_customerDetails values (100, 'Jayanto', 'Kolkata', 553.57, 'jayanto@mail.com');
insert into tabl_customerDetails values (101, 'Husain', 'Kolkata', 508.45, 'husain@mail.com');
insert into tabl_customerDetails values (102, 'Mr. Fresh', 'Wuhan', 656.78, 'freshbrother@mail.com');

create table tabl_orderDetails (
	oId int primary key,
	oProductId int foreign key references products(pId),
	cId int foreign key references tabl_customerDetails(cId),
	orderTotal float
);

insert into tabl_orderDetails values(500, 10, 100, 30);
insert into tabl_orderDetails values(501, 10, 101, 80);









