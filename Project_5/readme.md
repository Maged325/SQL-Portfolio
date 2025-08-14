# Project 5 – SQL-Based Analysis of Product Sales

## 📌 Project Overview
This project uses the Chinook Database to perform SQL-based analysis of product sales and answer key business questions. By leveraging JOINs, aggregations, and window functions, the analysis provides insights into sales performance across products, regions, and time periods.

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
| `Chinook_SalesQueries.sql`  | Final SQL query file used for analysis        |
| `Chinook_CSVs/`             | Folder containing 11 imported tables in CSV   |
| `Chinook.sqlite/`           | Original database file downloaded from Kaggle |
| `README.md`                 | Project overview and analysis breakdown       |


---


