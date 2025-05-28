# 🧠 **Employee Gender & Salary Analysis Project — *SQL + Tableau***

## 📌 **About the Project**

This project showcases how SQL can be used to join multiple relational tables and how Tableau transforms that data into powerful visual insights.

💼 **Topic**: Gender and salary comparison across departments from 1990 to 2002📊 **Tools**: SQL (joins, queries, stored procedures) + Tableau (interactive charts)

> 🗂️ Dataset Source: [Employee Temporal Data](http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip)
> 📎 Created by: Fusheng Wang and Carlo Zaniolo
> ⚠️ Note: This is a **fabricated dataset** used for academic purposes. Any resemblance to real individuals is purely coincidental.

---

## 🧾 **Database Overview**

- ✅ 5 normalized tables created
- 🔑 Each table has its own primary key
- 🔗 Tables were joined using **SQL JOINs**
- 📥 Queries designed to answer specific business questions
- 📤 Visualized in Tableau for insight-driven storytelling

---

## ❓**Analysis Questions & Visualizations**

### 1️⃣ Breakdown of Employees by Gender per Year

📅 Compare the number of male and female employees in the company each year.

### 2️⃣ Male vs. Female Managers by Department

🏢 Analyze the gender distribution of managers across departments for each year from 1990 onward.

### 3️⃣ Salary Comparison by Gender with Department Filter

💰 Visualize the average salary of male vs. female employees across the company and filter by department.

### 4️⃣ Stored Procedure: Average Salary by Gender & Range

⚙️ Use a **SQL stored procedure** to return average male/female salaries by department, based on user-defined salary ranges.

---

## 📌 **Project Goals**

- ✅ Practice advanced **SQL JOINs**, GROUP BY, and aggregate functions
- ✅ Implement a **parameterized stored procedure**
- ✅ Build **Tableau dashboards** that reveal gender-based insights
- ✅ Demonstrate end-to-end data understanding

---

## 📚 **About the Database**

The dataset is structured across five relational tables. Each table is uniquely keyed and joined together to extract meaningful insights using SQL.

### 🧾 **Table Descriptions**

#### 🧍‍♂️ `t_employees`

- Contains personal information about each employee.
- Fields include: birthday, first name, last name, gender, hire date.
  
![table_1](https://github.com/user-attachments/assets/5ef8c19c-f9fe-4477-99c6-396e069c1002)

---

#### 🏢 `t_departments`

- Stores department details.
- Fields include: department number and department name.
  
![table_2](https://github.com/user-attachments/assets/b8ece289-a35d-436d-a24f-711fe64d98af)

---

#### 👔 `t_dept_manager`

- Links employees to the departments they manage.
- Fields include: employee number (from `t_employees`) and department number (from `t_departments`).
  
![table_3](https://github.com/user-attachments/assets/b3711cd6-73fd-4d5d-a104-f5a95a5e2b16)

---

#### 💰 `t_salaries`

- Contains employee salary information across time.
- Fields include: employee number, salary amount, and salary dates.
  
![table_4](https://github.com/user-attachments/assets/35c2ea11-3c2e-45a1-8ad0-f4c0bfcc3119)

---

## 📁 **Project Structure**

All files are organized to reflect the full workflow from SQL analysis to Tableau dashboard creation:

```
sql-tableau-project/
├── Final Dashboard.twbx        - Tableau packaged dashboard (interactive)
├── Final Dashboard.png         - Exported image of Tableau dashboard 
├── SQL_Queries.sql             - SQL code for answering the 4 analysis questions
├── Project_Report.pdf          - Contains SQL queries with corresponding visualizations and insights
├── README.md                   - Project documentation
```
## 🗃️ **Full SQL Schema File**

Due to GitHub file size limitations, the full SQL schema file could not be uploaded directly to this repository.

📥 **Download it here:**  
[🔗 SQL_Database.sql on Google Drive](https://drive.google.com/file/d/1bmEGxDpW0dYm0STKkp3HmsUEOtnshXbF/view?usp=drive_link)

> This file includes all table creation scripts, inserts, and any stored procedures used in this project.
---
## 🌐 **Live Dashboard Preview**

### 📈 **Want to interact with this dashboard online?**  
Check it out on **[Tableau Public](https://public.tableau.com/app/profile/maged.fouad/vizzes)**, where I showcase more of my Tableau visualizations.

## 🤝 **Connect with Me**

🔗 [LinkedIn – Maged Fouad](https://www.linkedin.com/in/mfouadmohamed325/)

---
