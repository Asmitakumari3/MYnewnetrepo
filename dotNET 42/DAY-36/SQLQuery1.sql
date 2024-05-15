create database insuranceAzureDB

CREATE TABLE customerPolicies (
    cId  INT,
    pId INT,
    cName VARCHAR(255),
    insuranceAmt DECIMAL(10, 2),
    insuranceStatus VARCHAR(60),
    CONSTRAINT check_status CHECK (insuranceStatus IN ('Active', 'Lapsed', 'Closed'))
);
 
INSERT INTO customerPolicies (cId, pId, cName, insuranceAmt, insuranceStatus) 
VALUES 
    (1, 101, 'John Doe', 5000.00, 'Active'),
    (2, 102, 'Jane Smith', 7500.00, 'Lapsed'),
    (3, 103, 'Alice Johnson', 10000.00, 'Active'),
    (4, 104, 'Bob Brown', 3000.00, 'Closed'),
    (5, 105, 'Emma Davis', 6000.00, 'Active');
	--ALTER TABLE customerPolicies.cId ADD CONSTRAINT PK__CID_


	drop table customerPolicies