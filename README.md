# SQL Data Warehouse Project: Sales Insights


## Overview
A SQL-only Data Warehouse Project simulating a Sales Transaction dataset to showcase Data Modeling (Star Schema), ETL processes, Analytical Views, and Time Intelligence Queries.

## Folder Structure
<pre>
├── CreateTables.sql -- SQL Tables (Fact & Dimensions + Staging)
├── ETL_InsertScripts.sql -- Insert Data from Staging to Warehouse Tables
├── AnalyticalViews.sql -- Analytical Views (Trends, Segments)
├── YTD_MoM_Calculations.sql -- Year-to-Date and Month-over-Month Queries
└── README.md -- Project Documentation
</pre>

## Steps to Run
1. Run `CreateTables.sql` to create all necessary tables.
2. Import CSV data into **Staging Tables** manually using SQL Server Import.
3. Execute `ETL_InsertScripts.sql` to load data from Staging to Fact & Dimensions.
4. Create Analytical Views using `AnalyticalViews.sql`.
5. Run Time Intelligence queries from `YTD_MoM_Calculations.sql`.

## Features Demonstrated
- Star Schema Data Modeling (Fact & Dimension)
- ETL Process using SQL
- Analytical SQL Views for Business Reporting
- Time Intelligence (YTD, MoM Growth)
- Scalable SQL Data Warehouse Design

## Author
Alief Danial | https://www.linkedin.com/in/alieffadzil/ | SQL-Data-Warehouse-Project-Sales-Insights
