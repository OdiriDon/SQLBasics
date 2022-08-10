--INTRO TO SQL
--Create Table
--This would help you create a table within your database
create table student(
Student_id INT PRIMARY KEY,
Name VARCHAR(20),
Major VARCHAR(20)
);

--Adding another column to the table 
--With this query below you can add and delete a column or row from a table
 ALTER TABLE student ADD Gpa DECIMAL(3, 2);

 AlTER TABLE student DROP COLUMN Gpa;

 Delete from student 
 where student_id = 6;

 --Inserting into table
 INSERT INTO student VALUES
 (1, 'John', 'Biology', 3.89),
 (2, 'David', 'Chemistry', 3.68),
 (3, 'Chloe', 'Physics', 3.21),
 (4, 'James', 'Mathematics', 4.02),
 (5, 'Emily', 'English', 4.23);

 --Display your table
 --It displays all that you inserted into your table
 SELECT *
 FROM student;

 --Distinct keyword
 SELECT DISTINCT
 major from student;

 --Limit keyword
 --For those using Postgre, sqllite, oracle and the rest make use of this
 Select name, major, student_id, Gpa
 from student 
 LIMIT 2;

 --Limit keyword for sql server
 Select Top 2 name, major, student_id, Gpa
 from student;

 select Top 2 *
 from student;

 --Where statement
 Select *
 FROM student 
 where major = 'Biology';

 select *
 from student 
 where student_id != 5;

 select *
 from student 
 where student_id <> 5;

 --ORDER By statement
 select *
 FROM student
 ORDER BY 'Gpa';

 select *
 FROM student
 ORDER BY 'Gpa' ASC;

 select *
 FROM student
 ORDER BY 'Gpa' DESC;

 -- Between statement
 select *
 FROM student
 WHERE 'Gpa' BETWEEN '3.20' AND '4.58';

 --UPDATE statement
 UPDATE student 
 SET Major = 'Bio'
 WHERE major = 'Biology';

 select *
 FROM student;

--SQL OPERATORS
= Equal
!= Not Equal
<> Not Equal
> Greater Than
< Lesser Than
>= Greater Than Or Equal To
<= Lesser Than Or Equal To

--Logical Operators
AND
Or
IN
NOT
BETWEEN