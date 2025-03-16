# About the Project
### This project aims to compare male and female employees working in a certain company in different departments, along with their salaries from 1990 to 2002.

### This data is obtained from http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip, which is created by Fusheng Wang and Carlo Zaniolo. To the best of your knowledge, this data is fabricated, and it does not correspond to real people. Any similarity to existing people is purely coincidental.

### 5 tables were created, each table has its own primary key, and they were used to answer 4 questions that will be answered, each using an SQL query along with a visualization of data using Tableau.

## **Analysis Questions**

QUESTION 1: Creat a visualization that provides a breakdown between the male and female employees working in the company each year.
QUESTION 2: Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.

QUESTION 3: Compare the average salary of female versus male employees in the entire company until year 2002, and add a filter allowing you to see that per each department.

QUESTION 4: Create a SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range. Let this range be defined by two values the user can insert when calling the procedure.


## About Database

#### First table “t_employess”: this table contain personal information about employees like birthday, first and last name, gender, and hiring date.
![image](https://github.com/user-attachments/assets/1ae96ec6-8832-47fb-ad76-3d930729b8cd)

#### Second table “t_departments”: the second table contain information about the department number and name.
![image](https://github.com/user-attachments/assets/9109a687-8ff3-442d-9592-94d4cc7d6be5)


#### Third table ” t_dept_manager”: the third table contain the employers unique number from first table with the department number from the second table.
![image](https://github.com/user-attachments/assets/080bf62f-a5d2-4947-88e3-50f50a2f478e)


#### Fourth table “t_dept_emp”:
![image](https://github.com/user-attachments/assets/87771d0e-3ab6-4f52-b114-d378284de2d8)


#### Fifth table “t_salaries”:  the fifth table contain data about salary of employees.
![image](https://github.com/user-attachments/assets/0ae00503-bbd8-475b-85f2-9c80d625aed6)


## For the rest of the code view the [SQL_Queries.sql](https://drive.google.com/file/d/13Fw58ir9-_wl_YTK4OW6LHsuJJGlVZ6I/view?usp=sharing) file

## For the answers of the questions section view the [SQL_Questions.sql](https://github.com/Maged325/SQL-Portfolio/blob/main/Project_2/SQL_Questions.sql) file
