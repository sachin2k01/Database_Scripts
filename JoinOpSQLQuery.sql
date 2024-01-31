CREATE DATABASE JoinOp

use JoinOp

CREATE TABLE Student(
StID INT PRIMARY KEY,
SName varchar(50),
Smail varchar(50),
CourseId int
)

SELECT * FROM Student

INSERT INTO Student VALUES(101,'Sachin','sachin@gmail.com',100)
INSERT INTO Student VALUES(102,'Anjan','anjan@outlook.com',200)
INSERT INTO Student VALUES(103,'Lakshmi','lakshmi@gmail.com',300)
INSERT INTO Student VALUES(104,'Naveen','naveen@gmail.com',400)


CREATE TABLE Course
(CourseId INT PRIMARY KEY,
Cname VARCHAR(50),
Cfee INT
);

SELECT * FROM Course

INSERT INTO Course VALUES(100,'C#',15000)
INSERT INTO Course VALUES(200,'.Net Programming',20000)
INSERT INTO Course VALUES(500,'SQL basics',9000)
INSERT INTO Course VALUES(600,'JAVA',25000)
INSERT INTO Course VALUES(400,'Network',5000)

/* INNER JOIN */

select StID,SName,Smail,Student.CourseId,Cname from Student INNER JOIN Course ON Student.CourseId=Course.CourseId


/* OUTER JOIN */

/* LEFT OUTER JOIN */
SELECT * FROM Student LEFT OUTER JOIN Course ON Student.CourseId=Course.CourseId

/* RIGHT OUTER JOIN */
SELECT * FROM Student RIGHT OUTER JOIN Course ON Student.CourseId=Course.CourseId

SELECT * FROM Student
SELECT * FROM Course
/* FULL OUTER JOIN */
SELECT * FROM Student S FULL OUTER JOIN Course C ON S.CourseId=C.CourseId

/* CROSS JOIN */
SELECT * FROM Student  CROSS JOIN Course


/*Advanced or intelligent join*/

SELECT * FROM Student LEFT OUTER JOIN Course ON Student.CourseId=Course.CourseId WHERE Course.CourseId IS NULL

SELECT * FROM Student S FULL OUTER JOIN Course C ON S.CourseId=C.CourseId where C.CourseId IS NULL or S.CourseId is NULL

/* EQUI JOIN (ONLY USING EQUALITY/EQUAL OPERATOR(=)) */ 

SELECT * FROM Student S ,Course C WHERE S.CourseId=C.CourseId

SELECT * FROM Student WHERE CourseId=300

/* NON EQUI-JOIN(WITHOUT USING EQUAL OPERATOR(CAN USE ANY OTHER OPERATOR i.e., <,>,<=,>=,!=,BETWEEN,AND,OR..etc) */

SELECT * FROM Student S ,Course C WHERE S.CourseId > C.CourseId

/* SELF JOIN */

