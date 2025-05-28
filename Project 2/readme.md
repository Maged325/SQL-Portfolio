# 🧠 Employee Gender & Salary Analysis Project **— *SQL + Tableau***

## 📌 About the Project

This project showcases how SQL can be used to join multiple relational tables and how Tableau transforms that data into powerful visual insights.

💼 **Topic**: Gender and salary comparison across departments from 1990 to 2002📊 **Tools**: SQL (joins, queries, stored procedures) + Tableau (interactive charts)

> 🗂️ Dataset Source: [Employee Temporal Data](http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip)
> 📎 Created by: Fusheng Wang and Carlo Zaniolo
> ⚠️ Note: This is a **fabricated dataset** used for academic purposes. Any resemblance to real individuals is purely coincidental.

---

## 🧾 Database Overview

- ✅ 5 normalized tables created
- 🔑 Each table has its own primary key
- 🔗 Tables were joined using **SQL JOINs**
- 📥 Queries designed to answer specific business questions
- 📤 Visualized in Tableau for insight-driven storytelling

---

## ❓ Analysis Questions & Visualizations

### 1️⃣ Breakdown of Employees by Gender per Year

📅 Compare the number of male and female employees in the company each year.

### 2️⃣ Male vs. Female Managers by Department

🏢 Analyze the gender distribution of managers across departments for each year from 1990 onward.

### 3️⃣ Salary Comparison by Gender with Department Filter

💰 Visualize the average salary of male vs. female employees across the company and filter by department.

### 4️⃣ Stored Procedure: Average Salary by Gender & Range

⚙️ Use a **SQL stored procedure** to return average male/female salaries by department, based on user-defined salary ranges.

---

## 📌 Project Goals

- ✅ Practice advanced **SQL JOINs**, GROUP BY, and aggregate functions
- ✅ Implement a **parameterized stored procedure**
- ✅ Build **Tableau dashboards** that reveal gender-based insights
- ✅ Demonstrate end-to-end data understanding

---

## 📚 About the Database

The dataset is structured across five relational tables. Each table is uniquely keyed and joined together to extract meaningful insights using SQL.

### 🧾 Table Descriptions

#### 🧍‍♂️ `t_employees`

- Contains personal information about each employee.
- Fields include: birthday, first name, last name, gender, hire date.
- ![Employees Table](path/to/employees_table_image.png)

---

#### 🏢 `t_departments`

- Stores department details.
- Fields include: department number and department name.
- ![Departments Table](path/to/departments_table_image.png)

---

#### 👔 `t_dept_manager`

- Links employees to the departments they manage.
- Fields include: employee number (from `t_employees`) and department number (from `t_departments`).
- ![Dept Manager Table](path/to/dept_manager_table_image.png)

---

#### 💰 `t_salaries`

- Contains employee salary information across time.
- Fields include: employee number, salary amount, and salary dates.
- ![Salaries Table](path/to/salaries_table_image.png)

#### 🧠 SQL Logic

For the rest of the SQL logic used to extract and analyze this data, check the file:
📄 [`SQL_Queries.t`](./SQL_Queries.sql)xt

---



## 📁 Project Structure

All files are organized to reflect the full workflow from SQL analysis to Tableau dashboard creation:

```
sql-tableau-project/
├── Final_Dashboard.twbx        - Tableau packaged dashboard (interactive)
├── SQL_Queries.sql             - SQL code for answering the 4 analysis questions
├── SQL_Database.txt            - Full SQL database schema (in .txt format due to file size)
├── Project_Report.pdf          - Contains SQL queries with corresponding visualizations and insights
├── README.md                   - Project documentation
```

## 🤝 **Connect with Me**

🔗 [LinkedIn – Maged Fouad](https://www.linkedin.com/in/mfouadmohamed325/)

---
