### This project aims to compare male and female employees working in a certain company in different departments, along with their salaries from 1990 to 2002.

### This data is obtained from http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip, which is created by Fusheng Wang and Carlo Zaniolo. To the best of your knowledge, this data is fabricated, and it does not correspond to real people. Any similarity to existing people is purely coincidental.

### 5 tables were created, each table has its own primary key, and they were used to answer 4 questions that will be answered, each using an SQL query along with a visualization of data using Tableau.

## **Analysis Questions**

QUESTION 1: Creat a visualization that provides a breakdown between the male and female employees working in the company each year.
QUESTION 2: Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.
QUESTION 3: Compare the average salary of female versus male employees in the entire company until year 2002, and add a filter allowing you to see that per each department.
QUESTION 4: Create a SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range. Let this range be defined by two values the user can insert when calling the procedure.


### About Database

**First table “t_employess”: this table contain personal information about employees like birthday, first and last name, gender, and hiring date.**
CREATE TABLE t_employees (
    emp_no      INT		        NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

**Second table “t_departments”: the second table contain information about the department number and name.**
CREATE TABLE t_departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

**Third table ” t_dept_manager”: the third table contain the employers unique number from first table with the department number from the second table.**
CREATE TABLE t_dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   PRIMARY KEY (emp_no,dept_no)
);

**Fourth table “t_dept_emp”:**
CREATE TABLE t_dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);

**Fifth table “t_salaries”:  the fifth table contain data about salary of employees**
CREATE TABLE t_salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no, from_date)
)
;

#### For the rest of code view the **SQL_Queries** file

#### For the answers of the questions section view the SQL_Questions file
