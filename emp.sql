`employee_db_test5`-- 1.create a database by name student_db
CREATE DATABASE student_db_work;
 -- 2.create a table by name student_tbl with the following columns
/*
->sid integer
-->sname varchar(100)
-->fname varchar(100)
-->mname varchar(100)
-->college varchar(100)
-->phone bigint
-->email varchar(100)
*/
USE student_db;
CREATE TABLE student_tbl(
sid INT NOT NULL PRIMARY KEY,
sname VARCHAR(100),
fname VARCHAR(100),
mname VARCHAR(100),
college VARCHAR(100),
phone BIGINT,
email VARCHAR(100));

-- to view the table structure
DESCRIBE student_tbl;

-- 3.write a queryto add new coulmn to the existing student _tbl table. The coulmns are;
/* adressline varchar(100)
   city varchar{100)
   state varchar(100)
   country varchhar(100)
*/
ALTER TABLE student_tbl
ADD COLUMN adressline VARCHAR(100);
ALTER TABLE student_tbl
ADD COLUMN city VARCHAR(100);  
ALTER TABLE student_tbl
ADD COLUMN state VARCHAR(100);
ALTER TABLE student_tbl
ADD COLUMN country VARCHAR(100);

-- 4.Write a query to add new coulumn to eexisting studnet _tbl table.The coulmn are:
/*
java_marks int after the coulmn college 
sql_marks int after the column java_marks
front_end_marks int after the column sql_marks
*/ 

ALTER TABLE student_tbl
ADD COLUMN java_marks INT AFTER college,
ADD COLUMN sql_marks INT AFTER java_marks,
ADD COLUMN front_end_marks INT AFTER sql_marks;

-- 5.write a query to change the size of all the columns that conatins variable character to 200 
ALTER TABLE student_tbl
MODIFY COLUMN sname VARCHAR(200),
MODIFY COLUMN fname VARCHAR(200),
MODIFY COLUMN mname VARCHAR(200),
MODIFY COLUMN college VARCHAR(200),
MODIFY COLUMN adressline VARCHAR(200),
MODIFY COLUMN city VARCHAR(200),
MODIFY COLUMN state VARCHAR(200),
MODIFY COLUMN country VARCHAR(200);
DESCRIBE student_tbl;

-- 6.Write a query to make the following coulmns as not nullable
/*
sname,college,adressline,city,state,country,java_marks,sql_marks,front_end_marks
*/
ALTER TABLE student_tbl
MODIFY COLUMN sname VARCHAR(200) NOT NULL,
MODIFY COLUMN college VARCHAR(200)NOT NULL,
MODIFY COLUMN adressline VARCHAR(200)NOT NULL,
MODIFY COLUMN city VARCHAR(200) NOT NULL,
MODIFY COLUMN state VARCHAR(200)NOT NULL,
MODIFY COLUMN country VARCHAR(200)NOT NULL,
MODIFY COLUMN java_marks INT NOT NULL,
MODIFY COLUMN sql_marks INT NOT NULL,
MODIFY COLUMN front_end_marks INT NOT NULL;

-- 7. WQA to change the name of all the columns by preciding the coulmn with stud_(note :exclude java_marks ,sql_marks,&front_end_marks)
ALTER TABLE student_tbl
CHANGE COLUMN sname stud_sname VARCHAR(200) NOT NULL,
CHANGE COLUMN fname stud_fname VARCHAR(200) NOT NULL,
CHANGE COLUMN mname stud_mname VARCHAR(200) NOT NULL,
CHANGE COLUMN college stud_college VARCHAR(200) NOT NULL,
CHANGE COLUMN adressline stud_adressline VARCHAR(200) NOT NULL,
CHANGE COLUMN city stud_city VARCHAR(200) NOT NULL,
CHANGE COLUMN phone stud_phone BIGINT NOT NULL,
CHANGE COLUMN email stud_email VARCHAR(200) NOT NULL,
CHANGE COLUMN state stud_state VARCHAR(200) NOT NULL,
CHANGE COLUMN country stud_country VARCHAR(200) NOT NULL;

-- 8WAQ to insert the following data into the student table 
-- 9.Write a query to fetch the detail of all the student from student_tbl table
SELECT *FROM student_tbl;