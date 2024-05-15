Create database insuranceDB1_SP_LINQ
use insuranceDB1_SP_LINQ (1,'Life Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2)),


CREATE TABLE policeDetails (
 PoliceNo INT PRIMARY KEY,
 policeName VARCHAR(50),
 policyPremium Decimal(10,2),
 CONSTRAINT CHK_PolicyPremium CHECK (policyPremium BETWEEN 5000 AND 50000)
 );
 


 INSERT INTO policeDetails (PoliceNo, policeName, policyPremium) VALUES
 (1,'Life Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2)),
 (2,'Health Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2)),
  (3,'Car Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2)),
   (4,'Home Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2)),

    (5,'Travel Insurance',ROUND(RAND() * (50000 -5000) + 5000, 2));


	select* from policeDetails


create procedure proc_AllpolicyDetails
as
begin
	select * from policeDetails
end

exec proc_AllpolicyDetails


create procedure proc_policeDetails(@pNo int)
as
begin
	select PoliceName from policeDetails where policeNo = @pNo
end

exec proc_policeDetails 5



create procedure proc_policyName(@pName VARCHAR(50))
as
begin
	select *from policeDetails where policeName = @pName
end

exec proc_policyName 'Travel Insurance'

--e.SP to insert a new policy
create procedure proc_Newpolicy(@pNO int, @PName VARCHAR(50),@policyPremium Decimal(10,2))
as
begin
	insert into policeDetails values(@pNO,@PName,@policyPremium)
end

exec proc_Newpolicy 10,'Bike Insurance', 8879


