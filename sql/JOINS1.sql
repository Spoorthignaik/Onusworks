CREATE DATABASE products;
show databases;
use school; 

CREATE TABLE products(productId int , productName varchar(30) , CategoryId int , Price bigint);
INSERT INTO products VALUES(1,'Cement',2,1299); 
INSERT INTO products VALUES (2,'Coco-cola',3,477);
INSERT INTO products VALUES(3,'Jaggery',6,999);
INSERT INTO products VALUES(4,'Sugar',4,786);
INSERT INTO products VALUES(5,'Chocolates',4,786);
INSERT INTO products VALUES(6,'Sweets',4,786);

CREATE TABLE category(CategoryID int, CategoryName varchar(30),Description_category varchar(45));

INSERT INTO category VALUES(1,'Beverages','soft-drinks,cold-drinks');
INSERT INTO category VALUES(2,'Condiments','chocolates, candy');
INSERT INTO category VALUES(3,'Sweets','laadu,jamun');
INSERT INTO category VALUES(4,'Clothes','jeans,tshirt');
INSERT INTO category VALUES(5,'WaterBottle','steel,plastic');

SELECT productId, productName ,CategoryName FROM products INNER JOIN category ON products.CategoryId=category.CategoryId;

-- INNER JOIN (BY DEFAULT JOIN BECOMES INNER JOIN
-- INNER JOIN RETURNS SIMILAR TYPE OF DATA
-- OR RETURNS THE MATCHING VALUE FROM THE BOTH THE TABLE
SELECT products.productId, products.productName, category.CategoryName
FROM products
JOIN category ON products.CategoryID = category.CategoryID;

-- RIGHT JOIN 
-- RETURNS ALL THE RECORDS FROM THE RIGHT TABLE , MATCHING RECORDS FROM THE LEFT TABLE
-- THE RESULT IS ZERO RECORD FROM THE LEFT ZIDE , IF THERE IS NO MATCH products
SELECT products.productId,products.productName ,category.Description_category
FROM products
RIGHT JOIN category ON products.productId= category.CategoryId;

SELECT products.productId,category.Description_category
FROM products
RIGHT JOIN category ON products.productId= category.CategoryId;

-- LEFT JOIN 
-- RETURNS ALL THE RECORDS FROM THE LEFT TABLE AND MATCHING RECORDS FROM THE RIGHT TABLE
-- IF RESULTS IS 0 RECORDS FROM THE RIGHT SIDE , IF THERE IS NO MATCH
SELECT products.productId,products.productName,category.Description_category
FROM products
LEFT JOIN category ON products.productId=category.CategoryId;
