-- -----------------------------------------------------------------------------------------------------------
--  QUESTION 1: Creat a visualization that provides a breakdown between the male and female employees working 
--  in the company each year.
SELECT EXTRACT(YEAR FROM d.from_date) AS Calendar_Year, e.gender, COUNT(e.emp_no) AS num_of_employees
FROM t_dept_emp AS d
JOIN t_employees AS e ON d.emp_no = e.emp_no
GROUP BY gender, Calendar_Year
HAVING Calendar_Year >=1990
ORDER BY Calendar_Year;
-- --------------------------------------------------------------------------------------------------------
--  QUESTION 2: Compare the number of male managers to the number of female managers from different
--   departments for each year, starting from 1990.
SELECT d.dept_name, ee.gender, dm.emp_no,dm.from_date,dm.to_date,ee.calendar_year, 
	CASE
      WHEN YEAR(dm.to_date) >= ee.calendar_year AND YEAR(dm.from_date)<= ee.calendar_year THEN 1 
	ELSE 0 
    END AS active_1 
FROM  (SELECT YEAR(hire_date) AS calendar_year FROM t_employees GROUP BY calendar_year) AS ee 
CROSS JOIN  t_dept_manager dm  
JOIN t_departments d ON dm.dept_no = d.dept_no 
JOIN t_employees ee ON dm.emp_no = ee.emp_no 
ORDER BY dm.emp_no, ee.calendar_year;
-- ------------------------------------------------------------------------------------------------
--  QUESTION 3: Compare the average salary of female versus male employees in the entire company 
--  until year 2002, and add a filter allowing you to see that per each department.
SELECT ee.gender, d.dept_name, round(AVG(s.salary),2) AS salary, YEAR(s.from_date) AS calendar_year 
FROM t_salaries s 
JOIN  t_employees ee ON ee.emp_no = s.emp_no 
JOIN t_dept_emp de ON ee.emp_no = de.emp_no 
JOIN t_departments d ON de.dept_no= d.dept_no 
GROUP BY ee.gender, d.dept_no, calendar_year 
HAVING calendar_year <=2002 
ORDER BY d.dept_no;
-- --------------------------------------------------------------------------------------------------------
--  QUESTION 4: Create a SQL stored procedure that will allow you to obtain the average male and female 
--   salary per department within a certain salary range. Let this range be defined by two values the user
--   can insert when calling the procedure.
SELECT ROUND(AVG(s.salary),2) AS Average_Salary,d.dept_name,ee.gender FROM t_employees ee 
JOIN t_salaries s ON s.emp_no = ee.emp_no 
JOIN t_dept_emp de ON de.emp_no = ee.emp_no 
JOIN t_departments d ON d.dept_no = de.dept_no  
WHERE s.salary BETWEEN 50000 AND 90000 
GROUP BY dept_name,gender 
ORDER BY dept_name;
-- -------------------------------------------------------------------------------
--  -------------------------------------------------------------------------------