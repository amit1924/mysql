-- * SHOW DATABASES;
-- SHOW DATABASES

-- 1 CREATING NEW DATABASE
-- CREATE DATABASE MACHINES



-- 2 DELETE DATABASE
-- DROP DATABASE MACHINES



-- 3 USE DATABASE
-- USE MACHINES;

-- 4 CHECK  WHICH DATABASE WE ARE USING 
-- SELECT DATABASE()

-- VARCHAR CAN STORE MAXIMUM LENGTH OF 50 CHARACTERS

-- 5 CREATE TABLE IN PC DATABASE
--  CREATE TABLE GAMES (
--     name VARCHAR(50),
--     rating INT
-- );


-- 6 SHOW TABLES
-- SHOW TABLES;

-- 7 SHOW COLUMN FROM DATABASE TABLES
-- SHOW COLUMNS FROM GAMES


-- 8 DESCRIBE TABLES
-- DESCRIBE GAMES;


-- 9 ADD DEFAULT VALUES TO TABLE
-- CREATE TABLE MOVIES (
--     name VARCHAR(50) DEFAULT 'Anonymous',
--     release_year INT DEFAULT 2025,
--     ratings INT 
-- );

-- 10 DROB TABLE  
-- DROP TABLE MOVIES


--  CHAR is fixed-length and pads strings with spaces, while VARCHAR is variable-length and more space-efficient. Choose CHAR for fixed-length data and when retrieval speed is crucial, and VARCHAR for variable-length data with potential storage efficiency.

-- 11 DATE ,TIME 
-- CREATE TABLE FILMS (
--     name VARCHAR(50),
--     release_year INT ,
--     ratings DECIMAL,
--     comment CHAR(10),
--     comment_date DATE DEFAULT "2024-04-01",
--     comment_time TIME DEFAULT "11:39:05"
-- )

-- 12 INSERT DATA LABELS INTO TABLES 
-- INSERT INTO FILMS (name, release_year,ratings, comment) 
-- VALUES("THOR",2016,4.0,"nice movie")

-- 13 SELECT VALUES FROM TABLES
-- * MEANS ALL PROPERTIES SLECTED FROM TABLES
-- SELECT * FROM  FILMS;

-- 14 SELECT SPECIFIC PROPERTIES FROM TABLES
-- SELECT name FROM FILMS

-- 15 SELECT MORE PROPERTIES FROM TABLES
-- SELECT name,ratings FROM FILMS

-- 16 INSERT MANY VALUES INTO TABLES
-- INSERT INTO FILMS (name, release_year,ratings, comment) 
-- VALUES("THOR",2016,4.0,"nice movie"),
--       ("IRONMAN",2015,4.5,"best movie"),
--       ("AVENGERS",2019,5.0,"awesome"),
--       ("DARK KNIGHT",2012,5.0,"best ") 

-- 17 PRIMARY/UNIQUE KEYS
-- CREATE TABLE SOFTWARE (
--     id INT PRIMARY KEY, 
--     technology VARCHAR(50),
--     languages VARCHAR(50)
-- );
-- INSERT INTO SOFTWARE (id, technology, languages) VALUES
-- ( 'Database Management System', 'SQL'),
-- (2, 'Web Development', 'HTML, CSS, JavaScript'),
-- (3, 'Programming Language', 'Python');

-- SELECT * FROM SOFTWARE


-- DROP TABLE SOFTWARE

-- 18 AUTO_INCREMENT
-- CREATE TABLE SOFTWARE (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     technology VARCHAR(50),
--     languages VARCHAR(50)
-- );
-- DESCRIBE SOFTWARE

-- INSERT INTO SOFTWARE (technology, languages) VALUES
-- ('Database Management System', 'SQL'),
-- ('Web Development', 'HTML, CSS, JavaScript'),
-- ('Programming Language', 'Python');

-- SELECT * FROM SOFTWARE;


-- 19 WHERE(FILTER RECORDS)
--  SELECT * FROM FILMS WHERE ratings = 5

--  SELECT name FROM FILMS WHERE ratings = 5

--  SELECT name,comment FROM FILMS WHERE ratings = 5

--  20 ALIASES
-- SELECT name AS film_name FROM FILMS 

-- SELECT ratings AS movie_ratings FROM FILMS 


-- 21 UPDATE DATA IN TABLES
-- UPDATE  FILMS 
-- SET name = "JAMES BOND"
-- WHERE name ="THOR"

-- UPDATE FILMS
-- SET name = "CAPTAIN AMERICA"
-- WHERE ratings IS NULL;

-- UPDATE FILMS
-- SET ratings = 3.2
-- WHERE ratings =4.2;


-- 22 DELETE SPECIFIC COLUMNS
-- DELETE FROM FILMS
-- WHERE name ="JAMES BOND"

-- SELECT * FROM FILMS  


-- ----- FUNCTION --------



CREATE TABLE USERS (
    USER_ID INT AUTO_INCREMENT PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    PASSWORD VARCHAR(100) NOT NULL,
    AGE INT NOT NULL
);


INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, AGE) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123', 30),
('Jane', 'Smith', 'jane.smith@example.com', 'password456', 25),
('Alice', 'Johnson', 'alice.johnson@example.com', 'password789', 35);

SELECT * FROM USERS

-- 23 SUBSTRING()

SELECT SUBSTRING("HELLO WORLD",8,3)

SELECT SUBSTRING("AMIT",3)

SELECT SUBSTRING (FIRST_NAME,1) FROM USERS

-- 24 REPLACE()
SELECT REPLACE("HELLO WORLD","HELLO","BYE")

SELECT REPLACE("AMIT","IT","ISH")

SELECT REPLACE(LAST_NAME,"Doe","Cena") FROM USERS

-- 25 REVERSE()
SELECT REVERSE("HELLO WORLD")

SELECT REVERSE("DLROW OLLEH")

SELECT REVERSE(FIRST_NAME) FROM USERS


-- 26 CHAR_LENGTH
SELECT CHAR_LENGTH("HELLO WORLD") 

SELECT CHAR_LENGTH(FIRST_NAME) FROM USERS

-- LENGTH IS SAME AS CHAR_LENGTH
SELECT LENGTH("HELLO WORLD") 

SELECT LENGTH(FIRST_NAME) FROM USERS

-- ---27 ORDER BY CLAUSE ---
-- ASC=BOTTOM TO TOP
SELECT FIRST_NAME FROM USERS ORDER BY FIRST_NAME ASC

-- DESC = TOP TO BOTTOM
SELECT FIRST_NAME FROM USERS ORDER BY FIRST_NAME DESC

SELECT FIRST_NAME FROM USERS ORDER BY LENGTH(FIRST_NAME)

SELECT FIRST_NAME FROM USERS ORDER BY LENGTH(FIRST_NAME) DESC


-- 28 LIMIT
SELECT FIRST_NAME FROM USERS LIMIT 2

-- 29 LIKE OPERATOR
-- % =THIS WILDCARD MATCHES ZERO OR MORE CHARACTERS

SELECT * FROM USERS
-- WHERE first_name LIKE '%j';
WHERE first_name LIKE '%ohn';


-- _ = THIS WILDCARD MATCHES EXACTLY ONE CHARACTER
SELECT * FROM USERS
WHERE FIRST_NAME LIKE '__JOH';


-- 30 COUNT
SELECT COUNT(*) FROM USERS

SELECT COUNT(FIRST_NAME) FROM USERS

SELECT COUNT(*) FROM USERS
WHERE FIRST_NAME="JOHN"

-- 31 MIN()
SELECT MIN(AGE) FROM USERS

-- 32 MAX()
SELECT MAX(AGE) FROM USERS

-- 33 AVG()
SELECT AVG(AGE) FROM USERS

-- 34 SUM()
SELECT SUM(AGE) FROM USERS

-- 35 GROUP BY CLAUSE
SELECT FIRST_NAME,AVG(AGE) AS average_age FROM USERS
GROUP BY FIRST_NAME


-- 36 LOGICAL OPERATOR
SELECT FIRST_NAME,LAST_NAME FROM USERS
WHERE AGE !=40

SELECT FIRST_NAME,LAST_NAME FROM USERS
WHERE AGE >30

SELECT FIRST_NAME,LAST_NAME FROM USERS
WHERE FIRST_NAME!="JOHN"

SELECT * FROM USERS
WHERE LENGTH(FIRST_NAME) >4

-- AND
SELECT * FROM USERS
WHERE FIRST_NAME="JOHN" AND AGE <40


SELECT * FROM USERS
WHERE FIRST_NAME="AMIT" AND AGE <40

-- OR
SELECT * FROM USERS
WHERE AGE>20 OR AGE >40

-- IN
SELECT * FROM USERS
WHERE AGE IN(25,30,35)


-- 37 CASE CONDITION
SELECT FIRST_NAME,AGE,
   CASE
   WHEN AGE>30  THEN "SENIOR AGE"
    WHEN AGE<=25 THEN "YOUNG"
    ELSE "MIDDLE AGE"
    END AS age_group
FROM USERS    


-- 38 UNIQUE CONSTRAINTS
CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
    EMAIL VARCHAR(100) UNIQUE
);

INSERT INTO EMPLOYEES (EMAIL) VALUES ('john456@example.com'),
       ('john123@gmail.com'),
       ('john123@example.com')

SELECT * FROM EMPLOYEES

-- 39 CHECH CONSTRAINTS
-- DECIMAL(10, 2), meaning it can store decimal numbers up to 10 digits long with 2 decimal places.
-- SHOW TABLES FROM PC
CREATE TABLE PRODUCTS (
    PRODUCT_ID INT PRIMARY KEY,
    NAME VARCHAR(100),
    PRICE DECIMAL(10, 2),
    CONSTRAINT CHK_PRICE_POSITIVE CHECK (PRICE >= 0)
);

INSERT INTO PRODUCTS (PRODUCT_ID, NAME, PRICE) VALUES (1, 'Product A', 10.99);

-- Check constraint 'CHK_PRICE_POSITIVE' is violated.
INSERT INTO PRODUCTS (PRODUCT_ID, NAME, PRICE) VALUES (2, 'Product B', -5.00);

INSERT INTO PRODUCTS (PRODUCT_ID, NAME, PRICE) VALUES (3, 'Product B', 20.99);

SELECT * FROM PRODUCTS


-- 40 NAMED CONSTRAINTS
CREATE TABLE WORKERS (
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR(100),
    SALARY DECIMAL(10, 2),
    CONSTRAINT CHK_SALARY_RANGE CHECK (SALARY >= 1000 AND SALARY <= 10000)
);

INSERT INTO WORKERS (EMPLOYEE_ID, NAME, SALARY) VALUES (1, 'John', 5000),
       (2, 'Jane', 6000),
       (3, 'Amit', 7000),
       (4, 'Rahul', 8000),
       (5, 'Arsh', 9000),
       (6, 'Johnny', 9500);


-- Check constraint 'CHK_SALARY_RANGE' is violated.
INSERT INTO WORKERS(EMPLOYEE_ID, NAME, SALARY) VALUES (2, 'Jane', 200);

SELECT * FROM WORKERS 


-- 41 ALTER TABLE


ALTER TABLE WORKERS
DROP COLUMN SALARY

ALTER TABLE WORKERS
MODIFY COLUMN NAME VARCHAR(255) 

ALTER TABLE WORKERS
CHANGE COLUMN NAME FULL_NAME VARCHAR(50)

SELECT * FROM WORKERS


-- 42 RELATIONSHIPS(RDBMS)

-- ONE TO ONE 
CREATE TABLE ENGINEERS (
    ENGINEER_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    UNIQUE (ENGINEER_ID, NAME) 
);

INSERT INTO ENGINEERS (NAME) VALUES ('Engineer A'),     
('Engineer B');

CREATE TABLE TASKS (
    TASK_ID INT AUTO_INCREMENT PRIMARY KEY,
    DESCRIPTION VARCHAR(100),
    ENGINEER_ID INT , 
    FOREIGN KEY (ENGINEER_ID) REFERENCES ENGINEERS(ENGINEER_ID)
);

INSERT INTO TASKS (DESCRIPTION, ENGINEER_ID) VALUES 
('Task 1', 1), 
('Task 2', 2),
('Task 3', 1);

SELECT * FROM ENGINEERS

SELECT * FROM TASKS



-- CROSS JOIN
SELECT * FROM ENGINEERS CROSS JOIN TASKS

-- OR

SELECT * FROM ENGINEERS ,TASKS

-- INNER JOIN(USE FOR MATCH VALUES)
SELECT * FROM ENGINEERS
INNER JOIN TASKS ON ENGINEERS.ENGINEER_ID = TASKS.ENGINEER_ID

-- OR
SELECT * FROM ENGINEERS E
INNER JOIN TASKS T ON E.ENGINEER_ID = T.ENGINEER_ID

-- LEFT JOIN
SELECT * FROM ENGINEERS E
LEFT JOIN TASKS T ON E.ENGINEER_ID= T.ENGINEER_ID

-- RIGHT JOIN
SELECT * FROM ENGINEERS E
RIGHT JOIN TASKS T ON E.ENGINEER_ID= T.ENGINEER_ID

-- LEFT JOIN retains all records from the table specified before the LEFT JOIN keyword.RIGHT JOIN retains all records from the table specified before the RIGHT JOIN keyword.It's often a matter of preference and the structure of your data which join you choose to use. However, LEFT JOIN is more commonly used than RIGHT JOIN. If you're comfortable with LEFT JOIN, you might not need to use RIGHT JOIN as frequently

-- MANY TO MANY

CREATE TABLE STUDENTS (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

INSERT INTO STUDENTS (student_name) VALUES ('Alice'), ('Bob'), ('Charlie')

CREATE TABLE COURSES (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

INSERT INTO COURSES (course_name) VALUES ('Math'), ('Science'), ('History')

CREATE TABLE STUDENTS_COURSES (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id),
    FOREIGN KEY (course_id) REFERENCES COURSES(course_id),
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO STUDENTS_COURSES (student_id, course_id) VALUES
(1, 1), -- Alice in Math
(1, 2), -- Alice in Science
(2, 2), -- Bob in Science
(3, 3); -- Charlie in History

SELECT * FROM STUDENTS

SELECT * FROM COURSES

SELECT * FROM STUDENTS_COURSES

