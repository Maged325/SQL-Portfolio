-- CREATE DATABASE IF NOT EXISTS employee;

/*create table Client(
client_id int,
client_name varchar(50),
branch_id int
)*/
/*INSERT INTO Client values
(400,'Dunmore Highschool',2),
(401,'Lackawana Country',2),
(402,'FedEx',3),
(403,'John Daly Law, LLC',3),
(404,'Scranton Whitepages',2),
(405,'Times Newspaper',3),
(406,'FedEx',2)*/

/*CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(50),
    supply_type VARCHAR(50)
)*/
/*INSERT INTO branch_supplier values
(2,'Hammer Mill','Paper'),
(2,'Uni-ball ','Writing Utensils'),
(3,'Patriot Paper ','Paper'),
(2,'J.T. Forms & Labels','Custom Forms'),
(3,'Uni-ball','Writing Utensils'),
(3,'Hammer Mill','Paper'),
(3,'Stamford Lables C','Custom Forms') */

/*CREATE TABLE Branch (
    branch_id INT,
    branch_name VARCHAR(50),
    mgr_id INT,
    mgr_start_date DATE
)*/
/*insert into Branch values	
(1,'Corporate',100,'2006-02-09'),
(2,'Scranton',102,'1992-04-06'),
(3,'Stamford',106,'1998-02-13')*/

/*create table Works_with (
emp_id int,
client_id int,
total_sales int)*/
/*insert into Works_with values
(105,400,55000),
(102,401,267000),
(108,402,22500),
(107,403,5000),
(108,403,12000),
(105,404,33000),
(107,405,26000),
(102,406,15000),
(105,406,130000)*/
-- ---------------------------------------------------------------------------------------
/* MIN, MAX, SUM, ROUND(AVG())*/
SELECT * FROM Works_With;
SELECT MIN(total_sales)AS min, MAX(total_sales)AS max, SUM(total_sales)AS total_sum, 
ROUND(AVG(total_sales),2) AS Average
FROM works_with;
-- ---------------------------------------------------------------------------------------
/* COUNT ALL, DISTINCT, COUNT DISTINCT, DISTINCT*/      
SELECT COUNT(*) FROM works_with;
SELECT DISTINCT (client_name)FROM client;
SELECT COUNT(DISTINCT client_name) FROM client;
SELECT DISTINCT* FROM client;
-- ---------------------------------------------------------------------------------------
/* LOWER, UPPER, LENGTH,  CONCAT */
SELECT LOWER(supplier_name),UPPER(supplier_name), LENGTH(supplier_name) FROM branch_supplier;
SELECT CONCAT(supplier_name,' ',supply_type) AS Name_AND_Type FROM branch_supplier;
-- ---------------------------------------------------------------------------------------
/* WHERE statements*/
SELECT * FROM branch_supplier
WHERE supplier_name REGEXP '^uni';     
SELECT * FROM branch_supplier
WHERE supplier_name REGEXP 'ill$';
SELECT * FROM branch_supplier
WHERE supplier_name REGEXP 'ball';   
SELECT * FROM branch_supplier
WHERE supplier_name REGEXP 'ord|^uni|ll$';  

SELECT * FROM branch_supplier
WHERE supplier_name LIKE '%ford%';   
SELECT * FROM branch_supplier
WHERE supplier_name LIKE 'sta%' ;
SELECT * FROM branch_supplier    
WHERE supplier_name LIKE '%ill';
-- ---------------------------------------------------------------------------------------
/* LIMIT & ORDER BY 4 DESC (4TH COLUMN, DESCENDING ORDER),ASC by default*/
SELECT *FROM client
LIMIT 3,5;
SELECT * FROM works_with
ORDER BY 3 DESC;
-- ---------------------------------------------------------------------------------------
/* AND, OR, BETWEEN, NOT EQUAL*/
SELECT * FROM works_with
WHERE client_id=403 AND total_sales=5000; 
SELECT * FROM works_with
WHERE client_id=403 OR total_sales=5000; 
SELECT * FROM client
WHERE client_name <> 'Stamford';
SELECT * FROM works_with
WHERE total_sales BETWEEN 10000 AND 20000;
-- ---------------------------------------------------------------------------------------
/*UPDATE, INSERT, DELETE*/
UPDATE works_with
SET emp_id=110, client_id=408,total_sales=35000
WHERE emp_id=104;

INSERT INTO works_with(emp_id, client_id,total_sales)
VALUES(104,404,33000);

DELETE FROM works_with
WHERE emp_id=110;
SELECT*FROM works_with;
-- ---------------------------------------------------------------------------------------
/* ADD/ DELETE,RENAME column from table*/
ALTER TABLE works_with ADD GPA DECIMAL(3,2);
SELECT * FROM works_with;
ALTER TABLE works_with RENAME COLUMN `GPA` TO annual_salary;
SELECT * FROM works_with;
ALTER TABLE works_with DROP COLUMN annual_salary;
SELECT * FROM works_with;
-- ---------------------------------------------------------------------------------------
/* TO EXTRACT YEAR, MONTH AND DAY */
CREATE TABLE date_example( birthdate DATE);
INSERT INTO date_example VALUES
('2024-05-07'),('2023-04-08'),('2022-01-06'),('2024-02-02');
SELECT * FROM date_example;

SELECT EXTRACT(YEAR FROM birthdate) AS year, EXTRACT(MONTH FROM birthdate) AS month,
EXTRACT(DAY FROM birthdate) AS Day
 FROM date_example;
-- ---------------------------------------------------------------------------------------
/* LENGTH & TRIM */
SELECT LENGTH('     HELLO     ') AS hello_with_spaces;                            
SELECT LENGTH('HELLO') AS hello_no_spaces;
SELECT LENGTH(TRIM('     HELLO     ')) AS hello_trimmed;	
-- ---------------------------------------------------------------------------------------
 /* To change Table Name*/
ALTER TABLE  date_example
RENAME TO datee_example;
SELECT*FROM datee_example;
-- ---------------------------------------------------------------------------------------
/*Join two tables*/
SELECT ww.total_sales, c.client_name FROM Works_With AS WW
 JOIN client AS c 
 ON ww.client_id = c.client_id;
-- ---------------------------------------------------------------------------------------
/*Using CASE Statements*/
SELECT total_sales, 
(CASE
    WHEN total_sales BETWEEN 5000 AND 15000 THEN 'Junior Salary'
    WHEN total_sales BETWEEN 20000 AND 55000 THEN 'Senior Salary'
    WHEN total_sales >55000 THEN 'CEO Salary'
    ELSE 'Contact HR'
END) AS Sales_Description
FROM Works_With;
-- ---------------------------------------------------------------------------------------




		



