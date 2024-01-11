CREATE DATABASE product;
show databases;
use school; 

CREATE TABLE product(productId int , productName varchar(30) , CategoryId int , Price bigint);
INSERT INTO product VALUES(1,'Cement',2,1299); 
INSERT INTO product VALUES (2,'Coco-cola',3,477);
INSERT INTO product VALUES(3,'Jaggery',6,999);
INSERT INTO product VALUES(4,'Sugar',4,786);

CREATE TABLE categories(CategoryID int, CategoryName varchar(30),Description varchar(45));

INSERT INTO categories VALUES(1,'Beverages','soft-drinks,cold-drinks');
INSERT INTO categories VALUES(2,'Condiments','chocolates, candy');
INSERT INTO categories VALUES(3,'Sweets','laadu,jamun');

SELECT productId, productName ,CategoryName FROM product INNER JOIN categories ON product.CategoryId=categories.CategoryId;

 SELECT product.productId, product.productName, categories.CategoryName
FROM product
JOIN categories ON product.CategoryID = categories.CategoryID;

SELECT product.productId,product.productName ,catagories.Description
FROM product
RIGHT JOIN categories ON product.productId= categories.CategoryId;