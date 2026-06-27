# Customer Cohort Analysis using PostgreSQL & Tableau

## Project Overview

This project demonstrates a **time-based Customer Cohort Analysis** on an e-commerce dataset using **PostgreSQL** and **Tableau**.
The objective was to analyze customer retention by grouping customers into cohorts based on their first purchase month and tracking their purchasing activity over subsequent months. 
The project follows a complete analytics workflow, from data cleaning and transformation in PostgreSQL to interactive visualization in Tableau.

---

## Project Objective

* Perform time-based customer cohort analysis.
* Measure customer retention across monthly cohorts.
* Identify repeat purchasing behavior over time.
* Visualize retention trends through an interactive Tableau dashboard.

---

## Tools & Technologies

* PostgreSQL
* Tableau
* Excel (Dataset)

---

# Project Workflow

## Step 1: Data Cleaning (CTE)

The raw e-commerce dataset was cleaned using **Common Table Expressions (CTEs)** to prepare it for analysis.

### Tasks Performed

* Removed duplicate records.
* Filtered invalid transactions.
* Handled missing values.
* Standardized the dataset for further analysis.

**Output:**
A clean and consistent transactional dataset ready for cohort analysis.

---

## Step 2: Cohort Date (First Purchase Date)

The cohort date was determined by identifying the **first purchase month** for each customer using a **subquery**.

### Tasks Performed

* Identified each customer's first purchase date.
* Assigned customers to acquisition cohorts based on their first purchase month.
* Extracted the cohort month and year for further calculations.

**Output:**
Each customer was assigned to a unique cohort representing the month they made their first purchase.

---

## Step 3: Cohort Retention

Customer retention was calculated by comparing each transaction month with the customer's cohort month.

### Tasks Performed

* Calculated the difference between the invoice month and cohort month.
* Generated the **Cohort Index** to represent the customer's lifecycle month.
* Counted active customers for each cohort and month.

**Output:**
A cohort retention table showing the number of active customers across different months.

---

## Step 4: Cohort Pivot

The retention table was transformed into a cohort matrix using SQL.

### Tasks Performed

* Pivoted retention data into monthly columns.
* Calculated monthly retention percentages.
* Created a retention matrix for visualization.

**Output:**
A cohort retention matrix displaying customer retention percentages for each monthly cohort.

---

# Tableau Dashboard

The processed SQL output was imported into Tableau to create an interactive dashboard.

### Dashboard Features

* Cohort Retention Heatmap
* Monthly Retention Matrix
* Customer Retention Trends
* Interactive Filters
* Cohort Performance Comparison

---

# Key Insights

* Customers showed the highest retention during the first month after acquisition.
* Retention gradually decreased over subsequent months.
* Some cohorts retained customers better than others, indicating variations in customer engagement and purchasing behavior.
* The cohort heatmap made it easy to identify strong and weak performing customer cohorts over time.

---

# Repository Structure

```text
Customer-Cohort-Analysis/
│
├── Raw Data/
│   └── Online_Retail.csv
│
├── SQL/
│   ├── 01_clean_data.sql
│   ├── 02_cohort_date.sql
│   ├── 03_cohort_retention.sql
│   └── 04_cohort_pivot.sql
│
├── SQL Screenshots/
│   ├── Clean_Data_Output.png
│   ├── Cohort_Date_Output.png
│   ├── Cohort_Retention_Output.png
│   └── Cohort_Pivot_Output.png
│
├── Tableau/
│   └── Cohort_Dashboard.twbx
│
├── Tableau Screenshots/
│   └── Dashboard.png
│
└── README.md
```

---

# Skills Demonstrated

* SQL
* PostgreSQL
* Common Table Expressions (CTEs)
* Subqueries
* Data Cleaning
* Data Transformation
* Customer Cohort Analysis
* Customer Retention Analysis
* Time-Series Analysis
* Data Visualization
* Tableau Dashboard Development

---

# Author

**Anvesh Zade**
