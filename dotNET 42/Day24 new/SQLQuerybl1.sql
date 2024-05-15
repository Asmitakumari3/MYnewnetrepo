
create database ProductsDB;

use ProductsDB;
​

create table tabl_productDetails (

  pId int primary key,

  pName varchar(20),

  pCategory varchar(20),

  pPrice float,

  pInStock bit,

  pAvailableQty int

);

​

insert into tabl_productDetails values (10, 'WaiWao', 'Noodles', 10, 1, 100);

insert into tabl_productDetails values (20, 'Sunlight', 'Detergent', 140, 1, 80);
insert into tabl_productDetails values (30, 'GoodDae', 'Biscuits', 5, 1, 214);

insert into tabl_productDetails values (40, 'Biengo', 'Chips', 10, 0, 0);

insert into tabl_productDetails values (50, 'Bislere', 'Mineral Water', 10, 1, 34);

​

create table customerDetails (

cID INT PRIMARY KEY,
CName varchar(50),
cCity varchar (50),
CWalletBalance Float,
cIsActive bit
);

insert into customerDetails values (1, 'Annu', 'Patna',10000,1);


insert into customerDetails values (2, 'Annu2', 'Patna1',100001,0);
insert into customerDetails values (3, 'Annu3', 'Patna2',100002,1);
insert into customerDetails values (4, 'Annu4', 'Patna3',1000030,1);
insert into customerDetails values (5, 'Annu5', 'Patna4',10000.80,0);
