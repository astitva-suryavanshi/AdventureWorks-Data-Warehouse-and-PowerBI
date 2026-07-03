# AdventureWorks Sales Analysis & Data Warehouse

> **An end-to-end Business Intelligence project that transforms raw sales data into actionable business insights using Python, MySQL, and Power BI.**

---

# Project Overview

Businesses generate millions of records from customers, products, sales, and returns every day. However, raw transactional data alone does not provide meaningful insights for decision-makers.

The objective of this project was to design and develop a complete Business Intelligence solution that converts raw CSV files into an interactive Power BI dashboard capable of answering real business questions.

This project demonstrates the complete analytics workflow followed in modern organizations:

**Raw Data → Data Validation → Data Warehouse → SQL Analysis → Power BI Dashboard → Business Insights**

---

# Problem Statement

Business stakeholders often struggle to answer questions such as:

- Which products generate the highest sales?
- Which customer segments contribute the most revenue?
- Which regions perform the best?
- What are the return patterns across different products?
- Which product categories have the highest return rates?
- How do sales change over time?
- Which markets require strategic attention?

Answering these questions directly from raw transactional files is difficult because:

- Data is spread across multiple CSV files.
- Relationships between datasets are complex.
- Raw data is not optimized for analytical queries.
- Business users require interactive reports instead of raw tables.

This project addresses these challenges by building a Star Schema Data Warehouse and an interactive Business Intelligence dashboard.

---

# Project Architecture

```
Raw CSV Files
        │
        ▼
Python (Pandas)
Data Validation & Exploration
        │
        ▼
MySQL
Data Warehouse (Star Schema)
        │
        ▼
Business SQL Analysis
(38 Analytical Queries)
        │
        ▼
Power BI
Interactive Dashboard
        │
        ▼
Business Decision Making
```

---

# Technologies Used

| Technology | Purpose |
|------------|----------|
| Python | Data exploration and validation |
| Pandas | Data cleaning and quality checks |
| MySQL | Data warehouse development |
| SQL | Data loading and business analysis |
| Star Schema | Dimensional data modeling |
| Power BI | Dashboard development |
| DAX | KPI calculations |
| Power Query | Data transformation |
| Git & GitHub | Version control and project documentation |

---

# Project Workflow

## 1. Raw Data Collection

The AdventureWorks dataset contains multiple CSV files representing:

- Customers
- Products
- Product Categories
- Product Subcategories
- Territories
- Sales
- Returns
- Date Dimension

---

## 2. Data Validation using Python

Before loading the data into MySQL, the datasets were explored using Python and Pandas.

Validation included:

- Missing value detection
- Duplicate record analysis
- Data type verification
- Primary key uniqueness
- Foreign key consistency
- Data integrity checks
- Exploratory data analysis

---

## 3. Data Warehouse Design

A Star Schema was implemented consisting of:

### Dimension Tables

- DimCustomer
- DimDate
- DimProduct
- DimProductCategory
- DimProductSubcategory
- DimTerritory

### Fact Tables

- FactSales
- FactReturns

This structure significantly improves analytical query performance and simplifies reporting.

---

# SQL Analysis

A total of **38 business-driven SQL queries** were developed covering:

### Warehouse Validation

- Record counts
- Data integrity
- Key validation

### Time Analysis

- Sales by Year
- Quarter
- Month
- Weekday

### Product Analysis

- Best-selling products
- Product categories
- Product subcategories
- Product pricing
- Product demand

### Customer Analysis

- Customer segmentation
- Income analysis
- Education analysis
- Occupation analysis
- Gender analysis

### Territory Analysis

- Country performance
- Regional performance
- Continental analysis

### Return Analysis

- Return quantity
- Return trends
- Most returned products
- Return categories

### Advanced Analysis

- Sales vs Returns
- Top Products by Country
- Best Category by Year
- Top Customers per Territory
- Monthly Sales Trend
- Income Group vs Product Category

---

# Power BI Dashboard

An interactive dashboard was developed to transform SQL results into meaningful business insights.

### Dashboard Features

- Executive KPI Cards
- Interactive Filters
- Dynamic Slicers
- Drill-through Navigation
- Trend Analysis
- Cross-filtering
- Business Visualizations

Dashboard Pages include:

- Overview Dashboard
- Sales Analysis
- Customer Analysis
- Product Analysis
- Territory Analysis
- Return Analysis

---

# Business Questions Solved

This project answers important business questions such as:

- Which products perform the best?
- Which customers generate maximum sales?
- Which territories require attention?
- Which product categories have high return rates?
- How do customer demographics influence purchasing behavior?
- Which year generated maximum sales?
- Which market has the highest return percentage?

---

# Repository Structure

```
AdventureWorks-Sales-Analysis/

├── Raw_Data/
├── Cleaned_Data/
├── Python/
├── SQL/
├── Power_BI/
├── Images/
├── Documentation/
├── README.md
└── LICENSE
```

---

# Key Learnings

Throughout this project, I developed practical experience in:

- Data Validation using Python
- Data Analysis using Pandas
- SQL Query Writing
- Data Warehousing Concepts
- Star Schema Design
- ETL Workflow
- Primary & Foreign Key Relationships
- SQL Joins
- Aggregate Functions
- Window Functions
- Business Intelligence
- Power BI Dashboard Development
- DAX Calculations
- Data Storytelling
- Git & GitHub Portfolio Management

---

# Future Improvements

Potential enhancements include:

- Real-time data integration
- Incremental data loading
- Automated ETL pipelines
- Azure SQL integration
- Cloud-based Power BI Service deployment
- Predictive sales forecasting
- Customer churn prediction using Machine Learning

---

# Dashboard Preview

Dashboard screenshots are available in the **ScreanShot/** folder.

---

# Author

**ASTITVA SURYAVANSHI**/**Divya GUPTA**

Engineering Student | Data Analytics Enthusiast

### Skills

- Python
- Pandas
- SQL
- MySQL
- Data Warehousing
- Power BI
- DAX
- Data Visualization
- Git & GitHub

---

# Acknowledgements

Dataset: Microsoft AdventureWorks Sample Dataset

This project was created for learning, academic purposes, and portfolio development to demonstrate end-to-end Business Intelligence and Data Analytics skills.
