/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.1.54-community : Database - employee_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `employee_db`;

/*Table structure for table `employee_dtl` */

DROP TABLE IF EXISTS `employee_dtl`;

CREATE TABLE `employee_dtl` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(60) DEFAULT NULL,
  `company` VARCHAR(60) DEFAULT NULL,
  `address` VARCHAR(100) DEFAULT NULL,
  `city` VARCHAR(60) DEFAULT NULL,
  `state` INT(11) DEFAULT NULL,
  `country` INT(11) DEFAULT NULL,
  `exp` INT(11) DEFAULT NULL,
  `salary` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `employee_dtl` */

INSERT  INTO `employee_dtl`(`id`,`name`,`company`,`address`,`city`,`state`,`country`,`exp`,`salary`) VALUES 
(1,'sam','tcs',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- 1.create a data base by name employee_db
CREATE DATABASE employee_db_test5;
-- 2. create table by name employee_dtl with the following columns 
USE employee_db_test5;
CREATE TABLE employee_dtl(
id INT NOT NULL PRIMARY KEY,
ename VARCHAR(60),
company VARCHAR(60),
expr INT,
salary INT);
-- to view the table structure
DESCRIBE employee_dtl;
-- 3. WAQ to add the specified columns at the specific positions
/*a. address--varchar(100) to placed after company
b.city--varchar(60) after address
c.state--varchar(60) after city
d.country--varchar (60) after state */
ALTER TABLE employee_dtl
ADD COLUMN address VARCHAR(100) AFTER company,
ADD COLUMN city VARCHAR(60) AFTER address,
ADD COLUMN state VARCHAR(60) AFTER city,
ADD COLUMN country VARCHAR(60) AFTER state;
DESCRIBE employee_dtl;
-- 4.WAQ to change the name all the columns by preciding it with emp_
ALTER TABLE employee_dtl
CHANGE COLUMN id emp_id INT NOT NULL,
CHANGE COLUMN ename emp_name VARCHAR(60),
CHANGE COLUMN company emp_company VARCHAR(60) ,
CHANGE COLUMN address emp_address VARCHAR(100),
CHANGE COLUMN city emp_city VARCHAR(60),
CHANGE COLUMN state emp_state VARCHAR(60),
CHANGE COLUMN country emp_country VARCHAR(60),
CHANGE COLUMN expr emp_exp INT,
CHANGE COLUMN salary emp_salary INT;
DESCRIBE employee_dtl;
-- 5.WAQ to modify the employee_dtl table by moving the exp and salary columns after company
ALTER TABLE employee_dtl
MODIFY COLUMN emp_exp INT AFTER emp_company,
MODIFY COLUMN emp_salary INT AFTER emp_company;
DESCRIBE employee_dtl;
-- 6.WAQ to change the size of all the variable charachters to 150 and also make it as not nullable.
-- in addition to this make all the non variable character as not nullable.
ALTER TABLE employee_dtl
MODIFY COLUMN emp_id INT NOT NULL,
MODIFY COLUMN emp_name VARCHAR(150) NOT NULL,
MODIFY COLUMN emp_company VARCHAR(150)NOT NULL,
MODIFY COLUMN emp_salary INT NOT NULL,
MODIFY COLUMN emp_exp INT NOT NULL,
MODIFY COLUMN emp_address VARCHAR(150) NOT NULL,
MODIFY COLUMN emp_city VARCHAR(150) ,
MODIFY COLUMN emp_state VARCHAR(500),
MODIFY COLUMN emp_country VARCHAR(150);
DESCRIBE employee_dtl;


-- 7.WAQ to insert  minimum of 8 records into a employee table where 4 records will contain which are not in order 
-- 4 will contain in order sequence
INSERT INTO employee_dtl(emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state,emp_country)
VALUES(1,'SAMRUDDHI','TCS',50000,4,'#6thcrossramnagar','MUMBAI',' maharashtra','INDIA');
INSERT INTO employee_dtl(emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state,emp_country)
VALUES(2,'SRUSHTI','WIPRO',65000,2,'jalnagar','DAVANGERE','KARNATAKA' , 'INDIA');
INSERT INTO employee_dtl(emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state,emp_country)
VALUES(3,'VACHANA','TECHM',80000,3,'ASHRAM ROAD','BANGALORE',' CHENNAI' , 'INDIA');
INSERT INTO employee_dtl(emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state,emp_country)
VALUES(4,'SANJANA','TCS',70000,10,'#2NDcrossmaruthinagar','Koppalringroad','  uttarpradesh' , 'INDIA');
INSERT INTO employee_dtl(emp_country,emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state)
VALUES('INDIA',5,'SHAMBHAVI','TCS',20000,5,'Gevarchandnagar','LAHORE',' PUNJAB' );
INSERT INTO employee_dtl(emp_country,emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state)
VALUES('INDIA',6,'SOUBHAGYA','INFOSYS',75000,8,'Tresurycolony','SOLAPUR',' KARNATAKA');
INSERT INTO employee_dtl(emp_country,emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state,emp_country)
VALUES( 'INDIA',7,'SUMAIYA','TCS',55000,3,'Bijapurringroad','PANAJI',' GOA');
INSERT INTO employee_dtl(emp_country,emp_id,emp_name,emp_company,emp_salary,emp_exp,emp_address,emp_city,emp_state)
VALUES('INDIA',8,' KAVANA','INFOSYS ',77000,4,'sainagar','MUMBAI',' MAHARASHTRA' , 'INDIA');

-- 8.WAQ to fetch all the details of an employee from employee_dtl
SELECT *FROM employee_dtl;

-- 9.WAQ to diplay the name , exp,salary and city of the employees who work for infosys or wipro
SELECT emp_name,emp_exp,emp_salary,emp_city FROM employee_dtl WHERE emp_company IN('INFOSYS','WIPRO');

-- 10.WAQ to display details of an employee who has a salary between 50k to 80k.
SELECT *FROM employee_dtl WHERE emp_salary>50000 AND emp_salary<80000 ;

-- 11.WAQ to display details of an employee who is not from bangalore but works for tcs
SELECT *FROM employee_dtl WHERE emp_city!='BANGALORE' AND emp_company='TCS';

-- 12.WAQ to display details of an employee to find the total amount of salaries of all the employees from employee_dtl
SELECT SUM(emp_salary) FROM employee_dtl;

-- 13 WAQ to find the highest exp amongist all the employees
SELECT MAX(emp_exp) FROM employee_dtl;

-- 14.WAQ to find the details of all the employees who name starts from S,
-- and the city in which the employee stays ends with E
SELECT *FROM employee_dtl WHERE emp_name LIKE 'S%' AND emp_city LIKE '%E';

-- 15.WAQ to find the avg salary of the employee who works for infosys
SELECT AVG(emp_salary) FROM employee_dtl WHERE emp_company='INFOSYS';

-- 16. WAQ to find the total salaries of all the employees who works for techM and TCS.
SELECT emp_company,SUM(emp_salary) FROM employee_dtl WHERE emp_company IN ('TECHM','TCS') GROUP BY emp_company;

-- 17.WAQ to find the details of all the employees who resides either in Mumbai or Bangalore with
-- a salary more than 70k with atleast 3 yr exp
SELECT*FROM employee_dtl WHERE (emp_city='MUMBAI'OR emp_city='BANGALORE') AND emp_salary>70000 AND emp_exp>=3;

-- 18.WAQ to display the company name and total number of employees in that company. 
SELECT emp_company,COUNT(*) FROM employee_dtl GROUP BY (emp_company);

-- 19. WAQ to find the details of the employee who has the highest salary
SELECT*FROM employee_dtl
WHERE emp_salary=(SELECT MAX(emp_salary)FROM employee_dtl);

-- 20. WAQ to find the second highest salary of an employee from an employee tbl
SELECT MAX(emp_salary) FROM employee_dtl 
WHERE emp_salary <(SELECT MAX(emp_salary) FROM employee_dtl);

-- 21. WAQ to find the emplyee detail whose second highest salary of an employee from an employee tbl

SELECT MAX(emp_salary) FROM employee_dtl 
WHERE emp_salary =(SELECT MAX(emp_salary) FROM employee_dtl
WHERE emp_salary<(SELECT MAX(emp_salary) FROM employee_dtl));

SELECT *FROM employee_dtl
WHERE emp_salary <(SELECT MAX(emp_salary) FROM employee_dtl)
ORDER BY emp_salary DESC
LIMIT 1;

-- 22.WAQ to print the detail of the emplyee who has 4th lowest salary
SELECT emp_salary FROM employee_dtl
ORDER BY emp_salary;

SELECT MIN(emp_salary) FROM employee_dtl 
WHERE emp_salary =(SELECT MIN(emp_salary) FROM employee_dtl
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl))));
-- or we can also write it as
SELECT MIN(emp_salary) FROM employee_dtl 
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl
WHERE emp_salary>(SELECT MIN(emp_salary) FROM employee_dtl)));

-- 23. WAQ to print the details of the employee who has maxmimum exp or minimum exp 
SELECT *FROM employee_dtl
WHERE emp_exp=(SELECT MAX(emp_exp)FROM employee_dtl)
OR emp_exp=(SELECT MIN(emp_exp)FROM employee_dtl);

-- 24. WAQ to an avg salary given by each company .dispy the details in desending order of company name 
SELECT emp_company,AVG(emp_salary) AS average_salary FROM employee_dtl 
GROUP BY (emp_company)
ORDER BY emp_salary DESC;

-- 25. WAQ to print the total number of employee from each state .display the details in which the state which 
-- contains maxmimum number employee in first position
SELECT emp_state,COUNT(*)AS emp_count FROM employee_dtl
GROUP BY (emp_state)
ORDER BY  emp_count  DESC;

-- 26.WAQ to display the deatils of all the employee who works for tcs or infosys
-- but is not residng in bangolre or mumbai
SELECT *FROM employee_dtl 
WHERE emp_company IN('TCS','INFOSYS') AND emp_city NOT IN ('MUMBAI','BANGALORE');

-- 27. WAQ to update the salary of all the employees by 3k rs 
SELECT *FROM employee_dtl 
UPDATE employee_dtl SET  emp_salary=emp_salary+3000;

-- 28. write a query to update the exp of all the employees by 1yr for those who are working with TCS
SELECT *FROM employee_dtl
UPDATE employee_dtl SET emp_exp=emp_exp+1 WHERE emp_company='TCS';

-- 29.WAQ to update the salary of an emp,oyee by 30%  (current salary +current salary )0.3 and 
-- the employee is consider to be employee who has maximum exp
SELECT *FROM employee_dtl 
UPDATE employee_dtl SET emp_salary=emp_salary+(emp_salary*0.3) WHERE emp_exp=(SELECT MAX(emp_exp));

-- 30.WAQ to dispaly the state in which employees are present 
SELECT DISTINCT emp_state FROM employee_dtl;

-- 31. Write a procedur to fetch the structural copy of current table alongs with its data



-- 2.WAQ to display the total couunt of employee in each company who have salary more than 50k
SELECT emp_company,COUNT(*)AS emp_count,emp_salary FROM employee_dtl 
GROUP BY emp_company 
HAVING emp_salary>50000;
