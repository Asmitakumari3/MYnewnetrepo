create database flightDB1_SP;
use flightDB1_SP;



create table tabl_flightInfo (
	flightNo int primary key,
	flightSourceCity varchar(20),
	flightDestinationCity varchar(20),
	flightStatus varchar(20),
	flightFare float,

	constraint chk_flightStatus check(flightStatus in ('Scheduled', 'Completed', 'In progress', 'Cancelled'))
);

insert into tabl_flightInfo values(100, 'Kolkata', 'Chennai', 'Scheduled', 1236.79);
insert into tabl_flightInfo values(101, 'Kochi', 'Bangalore', 'Scheduled', 1099.01);
insert into tabl_flightInfo values(102, 'Mumbai', 'Delhi', 'Completed', 996.24);
insert into tabl_flightInfo values(103, 'Bangalore', 'Delhi', 'In progress', 1976.12);
insert into tabl_flightInfo values(104, 'Chennai', 'Kochi', 'Cancelled', 1035.06);

create procedure sel_all_flights as
begin
	select * from tabl_flightInfo;
end
exec sel_all_flights


create procedure sel_flight(@idNo int) as
begin
	select * from tabl_flightInfo where flightNo=@idNo;
end

exec sel_flight 100

create procedure proc_flights_src_dest(@src varchar(20), @dest varchar(20)) as
begin
	select * from tabl_flightInfo where flightSourceCity=@src and flightDestinationCity=@dest;
end
exec proc_flights_src_dest Kolkata, Chennai

create procedure proc_add_flight(@idNo int, @src varchar(20), @dest varchar(20), @status varchar(20), @fare float) as
begin
	insert into tabl_flightInfo values(@idNo, @src, @dest, @status, @fare);
end

exec proc_add_flight 105,'kolkata','banglore', 'In progress',5000.0

create procedure proc_del_flight(@idNo int) as
begin
	delete from tabl_flightInfo where flightNo=@idNo;
end
exec proc_del_flight 100

create procedure proc_update_flightStatus(@idNo int, @status varchar(20)) as
begin
	update tabl_flightInfo set flightStatus=@status where flightNo=@idNo;
end

exec proc_update_flightStatus 102,'Scheduled'