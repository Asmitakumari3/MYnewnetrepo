create database ProductsDB_API
USE ProductsDB_API

	
create table products (
	pId int primary key,
	pName varchar(20),
	pPrice float,
	pAvailableQty int, 
	pDescription varchar(30), 
	pIsInStock bit
);

create table customers (
	cId int primary key,
	cName varchar(20),
	cAddress varchar(30),
	cWalletBalance float
);

create table orders (
	oId int primary key,
	cId int foreign key references customers(cId),
	pId int foreign key references products(pId),
	oStatus varchar(50),
	
	constraint chk_oStatus check(oStatus in ('Delivered', 'In Progress', 'Cancelled', 'Failed'))
);

insert into products values (1, 'Maggi', 15, 100, 'Noodles', 1);
insert into products values (2, 'HAPPYHAPPY', 5, 100, 'Biscuit', 1);
insert into products values (3, 'Nescafe', 1000, 10, 'Coffee', 0);
insert into products values (4, 'GHARI', 115, 50, 'Detergent', 1);
insert into products values (5, 'Dove', 10, 103, 'Soap', 1);
insert into products values (6, 'Neer', 10, 0, 'Water', 0);
insert into products values (7, 'Realme95G', 100000, 100, 'Mobile', 1);

--insert into customers values (cId, cName, Address, WalletBalance);
insert into customers values (100, 'Mr. Ashu', 'Brazil', 1000.50);
insert into customers values (101, 'Nanny', 'India', 400.80);
insert into customers values (102, 'Salman', 'Kashmir', 500.00);
insert into customers values (103, 'ANNU', 'Paris', 2202.50);
insert into customers values (104, 'Chitan', 'Tokyo', 1025.50);

insert into orders values (1000,	100, 7, 'Delivered');
insert into orders values (1001,	101, 1, 'In Progress');
insert into orders values (1002,	103, 6, 'Cancelled');


