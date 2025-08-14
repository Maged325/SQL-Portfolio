# **Task 5: SQL-Based Analysis of Product Sales**

This project is part of the Elevvo Internship Tasks — focused on SQL analytics using the Chinook Database. The objective is to perform deep product and sales analysis using SQL queries and business logic.

---

## 🗂️ **Dataset**

- **Source**: [Chinook Database](https://www.kaggle.com/datasets/ranasabrii/chinook/data) (converted from `.sqlite` to CSV format) 
- **Tables Used**: Album, Artist, Customer, Invoice, InvoiceLine, Track, Genre, MediaType, Playlist, Employee, PlaylistTrack

---

## 🛠️**Tools & Technologies**

- Microsoft SQL Server
- SQL Queries
- JOINs & Aggregations
- Window Functions
- Data Cleaning & Loading (CSV import)

---

## 📊 **Key Business Questions Answered**

1. **Top-Selling Products** – Identify the top 10 tracks by quantity sold
2. **Revenue by Country** – Analyze revenue per region using customer country
3. **Monthly Revenue Trends** – Track revenue performance by year and month
4. **Track-wise Sales Details** – Join product (Track) and sales (InvoiceLine) for detailed view
5. **Customer Ranking** – Rank customers by total purchase value using `RANK()` window function

---

## 📁 **Files Included**

| File Name                     | Description                                 |
| ----------------------------- | ------------------------------------------- |
| `Chinook_SalesAnalysis.sql` | Final SQL query file used for analysis        |
| `Chinook_CSVs/`             | Folder containing 11 imported tables in CSV   |
| `Chinook.sqlite/`           | Original database file downloaded from Kaggle |
| `README.md`                 | Project overview and analysis breakdown       |


---

## 🙋 Developed By

**Maged** – Elevvo Internship, Task 5
*Date: July 2025*

---
