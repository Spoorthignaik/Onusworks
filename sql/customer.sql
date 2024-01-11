CREATE DATABASE customer;

 -- SHOW databases;
use school;

CREATE TABLE customer(id int, name_of_customer varchar(30),salary bigint, company_name varchar(30));

INSERT INTO customer VALUES(1,'spoorthi',1000,'onusworks');
INSERT INTO customer VALUES(2,'sahana',1500,'SAP');
INSERT INTO customer VALUES(3,'shravya',2000,'Samsung');
INSERT INTO customer VALUES(4,'shambhavi',2500,'IBM');
INSERT INTO customer VALUES(5,'spoorthi',1000,'microsoft');
INSERT INTO customer VALUES(6,'spandana',2300,'IBM');
INSERT INTO customer VALUES(7,'akshatha',3200,'Navi');
INSERT INTO customer VALUES(11,'kartika',9999,'ITC');
INSERT INTO customer VALUES(12,'Devika',1,'JP Morgan');

INSERT INTO customer(id,name_of_customer,salary,company_name)
                    VALUES(8,'Bindu',4999,'oracle'),
                    (9,'Jeevika',3999,'wipro'),
                    (10,'Deepa',2999,'Infosys');

SELECT count (name_of_customer), salary FROM customer GROUP BY salary;  
SELECT * FROM customer;
SELECT DISTINCT company_name FROM customer;

SELECT DISTINCT name_of_customer,salary FROM customer;

SELECT count(DISTINCT company_name)FROM customer;
SELECT * FROM customer WHERE company_name='Samsung';
SELECT * FROM customer WHERE salary>1500;

-- ORDER BY
SELECT * FROM customer ORDER BY salary;
SELECT * FROM customer ORDER BY company_name;

-- ORDER BY USING DESC
SELECT * FROM customer ORDER BY company_name DESC;

-- ORDER BY USING ASC AND DESC
SELECT * FROM CUSTOMER ORDER BY company_name ASC,name_of_customer DESC;

-- AND OPERATOR
SELECT * FROM customer WHERE name_of_customer='spoorthi' AND company_name LIKE 'o%';

-- AND and OR operator
SELECT * FROM customer WHERE name_of_customer='spoorthi' AND (company_name LIKE 'o%' OR company_name LIKE 'i%');

-- OR OPERATOR
SELECT * FROM customer WHERE name_of_customer='spoorthi' OR name_of_customer='ramya';
SELECT * FROM customer WHERE id = 1 OR name_of_customer LIKE 'G%' OR company_name = 'IBM';

-- NOT
SELECT * FROM customer WHERE NOT company_name ='IBM';

-- NOT LIKE
SELECT * FROM customer WHERE name_of_customer NOT LIKE's%';

-- NOT BETWEEN
SELECT * FROM customer WHERE id NOT BETWEEN 5 AND 7 ;

-- NOT IN 
SELECT * FROM customer WHERE id NOT IN(1,2,3,4);

-- NOT GREATER THAN
SELECT * FROM customer WHERE Not id >3;

-- NOT LESSER THAN
SELECT * FROM customer WHERE NOT id < 5;

SELECT * FROM customer;
-- ----------------------------------------------------------------
-- UPDATE 
-- ----------------------------------------------------------------
UPDATE customer SET name_of_customer='Gagana' WHERE id=10;
UPDATE Customer SET name_of_customer = 'Rashmi'WHERE company_name  = 'Oracle';
UPDATE customer SET name_of_customer='Nayana' WHERE id=10;

-- -------------------------------------------------------------------
-- DELETE 
-- ------------------------------------------------------------------
DELETE FROM customer WHERE id=10;

-- DELETE ALL RECORDS
DELETE FROM customer;

-- -------------------------------------------------------------------
-- AGGREGATES FUNCTION
-- ------------------------------------------------------------------
-- MIN AND MAX 
SELECT MIN(salary)From customer;
SELECT MIN(salary)AS SmallestPrice FROM customer;

SELECT MAX(salary)FROM customer;

-- COUNT
SELECT COUNT(*) FROM customer;
SELECT COUNT(id) FROM customer WHERE salary>2000;

-- SUM
SELECT SUM(salary) FROM customer;
SELECT SUM(salary*20) FROM customer;
SELECT SUM(salary) FROM customer WHERE id>7;
SELECT SUM(salary) FROM customer WHERE salary >1000;
-- AVG
SELECT AVG(salary) FROM customer;
-- --------------------------------------------------------------------
-- LIKE OPERATOR
-- --------------------------------------------------------------------
-- Starts with R
SELECT * FROM customer WHERE name_of_customer LIKE 'R%';
-- Customer Contains A 
SELECT * FROM customer WHERE name_of_customer LIKE '%a%';
-- Ends with I
SELECT * FROM customer WHERE name_of_customer LIKE '%i';
-- Starts with 's' and Ends with 'i'
SELECT * FROM customer WHERE name_of_customer LIKE 's%i';
-- Returns the second letter starting from P
SELECT * FROM customer WHERE name_of_customer LIKE '_P%';
-- Returns all the records second last letter ends  with 'H'
SELECT * FROM customer WHERE name_of_customer Like '%h_';
-- ------------------------------------------------------------------------

-- BWTWEEN AND IN
SELECT * FROM customer WHERE salary BETWEEN 1000 AND 5000 AND id IN (1,2,3);

SELECT name_of_customer AS customerName FROM customer;

SELECT * FROM customer;

-- --------------------------------------------------------------
-- 	ALTER 
-- --------------------------------------------------------------
-- TO ADD COLUMN
ALTER TABLE customer ADD country varchar(30);
ALTER TABLE customer ADD pincode bigint;
-- TO DROP COLUMN
ALTER TABLE customer DROP pincode;
-- TO RENAME COLUMN NAME 
ALTER TABLE customer RENAME COLUMN name_of_customer TO CustomerName;
-- TO MODIFY THE DATA TYPE
 ALTER TABLE customer MODIFY country varchar(45);
 
 

